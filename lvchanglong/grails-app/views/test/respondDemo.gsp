<!doctype html>
<html>
    <head>
        <title>respond</title>
        <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.bootcss.com/jquery.form/4.2.2/jquery.form.min.js"></script>
    </head>
    <body>
        UserList:${userList}
        <br/>
        UserCount:${userCount}
        <hr/>

        <g:form controller="test" action="respondDemo" params="[format:'json']" class="ajaxForm">
            <g:textArea name="info" value="" id="lvchanglong" style="width:100%;height:300px"/>
            <g:submitButton name="submit" value="提交"/>
        </g:form>

        <script>
            jQuery(".ajaxForm").ajaxForm({
               success: function (data) {
                   jQuery("#lvchanglong").val(data);
               }
            });
        </script>
    </body>
</html>
