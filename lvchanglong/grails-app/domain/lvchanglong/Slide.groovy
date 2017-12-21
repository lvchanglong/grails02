package lvchanglong

/**
 * 幻灯片
 */
class Slide {
    SlideData data //数据
    String fileName //文件名
    String title //标题
    String content //内容

    static mapping = {
        table "slide"
        id column: "id"
        version column: "version"

        data column: "data"
        fileName column: "fileName"
        title column: "title"
        content column: "content", sqlType: "TEXT"

        sort id: "desc" //降序desc，升序asc
    }
    static constraints = {
        fileName(nullable: false, blank: false) //不能为null，不能为""
        title(nullable: false, blank: false)
        content(nullable: true, blank: true)
    }
}
