<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="../js/mui.js"type="text/javascript" charset="UTF-8"></script>
	<script src="../js/mui.min.js"type="text/javascript" charset="UTF-8"></script>
	<script type="text/javascript" src="../js/echarts.js" ></script>
	<script type="text/javascript" src="../js/echarts/echarts_pc2.js" ></script>
    <!-- 引入 echarts.js -->
</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

       

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
	</body>
</html>
