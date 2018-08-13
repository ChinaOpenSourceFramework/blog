<nav class="navbar navbar-expand-lg navbar-dark  bg-dark ">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#"><img src="img/logo-s.png" width="30" height="30" class="d-inline-block align-top" alt="logo"></a>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0 ml-lg-5">
            <li class="nav-item">
                <div class="btn-group">
                    <button type="button" class="btn btn-outline-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        消息
                    </button>
                    <div class="dropdown-menu dropdown-menu-left">
                        <button class="dropdown-item" type="button">系统消息</button>
                        <button class="dropdown-item" type="button">个人消息</button>
                        <button class="dropdown-item" type="button">消息……</button>
                    </div>
                </div>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" aria-label="搜索">
            <button class="btn btn-outline-success my-2 mr-sm-2" type="submit">搜索</button>
        </form>

        <ul class="navbar-nav mt-2 mt-lg-0">
            <li class="nav-item login">
                <a href="http://127.0.0.1/write.html"><button class="btn btn-outline-info my-2 mr-sm-2" >写文章</button></a>
            </li>
            <li class="nav-item unlogin">
                <button class="btn btn-outline-info my-2 mr-sm-2" type="button"  data-toggle="modal" data-target="#registerDiv">注册</button>
            </li>
            <li class="nav-item unlogin">
                <button class="btn btn-outline-info my-2 mr-sm-2" type="button"  data-toggle="modal" data-target="#loginDiv">登录</button>
            </li>
            <li class="nav-item login">
                <div class="btn-group my-2 mr-sm-2">
                    <img class="img-fluid rounded-circle dropdown-toggle" id = "userPhoto" src=""  style="height: 36px;width: 36px;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <div class="dropdown-menu dropdown-menu-right">
                        <button class="dropdown-item" type="button">个人信息</button>
                        <button class="dropdown-item" type="button">修改密码</button>
                        <button class="dropdown-item" type="button">退出</button>
                    </div>
                </div>
            </li>
        </ul>

    </div>
</nav>

<!-- login Modal -->
<div class="modal fade" id="loginDiv" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">登录</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="login">
                    <div class="form-group">
                        <label for="username">登录名</label>
                        <input type="text" class="form-control" name="loginName" placeholder="登录名">
                    </div>
                    <div class="form-group">
                        <label for="password">密码</label>
                        <input type="password" class="form-control" name="password" placeholder="密码">
                    </div>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" name="remember">
                        <label class="form-check-label" for="remember">记住我</label>
                    </div>
                    <button type="button" onclick="login()" class="btn btn-primary">登录</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- register Modal -->
<div class="modal fade" id="registerDiv" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">注册</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="register">
                    <div class="form-group">
                        <label for="username">登录名</label>
                        <input type="text" class="form-control" name="loginName" placeholder="登录名">
                    </div>
                    <div class="form-group">
                        <label for="username">用户名</label>
                        <input type="text" class="form-control" name="nickname" placeholder="用户名">
                    </div>
                    <div class="form-group">
                        <label for="password">密码</label>
                        <input type="password" class="form-control" name="password" placeholder="密码">
                    </div>
                    <div class="form-check">
                        <input type="radio" class="form-check-input" name="remember">
                        <label class="form-check-label" for="remember">同意《用户协议》《隐私政策》</label>
                    </div>
                    <button type="button" onclick="register()" class="btn btn-primary">注册</button>
                </form>
            </div>
        </div>
    </div>
</div>
