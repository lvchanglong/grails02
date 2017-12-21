<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="grails" />
        <g:set var="entityName" value="${message(code: 'slide.label', default: 'Slide')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-slide" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/admin')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-slide" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.slide}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.slide}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:uploadForm controller="slide" action="update" id="${this.slide.id}">
                <g:hiddenField name="version" value="${this.slide?.version}" />
                <fieldset class="form">
                    <div class="fieldcontain">
                        <label for="title">Title
                        </label>
                        <g:textField name="title" value="${slide.title}" style="min-width:285px;"/>
                    </div>
                    <div class="fieldcontain">
                        <label for="content">Content</label>
                        <g:textArea name="content" value="${slide.content}" style="min-width:285px;"/>
                    </div>
                    <div class="fieldcontain">
                        <label for="data">Data
                        </label>
                        <img id="data" src="${createLink(controller: "slide", action: "preview", id: slide.id)}" style="max-width:300px;max-height:300px;"/>
                    </div>
                    <div class="fieldcontain">
                        <label for="file">File
                            <span class="required-indicator">*</span>
                        </label>
                        <input type="file" name="file" id="file" style="display: inline-block"/>
                    </div>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:uploadForm>
        </div>
    </body>
</html>
