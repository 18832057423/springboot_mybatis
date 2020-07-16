<%@page contentType="text/html; UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="boot/css/bootstrap.css">
    <link rel="stylesheet" href="jqgrid/css/trirand/ui.jqgrid-bootstrap4.css">
    <script src="boot/js/jquery-3.3.1.min.js"></script>
    <script src="boot/js/bootstrap.min.js"></script>
    <script src="jqgrid/js/trirand/jquery.jqGrid.min.js"></script>
    <script src="jqgrid/js/trirand/i18n/grid.locale-cn.js"></script>
    <script>
        $(function () {
            $("#tab").jqGrid({
                url: "${pageContext.request.contextPath}/emp/queryByPager",   //访问的路径
                editurl:"${pageContext.request.contextPath}/emp/option",
                datatype: "json",    //返回数据的类型
                styleUI: "Bootstrap",
                autowidth: true,     //自适应父容器
                pager: "pager",      //分页
                caption: "数据展示",   //表头
                cellEdit: true,
                viewrecords: true,    //显示记录总条数
                rowNum: 3,
                colNames: ["Id", "姓名", "工资","年龄"],
                colModel: [
                    {name: "id",editable:true},
                    {name: "name",editable:true},
                    {name: "salary",editable:true},
                    {name: "age",editable:true}

                ],

            }).jqGrid("navGrid","#pager",{});
        });
    </script>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">用户信息系统</a>
        </div>
        <div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">欢迎：<span>     </span></a></li>

            </ul>
        </div>
    </div>



<div class="col-md-2">
    <div class="panel-group text-center" id="accordion" role="tablist" aria-multiselectable="true">
       <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
           <h4 class="panel-title">
             <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
               用户相关
             </a>
           </h4>
         </div>
         <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
           <div class="panel-body">
             <p>
                 <button class="btn btn-info" id="showUser">用户展示</button>
               </p>
               <p>
                   <button class="btn btn-danger" id="userAdd">用户添加</button>
               </p>
               <p>
                   <button class="btn btn-primary">用户修改</button>
               </p>
           </div>
         </div>
       </div>
       <div class="panel panel-default">
         <div class="panel-heading" role="tab" id="headingTwo">
           <h4 class="panel-title">
             <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
               文件相关
             </a>
           </h4>
         </div>
         <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
           <div class="panel-body">
             记录
           </div>
         </div>
       </div>
       <div class="panel panel-default">
         <div class="panel-heading" role="tab" id="headingThree">
           <h4 class="panel-title">
             <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
               其他
             </a>
           </h4>
         </div>
         <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
           <div class="panel-body">
             记录
           </div>
         </div>
       </div>
     </div>
</div>
    <div>
 <div class="col-md-6 col-md-offset-2">
        <table class="table" id="tab">
<%--            <thead>--%>
<%--            <th>--%>
<%--            <td>id</td>--%>
<%--            <td>name</td>--%>
<%--            <td>salary</td>--%>
<%--            <td>age</td>--%>
<%--            </th>--%>
<%--            </thead>--%>
<%--            <tbody>--%>
<%--            <tr>--%>
<%--                <td>1</td>--%>
<%--                <td>dfs</td>--%>
<%--                <td>12222</td>--%>
<%--                <td>18</td>--%>
<%--            </tr>--%>
<%--            </tbody>--%>
        </table>
    </div>
    <div id="pager">

    </div>
    </div>
</nav>
</body>
<style>
    .ui-jqgrid .ui-jqgrid-htable .ui-th-div {
        height: 20px;
        margin-top: -3px;
    }
</style>

</html>