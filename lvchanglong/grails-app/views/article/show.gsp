<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="grails" />
        <g:set var="entityName" value="${message(code: 'article.label', default: 'Article')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-article" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/admin')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-article" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ol class="property-list article">
                <li class="fieldcontain">
                    <span id="fileName-label" class="property-label">File Name</span>
                    <div class="property-value" aria-labelledby="fileName-label">${article.fileName}</div>
                </li>
                <li class="fieldcontain">
                    <span id="title-label" class="property-label">Title</span>
                    <div class="property-value" aria-labelledby="title-label">${article.title}</div>
                </li>
                <li class="fieldcontain">
                    <span id="content-label" class="property-label">Content</span>
                    <div class="property-value" aria-labelledby="content-label">${article.content}</div>
                </li>
                <li class="fieldcontain">
                    <span id="data-label" class="property-label">Data</span>
                    <div class="property-value" aria-labelledby="data-label"><img src="${createLink(controller: "article", action: "preview", id: article.id)}" style="max-width:300px;max-height:300px;"/></div>
                </li>
            </ol>
            <g:form resource="${this.article}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.article}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
