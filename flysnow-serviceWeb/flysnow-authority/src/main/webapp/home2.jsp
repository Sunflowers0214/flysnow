<!DOCTYPE html>
<html>
<head>
    <title>嘉和健康养老管理信息系统</title>
    <link href="favicon.ico" rel="icon" type="image/x-icon"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-control" content="no-cache">
    <meta http-equiv="Cache" content="no-cache">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <%--公共js引用--%>
    <script type="text/javascript" src="js/jquery-1.12.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.5.5.7/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/datagrid-filter.js"></script>
    <script type="text/javascript" src="js/jquery-easyui-1.5.5.7/locale/easyui-lang-zh_CN.js"></script>
    <%--公共css引用--%>
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.5.5.7/themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.5.5.7/themes/icon.css"/>
    <link rel="stylesheet" type="text/css" href="css/taotao.css"/>
    <!-- thirds -->
    <link rel="stylesheet" type="text/css" href="css/wooh-all.css"/>
    <link rel="stylesheet" type="text/css" href="css/icon/iconfont.css">
    <style>
        .iconfont {
            display: inline-block;
            width: 18px;
        }

        ul {
            margin: 0;
            padding: 0;
        }

        ul li {
            list-style: none;
        }

        .level1 > li {
            position: relative;
            padding: 10px 10px 10px 15px;
            color: #fff;
        }

        .level1 > li.active {
            background: #ececec;
            color: #1fca8f;
        }

        .level1 > li img {
            width: 16px;
        }

        .level1 > li span {
            margin-left: 15px;
        }

        .level1 > li:hover {
            background: #f6fffc;
            color: #1fca8f;
            -webkit-box-shadow: 2px 0 5px rgba(0, 0, 0, .3);
            -moz-box-shadow: 2px 0 5px rgba(0, 0, 0, .3);
            box-shadow: 2px 0 5px rgba(0, 0, 0, .3);
        }

        .menuContent {
            position: absolute;
            left: 150px;
            top: 0;
            width: 668px;
            min-height: 30px;
            border-top: 1px solid #c3d4ce;
            border-right: 1px solid #c3d4ce;
            border-bottom: 1px solid #c3d4ce;
            padding-top: 10px;
            background-color: #f6fffc;
            -webkit-box-shadow: 2px 0 5px rgba(0, 0, 0, .3);
            -moz-box-shadow: 2px 0 5px rgba(0, 0, 0, .3);
            box-shadow: 2px 0 5px rgba(0, 0, 0, .3);
            -webkit-transition: top .25s ease;
            -o-transition: top .25s ease;
            -moz-transition: top .25s ease;
            transition: top .25s ease;
        }

        .menuContent dl {
            position: relative;
            padding-left: 150px;
            margin-bottom: 12px;
        }

        .menuContent dl dt {
            overflow: hidden;
            position: absolute;
            left: 0;
            top: 8px;
            width: 130px;
            text-align: right;
            font-weight: bold;
            font-size: 14px;
            white-space: nowrap;
            -o-text-overflow: ellipsis;
            text-overflow: ellipsis;
            color: #2d906c;
            cursor: default;
        }

        /* .menuContent dl dt:hover{
             color:#eca246;
         }*/
        .menuContent dl dt i {
            margin-left: 10px;
        }

        .menuContent dl dd {
            overflow: hidden;
            *zoom: 1;
            padding: 5px 0
        }

        .menuContent dl dd a {
            float: left;
            margin: 5px 0;
            padding: 0 10px;
            height: 16px;
            border-left: 1px solid #e0e0e0;
            line-height: 16px;
            white-space: nowrap;
            color: #666;
        }

        .menuContent dl dd a:hover {
            color: #3baf75;
        }

        .menuContent dl dd a.active {
            color: #3baf75;
            font-weight: bold;
        }

        #systemName {
            line-height: 60px;
            font-size: 18px;
            font-style: normal;
        }

        .maxScreen {
            position: absolute;
            top: 0;
            left: 0;
            z-index: 1000000;
        }
    </style>
    <script>
        var contextpath = "${baseurl}";
        var loginAccount = "<%=loginAccount%>";
        var loginName = "<%=loginName%>";
        var loginUserId = "<%=strUserId%>";
        var _gmenu = {}; //_gParams = window.name.split(";");
        var menuTreeData = [];

        $(function () {
            //initMenu();
            WoohAPP.loadPage("homepage_inner.jsp", "");
            $("#id_menucontent").css({"overflow": "visible"});
            $($("#id_menucontent").parent()).css({"overflow": "visible"});
        });

        function initMenu() {
            jQuery.ajax({
                type: 'POST',
                url: "hecspsys/queryCurrentUserMenuList_hecspMenu",
                async: true,
                dataType: 'json',
                success: function (data) {
                    if (data && data["result"] == "success" && data["resultMap"]) {
                        var allMenuData = data["resultMap"]["menulist"];
                        var $lst = $("<ul class='level1'></ul>");
                        var $home = $("<li class='active'><i class='icon iconfont icon-home'></i><span>首页</span></li>")

                        $home.click(function () {
                            $(".sidebar .active").removeClass("active");
                            $(this).addClass("active");
                            WoohAPP.loadPage("homepage_inner.jsp", "");
                        });
                        $lst.append($home);
                        for (var i = 0; i < allMenuData.length; i++) {
                            //var $li = $("<li><img src='./themes/basic/icons/"+allMenuData[i]["menucode"]+".png'/><span>"+allMenuData[i]["menuname"]+"</span></li>").attr({"code":allMenuData[i]["menucode"]});
                            var $li = $("<li><i class='icon iconfont icon-default icon-" + allMenuData[i]["menucode"] + "'></i><span>" + allMenuData[i]["menuname"] + "</span></li>").attr({"code": allMenuData[i]["menucode"]});
                            var level2Data = allMenuData[i]["childList"];
                            var menuContent = $("<div></div>").addClass("menuContent").hide();
                            if (!level2Data) {
                                continue;
                            }
                            for (var m = 0; m < level2Data.length; m++) {
                                var $dl = $("<dl></dl>");
                                var level3Data = level2Data[m]["childList"];
                                var $dt = $("<dt></dt>").text(level2Data[m]["menuname"]).append("<i class='fa fa-chevron-right'></i>");
                                var $dd = $("<dd></dd>");
                                if (!level3Data) {
                                    continue;
                                }
                                for (var n = 0; n < level3Data.length; n++) {
                                    var $funcName = $("<a>" + level3Data[n]["menuname"] + "</a>").attr({
                                        "code": level3Data[n]["code"]
                                        , "href": "#"
                                        , "funcentry": level3Data[n]["funcentry"]
                                        , "menufullname": level3Data[n]["menufullname"]
                                    });
                                    $funcName.click(function () {
                                        var $this = $(this);
                                        $(".sidebar li").removeClass("active");
                                        $(".menuContent a").removeClass("active");
                                        $(".menuContent").hide();
                                        $this.addClass("active").closest("li").addClass("active");

                                        WoohAPP.loadPage($this.attr("funcentry"), $this.attr("menufullname"));
                                    });
                                    $dd.append($funcName);
                                }
                                menuContent.append($dl.append($dt).append($dd));
                            }
                            $lst.append($li.append(menuContent));
                            $li.hover(function () {
                                $(".menuContent").hide();
                                var top = $(".menuContent", $(this)).parent().offset().top;
                                var selfH = $(".menuContent", $(this)).height();
                                var winHeight = $(document.body).height()
                                if (top + selfH + 20 > winHeight) {
                                    var tHeight = top + selfH - winHeight + 60;
                                    $(".menuContent", $(this)).css({"top": -tHeight});
                                }
                                $(".menuContent", $(this)).show();
                            }, function () {
                                $(".menuContent").hide();
                            })
                        }
                        $("#id_menucontent").empty().append($lst);
                    }
                }
            });
        }

        /* function getTree(data) {
             WoohAPP.initMenuTree(data);
         }*/

        //修改密码
        function changePassword() {
            UserWin = $.ligerDialog.open({
                height: 250,
                url: 'updatePassword.jsp?userid=<%=strUserId%>',
                width: 400,
                title: '修改密码',
                isHidden: false
            });
        }

        //退出登录
        function logOut() {
            jQuery.ligerDialog.confirm('您确认要退出系统吗？', function (yes) {
                if (yes) {
                    jQuery.post("basicsys/loginout_login.action", null, function (result) {
                        window.location = contextpath + "/login";
                    }, "json");
                }
            });
        }
    </script>
