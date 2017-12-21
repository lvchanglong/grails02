<!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="renderer" content="webkit">
        <meta name="Keywords" content="lvchanglong">
        <meta name="Description" content="lvchanglong.com">
        <title>标题</title>
        <link href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
        <div>
            <h1>标题1</h1>
            <h2 class="h2">标题2</h2>
            <h3 style="color:green;">标题3</h3>
            <h4 id="h4">标题4</h4>
            <h5>标题5</h5>
            <h6>标题6</h6>
            <p>段落</p>
            <a href="http://lvchanglong.com">深思君</a>
            <a href="http://lvchanglong.com" target="_self">默认值(在当前窗口打开)</a>
            <a href="http://lvchanglong.com" target="_blank">在新窗口打开</a>
        </div>

        <style>
            h1 {
                color:red;
            }
            .h2 {
                color:blue;
            }
            #h4 {
                color:darkgray;
            }
        </style>

        <hr/>

        我是&nbsp;<span id="lvchanglong"></span>

        <script>
            jQuery("#lvchanglong").html("深思君");
        </script>

        <hr/>

        <h1>有序列表</h1>
        <ol>
            <li>把冰箱门打开</li>
            <li>把大象装进去</li>
            <li>把冰箱门带上</li>
        </ol>

        <h1>无序列表</h1>
        <ul>
            <li>人类</li>
            <li>天使</li>
            <li>魔鬼</li>
        </ul>

        <hr/>

        <h1>表格</h1>
        <table>
            <caption>表格标题</caption>
            <tr>
                <th>列标题1</th>
                <th>列标题2</th>
            </tr>
            <tr>
                <td>列数据1</td>
                <td>列数据2</td>
            </tr>
            <tr>
                <td>列数据3</td>
                <td>列数据4</td>
            </tr>
        </table>

        <hr/>

        <h1>表单</h1>
        <form action="${createLink(controller: "test", action: "html")}" method="get">
            <fieldset>
                <legend>登录信息</legend>
                <label for="username">账号</label>
                <input type="text" name="username" id="username"/>
                <br/>
                <label for="password">密码</label>
                <input type="text" name="password" id="password"/>
            </fieldset>

            <fieldset>
                <legend>个人信息</legend>
                贵姓：<input type="text" name="fname"/>
                贱名：<input type="text" name="lname"/>
                喜爱：
                <select name="favor">
                    <optgroup label="人类">
                        <option value="man">男人</option>
                        <option value="woman">女人</option>
                    </optgroup>
                    <optgroup label="动物">
                        <option value="tiger">老虎</option>
                        <option value="lion">狮子</option>
                    </optgroup>
                </select>
                简介：
                <textarea name="remark" placeholder="写点什么吧"></textarea>
            </fieldset>

            <input type="submit" value="提交"/>
        </form>

        <hr/>

        <h1>图像</h1>
        <img src="${assetPath(src:"img.jpg")}"/>

        <h1>视频</h1>
        <video src="${assetPath(src:"video.ogg")}" controls="controls">
            当前浏览器不支持video标签
        </video>

        <h1>音频</h1>
        <audio src="${assetPath(src:"audio.mp3")}" controls="controls" autoplay="autoplay">
            当前浏览器不支持audio标签
        </audio>

        <audio controls="controls">
            <source src="${assetPath(src:"audio.ogg")}" type="audio/ogg">
            <source src="${assetPath(src:"audio.mp3")}" type="audio/mpeg">
            当前浏览器不支持audio标签
        </audio>

        <hr/>

        <h1>嵌入flash或网站</h1>
        <embed src="${assetPath(src:"flash.swf")}"/>
        <embed src="http://lvchanglong.com"/>
    </body>
</html>
