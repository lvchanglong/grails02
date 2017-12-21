<a href="#" id="logout">退出</a>

<script>
    jQuery("#logout").click(function () {
        jQuery.post("${createLink(controller: "guest", action: "logout")}", function (data) {
            window.location.reload();
        });
    });
</script>