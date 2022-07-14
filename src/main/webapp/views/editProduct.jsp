<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sửa thông tin</title>
<link href="http://fonts.googleapis.com/css?family=Oswald:700"
	rel="stylesheet" type="text/css" />

<!-- Custom styles for this template (imports bootstrap from LESS) -->
<link href="/ShopDienThoai/css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<header>
			<!-- logo + login -->
			<div class="row">
				<div class="col-md-4 col-sm-12">
					<h1 class="logo">
						<i class="glyphicon glyphicon-tag"></i>TH<span class="primary">Store</span>
					</h1>
				</div>
				<!-- col-md-4 -->
			</div>
		</header>

		<!-- Static navbar -->
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="/ShopDienThoai/trang-chu?page=1">Home</a></li>
						<li class="active"><a href="/ShopDienThoai/trang-chu/them">Thêm sản phẩm</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<form class="navbar-form">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search..." />
							</div>
							<button type="submit" class="btn btn-default">Search</button>
						</form>
					</ul>
				</div>
				
				<!--/.nav-collapse -->
			</div>
			
			<!--/.container-fluid -->
		</nav>
	</div>
	<div class="container">
	<h2>Sửa thông tin</h2>
				<form class="form-horizontal" action="sua" method="post" enctype="multipart/form-data">
					<input type="hidden" name="id" value="${dienThoai.id}">
					 <div class="form-group">
						<label class="control-label col-sm-2" for="email">Tên:</label>
						<div class="col-sm-10">
							<input type="text" name="name" class="form-control" id ="name"
								placeholder="Nhập tên"  value="<c:out value="${dienThoai.name}"></c:out>">
						</div>
					</div> 
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">Thông tin chi tiết:</label>
						<div class="col-sm-10">
							<textarea class="form-control" id="exampleFormControlTextarea1"
								placeholder="Nhập thông tin" name="ttChiTiet" >${dienThoai.thongtinchitiet}</textarea>
						</div>
					</div>
					<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Gía tiền:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"
								placeholder="Nhập giá tiền" name="gia" value="${dienThoai.gia}">
						</div>
					</div>
					<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Số lượng:</label>
						<div class="col-sm-10"> 
							<input type="text" class="form-control"
								placeholder="Nhập số lượng" name="soluong" value="${dienThoai.soluong}">
						</div>
					</div>
					<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Hình ảnh:</label>
						<div class="col-sm-10"> 
							<input type="file" class="form-control" name="image" accept=".png,.jpg,.jpeg">
							<br>
							<img src="data:image/jpg;base64,${dienThoai.image}" width="300" height="240">
						</div>
						
					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-info">Sửa</button>
							<a onclick="history.back()" class="btn btn-default">Quay lại</a>
						</div>
					</div>
				</form>
				</div>
	<footer>
		<p>
			THStore &copy; 2001 - <a href="#">Công nghê</a> &middot; <a
				href="#">Java</a>
		</p>
	</footer>
</body>
</html>