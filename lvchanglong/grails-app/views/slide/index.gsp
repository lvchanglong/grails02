<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="grails" />
        <g:set var="entityName" value="${message(code: 'slide.label', default: 'Slide')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-slide" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/admin')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-slide" class="content scaffold-list" role="main">
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
                <g:each in="${slideList}" status="i" var="slide">
                    <tr class="${(i % 2 == 0)?"even":"odd"}">
                        <td><g:link controller="slide" action="show" id="${slide.id}">${slide.fileName}</g:link></td>
                        <td>${slide.title}</td>
                        <td><img src="${createLink(controller: "slide", action: "preview", id: slide.id)}" style="max-width:25px;max-height:25px;"/></td>
                    </tr>
                </g:each>
            </table>

            <div class="pagination">
                <g:paginate total="${slideCount ?: 0}" />
            </div>
        </div>
    </body>
</html>