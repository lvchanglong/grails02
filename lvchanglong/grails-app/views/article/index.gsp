<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="grails" />
        <g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-article" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/admin')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-article" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <tr>
                    <th>File Name</th>
                    <th>Title</th>
                    <th>Data</th>
                </tr>
                <g:each in="${articleList}" status="i" var="article">
                    <tr class="${(i % 2 == 0)?"even":"odd"}">
                        <td><g:link controller="article" action="show" id="${article.id}">${article.fileName}</g:link></td>
                        <td>${article.title}</td>
                        <td><img src="${createLink(controller: "article", action: "preview", id: article.id)}" style="max-width:25px;max-height:25px;"/></td>
                    </tr>
                </g:each>
            </table>

            <div class="pagination">
                <g:paginate total="${articleCount ?: 0}" />
            </div>
        </div>
    </body>
</html>