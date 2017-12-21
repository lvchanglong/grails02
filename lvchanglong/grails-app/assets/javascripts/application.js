// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require_self

if (typeof jQuery !== 'undefined') {
    (function($) {
        $(document).ajaxStart(function() {
            $('#spinner').fadeIn();
        }).ajaxStop(function() {
            $('#spinner').fadeOut();
        });

        jQuery(".ajaxForm").ajaxForm({
            success: function (data) {
                Messenger().post({
                    message: data,
                    hideAfter: 3,
                    showCloseButton: true
                });
                window.location.reload(); //刷新当前页面
            },
            error: function (data) {
                Messenger().post({
                    message: data.responseText,
                    hideAfter: 3,
                    showCloseButton: true
                });
            }
        });
    })(jQuery);
}