<!doctype html>
<html>
    <head>
        <title>grails</title>
    </head>
    <body>
        <h1>超链接</h1>
        <g:link controller="test" action="grails">默认值(在当前窗口打开)</g:link>
        <g:link controller="test" action="grails" target="_blank">在新窗口打开</g:link>
        <a href="/test/grails">默认值(在当前窗口打开)</a>
        <a href="/test/grails" target="_blank">在新窗口打开</a>

        <h1>表单</h1>
        <g:form controller="test" action="grails">
            <g:hiddenField name="hiddenField" value="123456"/>
            <input type="hidden" name="hiddenField" id="hiddenField" value="123456"/>
            <hr/>
            <g:textField name="textField" value="单行文本"/>
            <input type="text" name="textField" id="textField" value="单行文本"/>
            <hr/>
            <g:textArea name="textArea" value="多行文本"/>
            <textarea name="textArea" id="textArea">多行文本</textarea>
            <hr/>
            <g:passwordField name="passwordField" value="密码"/>
            <input type="password" name="passwordField" id="passwordField" value="密码"/>
            <hr/>
            <g:radio name="radio" value="A"/>单选A
            <g:radio name="radio" value="B"/>单选B
            <input type="radio" name="radio" id="radio" value="A"/>单选A
            <input type="radio" name="radio" id="radio" value="B"/>单选B
            <hr/>
            <g:radioGroup name="radio" values="['A', 'B']" labels="['单选A', '单选B']" value="B">
                ${it.radio}${it.label}
            </g:radioGroup>
            <hr/>
            <g:checkBox name="checkBox" value="A"/>多选A
            <g:checkBox name="checkBox" value="B" checked="false"/>多选B
            <g:checkBox name="checkBox" value="C"/>多选C
            <input type="checkbox" name="checkBox" id="checkBox" checked="checked" value="A"/>多选A
            <input type="checkbox" name="checkBox" id="checkBox" value="B"/>多选B
            <input type="checkbox" name="checkBox" id="checkBox" checked="checked" value="C"/>多选C
            <hr/>
            <g:select name="select" from="['小孩', '老虎', '枪']" keys="['boy', 'tiger', 'gun']" value="老虎"/>
            <select name="select" id="select">
                <option value="boy">小孩</option>
                <option value="tiger">老虎</option>
                <option value="gun">枪</option>
            </select>
            <hr/>
            <g:submitButton name="submitButton" value="提交"/>
            <input type="submit" name="submitButton" id="submitButton" value="提交">
        </g:form>
        <hr/>
        <h1>文件上传</h1>
        <g:uploadForm controller="test" action="grails">
            <input type="file" name="file"/>
            <g:submitButton name="submitButton" value="提交"/>
        </g:uploadForm>
        <h1>form与uploadForm的区别</h1>
        <form action="/test/grails" method="post">
            form
        </form>
        <form action="/test/grails" method="post" enctype="multipart/form-data">
            uploadForm
        </form>
        <h1>分页(默认情况下，是以每页显示10条数据的情况进行分页)</h1>
        <g:paginate total="31"/>
        <h1>循环遍历</h1>
        <g:each in="['小孩', '老虎', '枪']" status="i" var="inst">
            ${i}.${inst}
        </g:each>
        <h1>选择分支</h1>
        <g:if test="${1+1==3}">
            1+1==3
        </g:if>
        <g:elseif test="${1+1==2}">
            1+1==2
        </g:elseif>
        <g:else>
            其他
        </g:else>
    </body>
</html>
