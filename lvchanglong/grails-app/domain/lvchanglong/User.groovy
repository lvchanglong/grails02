package lvchanglong

class User {

    String username //账号
    String password //密码
    String realname = "匿名"//昵称
    String rolename = "普通用户"//角色

    Date dateCreated //创建时间（特殊写法）
    Date lastUpdated //更新时间（特殊写法）

    static constraints = {
        username(nullable: false, blank: false, unique: true) //不能为null，不能为""，不可重复
        password(nullable: false, blank: false)
        realname(nullable: true, blank: true)
        rolename(nullable: false, blank: false, inList: ["普通用户", "管理员"])
    }

    static mapping = { //映射（可选）
        table "user"
        id column: "id"
        version column: "version"

        username column: "username"
        password column: "password"
        realname column: "realname"
        rolename column: "rolename"

        dateCreated column: "dateCreated"
        lastUpdated column: "lastUpdated"

        sort id: "desc" //降序desc，升序asc
    }

    /**
     * 管理员初始化
     */
    static void init() {
        def instance = User.first()
        if(!instance) {
            instance = new User([username:"admin", password:"123456", realname:"深思君", rolename:"管理员"])
            instance.save(flush: true)
        }
    }

}
