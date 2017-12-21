<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
    ${params.n1}+${params.n2}=<span id="lvchanglong"></span>

    <script>
        jQuery.post("${createLink(controller: "test", action: "ajaxRequest", params: [n1:params.n1, n2:params.n2])}", function (data) {
           alert("${params.n1}+${params.n2}=" + data);
           jQuery("#lvchanglong").html(data);//井号#是id选择器
        });
    </script>
</body>
</html>
