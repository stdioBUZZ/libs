<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<title>录入图书</title>
<link rel="stylesheet" href="../../bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/admin/search.css">
<link rel="stylesheet" href="../../css/admin/navi.css">
<script src="../../bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="../../js/jquery/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="../../css/admin/modi.css">
	<style>
		#side{
			height: 60px;
			font-size: 20px;
			text-align: center;
		}
		.list-group{
			width: 150px;
		}
	</style>
</head>
<body>
	<nav>
		<ul class="nav nav-tabs">
			<li><h3 class="logo">@蛋白质</h3></li>
			<li><a href="manager_home.html">home</a></li>
			<li class="active"><a href="图书管理.html">图书管理</a></li>
			<li><a href="学生管理.html">学籍管理</a></li>
			<li><a href="用户管理.html">用户管理</a></li>
			<li><a href="消息管理.html">消息管理</a></li>
			<li><a href="缴费管理.html">缴费管理</a></li>
			<ul class="nav nav-tabs navbar-right">
			<li><a href="#"><img src="../../imgs/switch.png" width="20px" alt="切换"></a></li>
	        <li><a href="manager_home.html">退出</a></li>
	        <li><a href="">个人中心</a></li>
            </ul>
		</ul>
	</nav>
	<br>
	<div class="sidebar">
      <div class="col-sm-2">
           <div class="list-group side-bar text-center">
			   <img class="thumbnail" src="../../imgs/head/001.jpeg" width="150px">
                	<a href="图书管理.html" class="list-group-item side active">图书列表</a>
			   		<a href="录入图书.html" class="list-group-item side">录入图书</a>
                    <a href="借阅日志.html" class="list-group-item side">借阅日志</a>
		            <a href="评分管理.html" class="list-group-item side">评论管理</a>
			        <a href="类别管理.html" class="list-group-item side">类别管理</a>
                </div>      
            </div>
	</div>
	<br>
<div class="col-md-4">
   <form role="form" action="add" method="post">
		 <div class="form-group">
			<label>书名</label>
			<input type="text" class="form-control" name="bookName" placeholder="请输入名称">
			<label>作者</label>
			<input type="text" class="form-control" name="bookAuthor"  placeholder="请输入名称">
			<label>ISBN</label>
			<input type="text" class="form-control"  name="isbn" placeholder="请输入名称">
			<label>出版社</label>
			<input type="text" class="form-control" name="publisher" placeholder="说点什么吧...">
		 </div>
		 <div class="form-group">
			<label>类别</label>
			<select class="form-control" name="bookType">
				<option value="01">艺术</option>
				<option value="02">科学</option>
				<option value="03">艺术</option>
				<option value="04">艺术</option>
			</select>
			<label>数量</label>
			<div class="gw_num">
   					<em class="jian" id="minus">-</em>
  					<input type="text" value="1" class="num" id="num" name="totalNum"/>
  					<em class="add" id="add">+</em>
			</div>
			<label>价格</label>
			<input type="text" class="form-control"  placeholder="请输入价格"  name="bookPrice">
	    </div>
		<button class="btn btn-default" style="float: right;" type="submit">加入书架</button>
       </form>
	</div>
<script type="text/javascript">
$("#minus").click(function(){  
    var a = $("#num").val(); 
    if(a == 0){
    	alert("不能再减少了！");
    }
    else{
       a--;
       $("#num").val(a);
    }
});  
$("#add").click(function(){  
    var a = $("#num").val(); 
    a++;
    $("#num").val(a);
}); 
</script>
</body>
</html>