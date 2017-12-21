package lvchanglong

class BootStrap {

    def init = { servletContext ->
        /**
         * 以下方法在程序启动时执行一次
         */
        User.init() //管理员初始化
    }
    def destroy = {
    }
}
