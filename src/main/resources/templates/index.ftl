<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <title>博客</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="node_modules/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="node_modules/Font-Awesome-3.2.1/css/font-awesome.css">
    <link rel="stylesheet" href="css/main.css">

</head>
<body>

<#include "part/header.ftl" encoding="UTF-8">

<img src="img/ad-l.jpg" style="width: 100%;height: 100px;">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="first-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide">
            <div class="container">
                <div class="carousel-caption text-left">
                    <h1>Example headline.</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img class="second-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Another example headline.</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img class="third-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide">
            <div class="container">
                <div class="carousel-caption text-right">
                    <h1>One more for good measure.</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<main role="main" class="container">
    <div class="row">
        <div class="col-md-8">

            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">最高人气</a>
                    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">最新录入</a>
                    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Contact</a>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">

                    <ul class="list-unstyled">
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                    </ul>

                </div>
                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">

                    <ul class="list-unstyled">
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                        <li class="media my-4">
                            <img class="mr-3" src="img/photo.jpg" alt="Generic placeholder image">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">List-based media object</h5>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus
                                <p><span>李其伟</span><span><i class="icon-heart"></i>33</span><span><i class="icon-calendar"></i>2017/7/25 22:38</span></p>
                            </div>
                        </li>
                    </ul>

                </div>
                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">contact</div>
            </div>


        </div>
        <aside class="col-md-4 blog-sidebar">
            <div class="p-3 mb-3 bg-light rounded">
                <h4 class="font-italic">说明</h4>
                <p class="mb-0">本网站为技术类博客，目的是提供更正确、更全面、更实用的内容，让编程更加轻松。</p>
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
                <img src="img/ad.jpg" style="width: 100%">
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
<script src="node_modules/jquery/dist/jquery.js" ></script>
<script src="node_modules/bootstrap/js/bootstrap.js" ></script>
</body>
</html>