<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="grails" />
        <g:set var="entityName" value="${message(code: 'slide.label', default: 'Slide')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-slide" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/admin')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-slide" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
            <g:uploadForm resource="${this.slide}" method="POST">
                <fieldset class="form">
                    <div class="fieldcontain">
                        <label for="title">Title
                        </label>
                        <g:textField name="title" value="" style="min-width:285px;"/>
                    </div>
                    <div class="fieldcontain">
                        <label for="content">Content</label>
                        <g:textArea name="content" value="" style="min-width:285px;"/>
                    </div>
                    <div class="fieldcontain required">
                        <label for="file">File
                            <span class="required-indicator">*</span>
                        </label>
                        <input type="file" name="file" id="file" style="display: inline-block"/>
                    </div>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:uploadForm>
        </div>
    </body>
</html>
