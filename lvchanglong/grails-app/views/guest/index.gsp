<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <style>
        .pagination {
            border-top: 0;
            padding: 0.3em 0.2em;
            text-align: center;
            margin:0 auto !important;
            width:100%;
        }

        .pagination a,
        .pagination .currentStep {
            color: #666666;
            display: inline-block;
            margin: 0 0.1em;
            padding: 0.25em 0.7em;
            text-decoration: none;
            -moz-border-radius: 0.3em;
            -webkit-border-radius: 0.3em;
            border-radius: 0.3em;
        }

        .pagination a:hover, .pagination a:focus,
        .pagination .currentStep {
            background-color: #999999;
            color: #ffffff;
            outline: none;
            text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.8);
        }

        .no-borderradius .pagination a:hover, .no-borderradius .pagination a:focus,
        .no-borderradius .pagination .currentStep {
            background-color: transparent;
            color: #444444;
            text-decoration: underline;
        }
        .modal-title {
            text-align:left;
            font-weight:bold;
        }
        .modal-body {
            text-align:left;
        }
    </style>
</head>
<body>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <g:if test="${slideList}">
            <ol class="carousel-indicators">
                <g:each in="${slideList}" status="i" var="slide">
                    <li data-target="#myCarousel" data-slide-to="${i}" class="${(i==0)?"active":""}"></li>
                </g:each>
            </ol>
            <div class="carousel-inner" role="listbox">
                <g:each in="${slideList}" status="i" var="slide">
                    <div class="item ${(i==0)?"active":""}">
                        <img src="${createLink(controller: "slide", action: "preview", id: slide.id)}" style="width:100%;height:100%;"/>
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>${slide.title}</h1>
                                <p>${slide.content}</p>
                            </div>
                        </div>
                    </div>
                </g:each>
            </div>
        </g:if>
        <g:else>
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="first-slide" src="${assetPath(src:"birds/slide1.jpg")}" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Example headline.</h1>
                            <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide" src="${assetPath(src:"birds/slide2.jpg")}" alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Another example headline.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide" src="${assetPath(src:"birds/slide3.jpg")}" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>One more for good measure.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </g:else>

        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="container marketing">
        <div class="row">
            <g:each in="${articleList}" status="i" var="article">
                <div class="col-lg-4">
                    <img src="${createLink(controller: "article", action: "preview", id: article.id)}" class="img-circle" style="width:140px;height:140px;display:block;margin:0 auto;"/>
                    <a href="#" data-toggle="modal" data-target="#myArticle${article.id}" style="display: inline-block;margin-top:10px;">
                        ${article.title}
                    </a>
                    <div class="modal fade" id="myArticle${article.id}" tabindex="-1" role="dialog" aria-labelledby="myArticle${article.id}Label" style="z-index:10000;">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myArticle${article.id}Label">详情</h4>
                                </div>
                                <div class="modal-body">
                                    ${article.content}
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </g:each>
            <div class="col-lg-12">
                <div class="pagination">
                    <g:paginate total="${articleCount ?: 0}" params="[q:params.q]"/>
                </div>
            </div>
        </div>
        <hr class="featurette-divider">
    </div>
</body>
</html>
