package lvchanglong

import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

/**
 * 来宾
 */
@Transactional(readOnly = false)
class GuestController {
    /**
     * 首页
     */
    def index() {
        def articleList = Article.findAllByTitleLike("%${params.q?:""}%", params)//offset起始位置，max每页显示结果数
        def articleCount = Article.countByTitleLike("%${params.q?:""}%") //符合条件的结果总数
        [slideList: Slide.list(), articleList: articleList, articleCount:articleCount]
    }

    /**
     * 用户登录
     */
    def login(String username, String password) {
        def user = User.findByUsernameAndPassword(username, password)
        if(user) {
            session.uid = user.id //保存用户id信息
            render status: OK, text: "登录成功"
            return
        }
        render status: UNAUTHORIZED, text: "登录失败"
    }

    /**
     * 退出登录
     */
    def logout() {
        session.invalidate()
        render status: OK, text: "操作成功"
    }

    /**
     * 用户注册
     */
    def register(User user) { //def user = new User(params)
        if(user.hasErrors()) {
            render status: INTERNAL_SERVER_ERROR, text: "注册失败"
            return
        }
        user.save(flash: true)
        render status: OK, text: "注册成功"
    }

    /**
     * 个人信息修改
     */
    def regenerate(User user) {
        if(user == null) {
            render status: NOT_FOUND, text: "用户不存在"
            return
        }
        if(user.hasErrors()) {
            render status: INTERNAL_SERVER_ERROR, text: "修改失败"
            return
        }
        user.save(flash: true)
        render status: OK, text: "修改成功"
    }

}