</head>
<body class="hold-transition skin-blue sidebar-mini bodyFix">
<div class="wrapper">
    <header class="main-header">
        <div class="logo">
            <span class="logo-mini"></span>
            <span class="logo-lg"></span>
        </div>
        <nav class="navbar navbar-static-top" role="navigation">
            <span class="title" id="systemName">健康养老管理信息系统</span>
            <div class="navbar-custom-menu">

                <ul class="nav navbar-nav">
                    <li class="dropdown user user-menu">
                        <a id="dLabel" class="dropdown-toggle" data-target="#" href="#" data-toggle="dropdown">
                            <!-- <img src="themes/basic/imgs/user-default.png" class="user-image" alt="User Image" /> -->
                            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                            <span class="hidden-xs"id="username"></span>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dLabel">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="themes/basic/imgs/user-default.png" class="img-circle" alt="User Image"/>
                                <p><%=loginName%></p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="col-xs-6 text-center">
                                    <a href="javascript:userDetail()">个人信息</a>
                                </div>
                                <div class="col-xs-6 text-center">
                                    <a href="javascript:changePassword()">修改密码</a>
                                </div>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-right">
                                    <a href="javascript:logOut()" class="btn btn-default btn-flat" style="width:124px">退出系统</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <div style="background: #efefef;">
        <div class="alert" role="alert" style="display:none">well done</div>
        <div class="loader-wrapper">
            <div class="loader"></div>
        </div>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar" id="id_menucontent"></section>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <iframe id="main-content" src="" class="embed-responsive-item" name="main-content"></iframe>
            <!--/.content -->

        </div><!-- /.content-wrapper -->
        <div class="footerCon">
            <p class="copyright"><span></span><img alt="logo" src="./themes/basic/imgs/logo_foot.png"/></p>
        </div>
    </div>
</div><!-- ./wrapper -->
<div id="id_modulePageContent"></div>
</body>
</html>
