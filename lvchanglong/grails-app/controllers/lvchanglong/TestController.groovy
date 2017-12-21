package lvchanglong

import grails.converters.JSON
import grails.converters.XML
import static org.springframework.http.HttpStatus.*

class TestController {

    /**
     * 静态页面
     */
    def index() {

    }

    /**
     * 动态页面
     */
    def wind(String name) {//params.age
        println name
        println params.age
        if(name.equalsIgnoreCase("lvchanglong")) {
            return [xname: "吕常龙", xage: 1]
        }
        [xname:name, xage:params.age]//等同于return [xname:name, xage:params.age]
    }

    /**
     * ajax演示
     */
    def ajax() {

    }

    /**
     * ajax请求
     */
    def ajaxRequest(Integer n1, Integer n2) {
        render n1 + n2
    }

    /**
     * form表单
     */
    def form(Integer n1, Integer n2) {
        if(n1 && n2) {//若n1和n2存在时
            return [n1:n1, n2:n2, n3:n1+n2]
        }
        [n1:1, n2:2, n3:"(*^_^*)"] //默认值，return可省略
    }

    /**
     * ajaxForm
     * @param n1
     * @param n2
     * @return
     */
    def ajaxForm(Integer n1, Integer n2) {
        if(n1 && n2) {//若n1和n2存在时
            render n1+n2
            return
        }
        render "参数有误"
    }

    /**
     * html基础
     */
    def html() {

    }

    /**
     * grails标签基础
     */
    def grails() {

    }

    /**
     * css基础
     */
    def css() {

    }

    /**
     * resource
     */
    def resourceDemo() {
        [user:User.first()]
    }

    /**
     * withFormat
     */
    def withFormatDemo() {

        /**
         * 识别请求类型(form, multipartForm, '*')
         */
        request.withFormat {
//            form {
//                println "form表单"
//            }
//            multipartForm {
//                println "文件上传"
//            }
            form multipartForm {
                println "form表单&&文件上传"
            }
            '*' {
                println "其他情况"
            }
        }

        println "--------------------------------------------"

        /**
         * 根据format参数，返回不同格式数据(json, xml, '*')
         */
        withFormat { // 等于 response.withFormat
            json {
                println "format==json，返回json"
                render User.list() as JSON
            }
            xml {
                println "format==xml, 返回xml"
                render User.list() as XML
            }
            '*' {
                println "其他情况，返回html"
                [userList: User.list()]
            }
        }
    }

    /**
     * respond
     */
    def respondDemo() {
        /**
         * respond 相当于withFormat的简化版
         * respond User.first() //html情况下，等同于[user:User.first()]
         */
        respond User.list(), model:[userCount: User.count()] //html情况下，等同于[userList:User.list(), userCount: User.count()]
    }

    /**
     * 文件上传演示
     */
    def uploadDemo() {
        def temp = new File(servletContext.getRealPath("/") + "temp")
        [files: temp.listFiles()]
    }

    /**
     * 上传文件
     */
    def upload() {
        def f = request.getFile("file")
        if(f.empty) {
            render status: BAD_REQUEST, text: "不可为空"
        }

        def temp = new File(servletContext.getRealPath("/") + "temp") //临时文件夹
        if(!temp.exists()) {
            temp.mkdirs()
        }
        println temp.getPath()

        def fileName = f.getOriginalFilename()
        def serverFile = new File(temp.getPath(), fileName)
        f.transferTo(serverFile) //开始上传

        render status: OK, text: "创建成功"
    }

    /**
     * 模态框
     */
    def dialog() {

    }

    /**
     * 弹出框
     */
    def messenger() {

    }

    /**
     * 视频播放
     */
    def video() {

    }

}
