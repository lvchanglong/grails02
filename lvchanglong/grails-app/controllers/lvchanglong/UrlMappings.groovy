package lvchanglong

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/admin"(view:"/index")
        "/"(controller: "guest", action: "index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
