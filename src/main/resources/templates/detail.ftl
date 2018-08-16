<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <title>Tomcat安装和配置</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="http://${staticUrl}/node_modules/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="http://${staticUrl}/node_modules/Font-Awesome-3.2.1/css/font-awesome.css">
    <link rel="stylesheet" href="http://${staticUrl}/css/main.css">

</head>
<body>

<#include "part/header.ftl" encoding="UTF-8">

<img src="http://${staticUrl}/img/ad-l.jpg" style="width: 100%;height: 100px;">
<main role="main" class="py-3 container-fluid">
    <div class="row">
        <div class="col-md-9">
            <div class="p-3 mb-3 bg-light rounded">
                <h3>${blog.title}</h3>
                <p>2018年04月12日 10:44:05&nbsp;&nbsp;喜欢:4213 &nbsp;&nbsp;收藏:4213 &nbsp;&nbsp;阅读量:4213</p>
                <hr>
                ${blog.content}
                <hr>
                <p>
                    <button type="button" class="btn btn-outline-primary m-1"><i class="icon-heart"></i>喜欢</button>
                    <button type="button" class="btn btn-outline-secondary m-1"><i class="icon-heart-empty"></i>不喜欢</button>
                    <button type="button" class="btn btn-outline-success m-1"><i class="icon-save"></i>收藏</button>
                    <button type="button" class="btn btn-outline-danger m-1"><i class="icon-warning-sign"></i>举报</button>
                </p>
            </div>
            <div class="p-3 mb-3 bg-light rounded">
                <form>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">评论</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">提交</button>
                    <ul class="list-unstyled my-3">
                        <li class="media">
                            <img class="img-fluid rounded-circle mr-3" src="http://${staticUrl}/img/photo.jpg" style="height: 36px;width: 36px;"  alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">李其伟<span class="d-inline-block float-right small">2017/7/25 22:38</span></h5>
                                简单说两句
                                <p>
                                    <button type="button" class="btn btn-sm btn-outline-primary"><i class="icon-heart"></i>喜欢</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary"><i class="icon-heart-empty"></i>不喜欢</button>
                                    <button type="button" class="btn btn-sm btn-outline-primary"><i class="icon-comment"></i>评论</button>
                                    <button type="button" class="btn btn-sm btn-outline-danger"><i class="icon-warning-sign"></i>举报</button>
                                </p>
                            </div>
                        </li>
                        <li class="media">
                            <img class="img-fluid rounded-circle mr-3" src="http://${staticUrl}/img/photo.jpg" style="height: 36px;width: 36px;"  alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">李其伟<span class="d-inline-block float-right small">2017/7/25 22:38</span></h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p>
                                    <button type="button" class="btn btn-sm btn-outline-primary"><i class="icon-heart"></i>喜欢</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary"><i class="icon-heart-empty"></i>不喜欢</button>
                                    <button type="button" class="btn btn-sm btn-outline-primary"><i class="icon-comment"></i>评论</button>
                                    <button type="button" class="btn btn-sm btn-outline-danger"><i class="icon-warning-sign"></i>举报</button>
                                </p>
                            </div>
                        </li>
                        <li class="media">
                            <img class="img-fluid rounded-circle mr-3" src="http://${staticUrl}/img/photo.jpg" style="height: 36px;width: 36px;"  alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">李其伟<span class="d-inline-block float-right small">2017/7/25 22:38</span></h5>
                                你好啊 in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p>
                                    <button type="button" class="btn btn-sm btn-outline-primary"><i class="icon-heart"></i>喜欢</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary"><i class="icon-heart-empty"></i>不喜欢</button>
                                    <button type="button" class="btn btn-sm btn-outline-primary"><i class="icon-comment"></i>评论</button>
                                    <button type="button" class="btn btn-sm btn-outline-danger"><i class="icon-warning-sign"></i>举报</button>
                                </p>
                            </div>
                        </li>
                    </ul>
                </form>
            </div>
            <div class="p-3 mb-3 bg-light rounded">
                <ul class="list-unstyled">
                    <li class="media my-4">
                        <img class="mr-3" src="http://${staticUrl}/img/photo.jpg" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0 mb-1">List-based media object</h5>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                            <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                        </div>
                    </li>
                    <li class="media my-4">
                        <img class="mr-3" src="http://${staticUrl}/img/photo.jpg" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0 mb-1">List-based media object</h5>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                            <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                        </div>
                    </li>
                    <li class="media my-4">
                        <img class="mr-3" src="http://${staticUrl}/img/photo.jpg" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0 mb-1">List-based media object</h5>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                            <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                        </div>
                    </li>
                    <li class="media my-4">
                        <img class="mr-3" src="http://${staticUrl}/img/photo.jpg" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0 mb-1">List-based media object</h5>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                            <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                        </div>
                    </li>
                    <li class="media my-4">
                        <img class="mr-3" src="http://${staticUrl}/img/photo.jpg" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0 mb-1">List-based media object</h5>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                            <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                        </div>
                    </li>
                    <li class="media my-4">
                        <img class="mr-3" src="http://${staticUrl}/img/photo.jpg" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0 mb-1">List-based media object</h5>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                            <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                        </div>
                    </li>
                    <li class="media my-4">
                        <img class="mr-3" src="http://${staticUrl}/img/photo.jpg" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0 mb-1">List-based media object</h5>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                            <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                        </div>
                    </li>
                    <li class="media my-4">
                        <img class="mr-3" src="http://${staticUrl}/img/photo.jpg" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0 mb-1">List-based media object</h5>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                            <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                        </div>
                    </li>
                    <li class="media my-4">
                        <img class="mr-3" src="http://${staticUrl}/img/photo.jpg" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0 mb-1">List-based media object</h5>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                            <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                        </div>
                    </li>
                    <li class="media my-4">
                        <img class="mr-3" src="http://${staticUrl}/img/photo.jpg" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0 mb-1">List-based media object</h5>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                            <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <aside class="col-md-3 blog-sidebar">
            <div class="p-3 mb-3 bg-light rounded">
                <div class="card">
                    <h5 class="card-header">
                        <img class="m-sm-1 rounded-circle" src="http://${staticUrl}/img/logo-s.png"  style="height: 36px;width: 36px;" >
                        李其伟
                        <a href="#" class="btn btn-outline-info float-right"><i class="icon-plus"></i>关注</a>
                    </h5>

                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-4 col-6">
                                        原创<br>1232
                                    </div>
                                    <div class="col-md-4 col-6">
                                        粉饰<br>532
                                    </div>
                                    <div class="col-md-4 col-6">
                                        粉饰<br>532
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6">
                                        等级：11<br>积分：1232
                                    </div>
                                    <div class="col-md-6">
                                        访问：3244<br>排名：42321
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="p-3"  id="tags">
                <h4 class="font-italic">标签</h4>
                <button type="button" class="btn btn-outline-primary">Primary</button>
                <button type="button" class="btn btn-outline-secondary">Secondary</button>
                <button type="button" class="btn btn-outline-success">Success</button>
                <button type="button" class="btn btn-outline-danger">Java</button>
                <button type="button" class="btn btn-outline-success">Success</button>
                <button type="button" class="btn btn-outline-danger">HTML</button>
                <button type="button" class="btn btn-outline-success">Success</button>
                <button type="button" class="btn btn-outline-danger">spring boot</button>
                <button type="button" class="btn btn-outline-warning">Warning</button>
                <button type="button" class="btn btn-outline-info">Info</button>
                <button type="button" class="btn btn-outline-dark">React</button></ol>
            </div>

            <div class="p-3 mb-3 bg-light rounded">
                <img src="http://${staticUrl}/img/ad.jpg" style="width: 100%">
            </div>

            <div class="p-3">
                <h4 class="font-italic">归档</h4>
                <ol class="list-unstyled mb-0">
                    <li><a href="#">2018年07月</a></li>
                    <li><a href="#">2018年06月</a></li>
                    <li><a href="#">2018年05月</a></li>
                    <li><a href="#">2018年04月</a></li>
                    <li><a href="#">2018年03月</a></li>
                    <li><a href="#">2018年02月</a></li>
                    <li><a href="#">2018年01月</a></li>
                    <li><a href="#">2017年12月</a></li>
                    <li><a href="#">2017年11月</a></li>
                    <li><a href="#">2017年10月</a></li>
                    <li><a href="#">2017年09月</a></li>
                    <li><a href="#">2017年08月</a></li>
                </ol>
            </div>

            <div class="p-3">
                <h4 class="font-italic">推荐作者</h4>
                <ol class="list-unstyled">
                    <li><a href="#" target="_blank">李其伟</a></li>
                    <li><a href="#"  target="_blank">沙沙</a></li>
                    <li><a href="#"  target="_blank">博客</a></li>
                </ol>
            </div>
        </aside><!-- /.blog-sidebar -->

    </div><!-- /.row -->

</main>

<#include "part/footer.ftl" encoding="UTF-8">

<!-- Optional JavaScript -->
<!-- jQuery first, then Bootstrap JS -->
<script src="http://${staticUrl}/node_modules/jquery/dist/jquery.js" ></script>
<script src="http://${staticUrl}/node_modules/bootstrap/js/bootstrap.js" ></script>
<script src="http://${staticUrl}/js/common.js" ></script>
</body>
</html>