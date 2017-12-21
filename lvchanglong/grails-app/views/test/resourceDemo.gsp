<!doctype html>
<html>
    <head>
        <title>resource</title>
    </head>
    <body>
        <h1>超链接</h1>
        常规：<g:link controller="user" action="show" id="${user.id}">show</g:link>
        简写：<g:link resource="${user}" action="show">show</g:link>

        <hr/>

        常规：<g:link controller="user" action="edit" id="${user.id}">edit</g:link>
        简写：<g:link resource="${user}" action="edit">edit</g:link>

        <h1>表单</h1>
        <g:form controller="user" action="save">
            保存-常规
        </g:form>
        <g:form controller="user" action="save">
            保存-简写（没有简写形式）
        </g:form>

        <hr/>

        <g:form controller="user" action="update" id="${user.id}">
            更新-常规
        </g:form>
        <g:form resource="${user}" method="PUT">
            更新-简写
        </g:form>
        <g:form resource="${user}" action="update">
            更新-另一种简写
        </g:form>

        <hr/>

        <g:form controller="user" action="delete" id="${user.id}">
            删除-常规
        </g:form>
        <g:form resource="${user}" method="DELETE">
            删除-简写
        </g:form>
        <g:form resource="${user}" action="delete">
            删除-另一种简写
        </g:form>

    </body>
</html>
