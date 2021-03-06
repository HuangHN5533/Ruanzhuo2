<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>后台管理系统</title>
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <link rel="stylesheet" href="./css/font.css">
        <link rel="stylesheet" href="./css/xadmin.css">
        <!-- <link rel="stylesheet" href="./css/theme5.css"> -->
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="./js/xadmin.js"></script>
        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script>
            // 是否开启刷新记忆tab功能
            // var is_remember = false;
        </script>
    </head>
    <body class="index">
        <!-- 顶部开始 -->
        <div class="container">
            <div class="logo">
                <a href="./index.html">东莞理工学院</a></div>
            <div class="left_open">
                <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
            </div>
            <ul class="layui-nav left fast-add" lay-filter="">
               
            </ul>
            <ul class="layui-nav right" lay-filter="">
                <li class="layui-nav-item">
                    <a href="javascript:;">superadmin</a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd>
                            <a onclick="xadmin.open('个人信息','info-edit.html')">个人信息</a></dd>
                        <dd>
                            <a onclick="xadmin.open('切换帐号','password-edit.html')">修改密码</a></dd>
                        <dd>
                            <a href="./login.html">退出</a></dd>
                    </dl>
                </li>
               
            </ul>
        </div>
        <!-- 顶部结束 -->
        <!-- 中部开始 -->
        <!-- 左侧菜单开始 -->
        <div class="left-nav">
            <div id="side-nav">
                <ul id="nav">
                	<li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="内容维护">&#xe723;</i>
                            <cite>内容维护</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">

                            <li>
                                <a href="javascript:;">
                                    <i class="iconfont">&#xe70b;</i>
                                    <cite>课程概况管理</cite>
                                    <i class="iconfont nav_right">&#xe697;</i></a>
                                <ul class="sub-menu">
                                    <li>
                                        <a onclick="xadmin.add_tab('课程简介','/course/JianJie')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>课程简介</cite></a>
                                    </li>
                                    <li>
                                    <a onclick="xadmin.add_tab('课程特色','/course/TeSe')">
                                        <i class="iconfont">&#xe6a7;</i>
                                        <cite>课程特色</cite></a>
                                </li>

                                    <li>
                                        <a onclick="xadmin.add_tab('教材与历史资料','/course/JiaoCai')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>教材与历史资料</cite></a>
                                    </li>

                                    <li>
                                        <a onclick="xadmin.add_tab('历史前沿','/course/LiShi')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>历史前沿</cite></a>
                                    </li>

                                </ul>
                            </li>

                            <li>
                                <a href="javascript:;">
                                    <i class="iconfont">&#xe70b;</i>
                                    <cite>教学管理管理</cite>
                                    <i class="iconfont nav_right">&#xe697;</i></a>
                                <ul class="sub-menu">
                                    <li>
                                        <a onclick="xadmin.add_tab('课程简介','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>开课计划</cite></a>
                                    </li>
                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>上课班级</cite></a>
                                    </li>
                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>班级花名册</cite></a>
                                    </li>

                                    <li>
                                    <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                        <i class="iconfont">&#xe6a7;</i>
                                        <cite>班级成绩单</cite></a>
                                </li>

                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>学生作业案例</cite></a>
                                    </li>

                                </ul>
                            </li>








                            <li>
                                <a href="javascript:;">
                                    <i class="iconfont">&#xe70b;</i>
                                    <cite>教学安排管理</cite>
                                    <i class="iconfont nav_right">&#xe697;</i></a>
                                <ul class="sub-menu">
                                    <li>
                                        <a onclick="xadmin.add_tab('课程简介','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>教学大纲</cite></a>
                                    </li>
                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>教学日历</cite></a>
                                    </li>

                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>教学内容</cite></a>
                                    </li>

                                    <li>
                                    <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                        <i class="iconfont">&#xe6a7;</i>
                                        <cite>授课计划</cite></a>
                                </li>


                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>授课难重点</cite></a>
                                    </li>

                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>授课计划</cite></a>
                                    </li>

                                </ul>
                            </li>


                            <li>
                                <a href="javascript:;">
                                    <i class="iconfont">&#xe70b;</i>
                                    <cite>教学团队管理</cite>
                                    <i class="iconfont nav_right">&#xe697;</i></a>
                                <ul class="sub-menu">
                                    <li>
                                        <a onclick="xadmin.add_tab('课程简介','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>课程负责人</cite></a>
                                    </li>
                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>课程教学团队</cite></a>
                                    </li>

                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>主教教师</cite></a>
                                    </li>

                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>青年教师培养</cite></a>
                                    </li>
                                </ul>
                            </li>


                            <li>
                                <a href="javascript:;">
                                    <i class="iconfont">&#xe70b;</i>
                                    <cite>教学资源管理</cite>
                                    <i class="iconfont nav_right">&#xe697;</i></a>
                                <ul class="sub-menu">
                                    <li>
                                        <a onclick="xadmin.add_tab('课程简介','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>课程课件</cite></a>
                                    </li>
                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>教学录像</cite></a>
                                    </li>

                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>习题库</cite></a>
                                    </li>

                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>案例库</cite></a>
                                    </li>
                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>实验任务</cite></a>
                                    </li>
                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>技术文档范本</cite></a>
                                    </li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript:;">
                                    <i class="iconfont">&#xe70b;</i>
                                    <cite>教学效果管理</cite>
                                    <i class="iconfont nav_right">&#xe697;</i></a>
                                <ul class="sub-menu">
                                    <li>
                                        <a onclick="xadmin.add_tab('课程简介','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>校外专家评价</cite></a>
                                    </li>
                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>校外监督评价</cite></a>
                                    </li>

                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>教师自我评价</cite></a>
                                    </li>

                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>校内学生评价</cite></a>
                                    </li>
                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>社会评价</cite></a>
                                    </li>
                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>教学评估及材料</cite></a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="iconfont">&#xe70b;</i>
                                    <cite>教学互动</cite>
                                    <i class="iconfont nav_right">&#xe697;</i></a>
                                <ul class="sub-menu">
                                    <li>
                                        <a onclick="xadmin.add_tab('微信群','wechat_group-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>微信群</cite></a>
                                    </li>
                                    <li>
                                        <a onclick="xadmin.add_tab('QQ群','QQ_group-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>QQ群</cite></a>
                                    </li>

                                    <li>
                                        <a onclick="xadmin.add_tab('网页版','wangye-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>网页版</cite></a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="iconfont">&#xe70b;</i>
                                    <cite>教学改革</cite>
                                    <i class="iconfont nav_right">&#xe697;</i></a>
                                <ul class="sub-menu">
                                    <li>
                                        <a onclick="xadmin.add_tab('课程简介','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>教学改革理想</cite></a>
                                    </li>
                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>教学改革成果</cite></a>
                                    </li>

                                    <li>
                                        <a onclick="xadmin.add_tab('课程特色','front_context-list.html')">
                                            <i class="iconfont">&#xe6a7;</i>
                                            <cite>教学改革表彰与奖励</cite></a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>


                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="账号维护">&#xe6b8;</i>
                            <cite>账号维护</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            
                            <li>
                                <a onclick="xadmin.add_tab('二级管理员账号管理','second_admin-list.html')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>二级管理员账号管理</cite></a>
                            </li>

                            <li>
                                <a onclick="xadmin.add_tab('重置二级管理员密码','second_admin-passwordreset.html')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>重置二级管理员密码</cite></a>
                            </li>
                        </ul>
                    </li>
                    
                    
                    
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="制定开课计划">&#xe726;</i>
                            <cite>制定开课计划</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('创建开课计划','course-list.html')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>创建开课计划</cite></a>
                            </li>
                            
                            
                        </ul>
                    </li>

 
                  
                    
                </ul>
            </div>
        </div>
        <!-- <div class="x-slide_left"></div> -->
        <!-- 左侧菜单结束 -->
        <!-- 右侧主体开始 -->
        <div class="page-content">
            <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
                <ul class="layui-tab-title">
                    <li class="home">
                        <i class="layui-icon">&#xe68e;</i>我的桌面</li></ul>
                <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
                    <dl>
                        <dd data-type="this">关闭当前</dd>
                        <dd data-type="other">关闭其它</dd>
                        <dd data-type="all">关闭全部</dd></dl>
                </div>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <iframe src='./welcome.html' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                    </div>
                </div>
                <div id="tab_show"></div>
            </div>
        </div>
        <div class="page-content-bg"></div>
        <style id="theme_style"></style>
        <!-- 右侧主体结束 -->
        <!-- 中部结束 -->
        <script>//百度统计可去掉
            var _hmt = _hmt || []; (function() {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();</script>
    </body>

</html>