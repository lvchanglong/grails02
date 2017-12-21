package lvchanglong

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = false)
class SlideController {

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Slide.list(params), model:[slideCount: Slide.count()]
    }

    def show(Slide slide) {
        respond slide
    }

    def create() {
        respond new Slide(params)
    }

    @Transactional
    def save(Slide slide) {
        if (slide == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        def f = request.getFile("file")
        if(f.empty) {
            render status: BAD_REQUEST, text: "不可为空"
            return
        }
        def fileName = f.getOriginalFilename() //文件名
        byte[] bytes = f.getBytes() //二进制数据
        slide.properties = [fileName: fileName, data: new SlideData([bytes: bytes])]

        if (slide.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond slide.errors, view:'create'
            return
        }

        slide.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'slide.label', default: 'Slide'), slide.id])
                redirect slide
            }
            '*' { respond slide, [status: CREATED] }
        }
    }

    def edit(Slide slide) {
        respond slide
    }

    @Transactional
    def update(Slide slide) {
        if (slide == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        def f = request.getFile("file")
        if(!f.empty) {
            def fileName = f.getOriginalFilename() //文件名
            byte[] bytes = f.getBytes() //二进制数据
            slide.properties = [fileName: fileName, data: [bytes: bytes]]
        }

        if (slide.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond slide.errors, view:'edit'
            return
        }

        slide.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'slide.label', default: 'Slide'), slide.id])
                redirect slide
            }
            '*'{ respond slide, [status: OK] }
        }
    }

    @Transactional
    def delete(Slide slide) {

        if (slide == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        slide.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'slide.label', default: 'Slide'), slide.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'slide.label', default: 'Slide'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    /**
     * 图片预览
     * @param slide
     * @return
     */
    def preview(Slide slide) {
        def out = response.getOutputStream()
        if(slide == null) {
            def url = new URL(createLink(uri: "/", absolute: true)) + assetPath(src: "birds/slide1.jsp")
            out.write(url.getBytes())
        } else {
            out.write(slide.data.bytes)
        }
        out.flush()
        out.close()
    }
}
