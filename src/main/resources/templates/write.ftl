<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <title>写博客</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="node_modules/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="node_modules/Font-Awesome-3.2.1/css/font-awesome.css">
    <link rel="stylesheet" href="node_modules/simditor/styles/simditor.css" />
    <link rel="stylesheet" href="node_modules/ztree/css/metroStyle/metroStyle.css"/>
    <link rel="stylesheet" href="css/main.css">

</head>
<body>

<#include "part/header.ftl" encoding="UTF-8">

<main role="main" class="py-3 container">
    <div class="row">
        <div class="col-md-12" style="margin-top: 30px;margin-bottom: 30px;">
            <form class="form-horizontal">

                <div class="form-group">
                    <input type="email" class="form-control" id="blog_title" placeholder="标题">
                </div>

                <div class="form-group">
                    <textarea id="editor" style="min-height: 300px; min-width: 100%;" placeholder="请输入博客内容……" autofocus ></textarea>
                </div>

                <div class="form-group">
                    <button type="button" class="btn btn-primary btn-lg" onclick="saveBlog(0)">保存</button>
                    <button type="button" class="btn btn-primary btn-lg" onclick="saveBlog(1)">发布</button>
                </div>
            </form>
        </div>
    </div><!-- /.row -->

</main>

<#include "part/footer.ftl" encoding="UTF-8">

<!-- Optional JavaScript -->
<!-- jQuery first, then Bootstrap JS -->
<script src="node_modules/jquery/dist/jquery.js" ></script>
<script src="node_modules/bootstrap/js/bootstrap.js" ></script>
<script type="text/javascript" src="node_modules/simple-module/lib/module.js" ></script>
<script type="text/javascript" src="node_modules/simple-hotkeys/lib/hotkeys.js" ></script>
<script type="text/javascript" src="node_modules/simple-uploader/lib/uploader.js" ></script>
<script type="text/javascript" src="node_modules/simditor/lib/simditor.js" ></script>
<script type="text/javascript" src="node_modules/ztree/js/jquery.ztree.all.min.js" ></script>

<script src="js/common.js"></script>

<script>
    var editor;
    $(document).ready(function(){
        editor = new Simditor({
            textarea: $('#editor'),
            //optional options
            toolbar:  ['title', 'bold', 'italic', 'underline', 'strikethrough', 'fontScale', 'color', '|', 'ol', 'ul', 'blockquote', 'code', 'table', '|', 'link', 'image', 'hr', '|', 'indent', 'outdent', 'alignment']
            ,upload : {
                url : "/blog/upload", //文件上传的接口地址
                // params: {"packageId":"12321"}, //键值对,指定文件上传接口的额外参数,上传的时候随文件一起提交
                fileKey: 'file', //服务器端获取文件数据的参数名
                connectionCount: 3,
                leaveConfirm: '正在上传文件'
            }
        });
    });
</script>

</body>
</html>