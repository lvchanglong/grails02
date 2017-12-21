<a href="#" data-toggle="modal" data-target="#loginModal">
    登录
</a>

<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <g:form controller="guest" action="login" class="ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="loginModalLabel">站得高一点，看得远一点</h4>
                </div>
                <div class="modal-body">
                    <g:textField name="username" value="" placeholder="账号" class="form-control" style="margin-bottom:5px;"/>
                    <g:textField name="password" value="" placeholder="密码" class="form-control"/>
                </div>
                <div class="modal-footer">
                    <g:submitButton name="submit" value="登录" class="btn btn-primary"/>
                </div>
            </g:form>
        </div>
    </div>
</div>