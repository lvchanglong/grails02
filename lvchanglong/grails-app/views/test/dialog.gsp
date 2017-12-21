<!doctype html>
<html>
    <head>
        <title>dialog</title>
        <asset:stylesheet src="bootstrap-3.3.7/dist/css/bootstrap.css"/>
        <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
        <asset:javascript src="bootstrap-3.3.7/dist/js/bootstrap.js"/>
    </head>
    <body>
        %{--<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
            Launch demos modal
        </button>--}%

        <a href="#" data-toggle="modal" data-target="#myModal">
            Launch demo modal
        </a>

        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                    </div>
                    <div class="modal-body">
                        Hello World...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
