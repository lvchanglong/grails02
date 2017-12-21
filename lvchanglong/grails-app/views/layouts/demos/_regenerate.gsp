<a href="#" data-toggle="modal" data-target="#regenetateModal">
    ${vip.realname}（${vip.username}）
</a>

<div class="modal fade" id="regenetateModal" tabindex="-1" role="dialog" aria-labelledby="regenetateModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <g:form controller="guest" action="regenerate" id="${vip.id}" class="ajaxForm">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="regenetateModalLabel">床前明月光，疑是地上霜</h4>
                </div>
                <div class="modal-body">
                    <g:textField name="password" value="${vip.password}" placeholder="密码" class="form-control" style="margin-bottom:5px;"/>
                    <g:textField name="realname" value="${vip.realname}" placeholder="昵称" class="form-control"/>
                </div>
                <div class="modal-footer">
                    <g:submitButton name="submit" value="确定" class="btn btn-primary"/>
                </div>
            </g:form>
        </div>
    </div>
</div>