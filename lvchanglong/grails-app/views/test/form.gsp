<!doctype html>
<html>
<head>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery.form/4.2.2/jquery.form.min.js"></script>
</head>
<body>
    <g:form controller="test" action="form">
        <g:textField name="n1" value="${n1}"/>
        +
        <g:textField name="n2" value="${n2}"/>
        =
        <g:textField name="n3" value="${n3}"/>
        <g:submitButton name="submit" value="提交"/>
    </g:form>

    <hr/>

    <g:form controller="test" action="ajaxForm" class="ajaxForm">
        <g:textField name="n1" value="${n1}"/>
        +
        <g:textField name="n2" value="${n2}"/>
        =
        <g:textField name="n3" value="${n3}" id="lvchanglong"/>
        <g:submitButton name="submit" value="提交"/>
    </g:form>

    <script>
        jQuery(".ajaxForm").ajaxForm({
            success: function (data) {
                alert(data);//弹出框
                jQuery("#lvchanglong").val(data);
            }
        });
    </script>
</body>
</html>
