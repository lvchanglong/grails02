<!doctype html>
<html>
    <head>
        <title>messenger</title>
        <link href="https://cdn.bootcss.com/messenger/1.5.0/css/messenger.min.css" rel="stylesheet">
        <link href="https://cdn.bootcss.com/messenger/1.5.0/css/messenger-theme-future.min.css" rel="stylesheet">
        <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.bootcss.com/messenger/1.5.0/js/messenger.min.js"></script>
        <script src="https://cdn.bootcss.com/messenger/1.5.0/js/messenger-theme-future.min.js"></script>
    </head>
    <body>
        <script>
            Messenger().post({
                message: "Hello World",
                hideAfter: 3,
                showCloseButton: true
            });
        </script>
    </body>
</html>
