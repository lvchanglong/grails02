<!doctype html>
<html>
    <head>
        <title>upload</title>
        <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.bootcss.com/jquery.form/4.2.2/jquery.form.min.js"></script>
    </head>
    <body>
        <ol>
            <g:each in="${files}" status="i" var="file">
                <li>
                    ${file.getName()}
                </li>
            </g:each>
        </ol>

        <hr/>

        <g:uploadForm controller="test" action="upload" class="ajaxForm">
            <input type="file" name="file"/>
            <g:submitButton name="submit" value="上传"/>
        </g:uploadForm>

        <script>
            jQuery(".ajaxForm").ajaxForm({
               success: function (data) {
                   alert(data);
                   window.location.reload();//刷新页面
               }
            });
        </script>
    </body>
</html>
