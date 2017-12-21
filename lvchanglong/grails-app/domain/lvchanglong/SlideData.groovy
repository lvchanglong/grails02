package lvchanglong

/**
 * 幻灯片-二进制数据
 */
class SlideData {
    static belongsTo = [parent: Slide]

    byte[] bytes //二进制数据

    static mapping = {
        table "slide_data"
        id column: "id"
        version column: "version"

        bytes column: "bytes"
    }

    static constraints = {
        parent(nullable: true)
        bytes(nullable: false, maxSize: 1024 * 1024 * 200) //maxSize设置，不可省略（200M，2 0000 0000）
    }
}
