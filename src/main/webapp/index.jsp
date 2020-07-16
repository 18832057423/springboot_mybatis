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
    <style>
        .ui-jqgrid .ui-jqgrid-htable .ui-th-div {
            height: 20px;
            margin-top: -3px;
        }
    </style>
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


            /*$.ajax({
               <%--url:"${pageContext.request.contextPath}/emp/queryall",--%>
               data:$("#tbody").serialize(),
               dataType:"json",
               success:function (data) {
                   $.each(data,function (index, emp) {
                        $("#tbody")  .append(
                            "<tr>"+
                            "<td>" + emp.id + "</td>"+
                            "<td>" + emp.name + "</td>"+
                            "<td>" + emp.salary +"</td>"+
                            "<td>" + emp.age + "</td>"+
                            "<td>" +
                            "<button type='button' value='添加'>添加</button>&nbsp;"+
                            "<button type='button' value='删除'>删除</button>&nbsp;"+
                            "<button type='button' value='修改'>修改</button>&nbsp;"+
                            "</td>"+
                            "<tr>"
                        );
                   });
               }

            });*/
        });
    </script>
</head>
<body>
<br><br><br><br>
<div class="col-lg-6 col-md-offset-3">
    <table id="tab" >
    </table>

    <div id="pager">
    </div>
</div>
</body>
</html>