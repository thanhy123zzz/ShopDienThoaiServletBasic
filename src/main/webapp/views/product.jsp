<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Sản phẩm</title>

<link href="http://fonts.googleapis.com/css?family=Oswald:700"
	rel="stylesheet" type="text/css" />

<!-- Custom styles for this template (imports bootstrap from LESS) -->
<link href="/ShopDienThoai/css/style.css" rel="stylesheet">

</head>

<body>

	<div class="container">

		<header>
			<div class="row">
				<div class="col-md-4 col-sm-12">
					<h1 class="logo">
						<i class="glyphicon glyphicon-tag"></i> TH <span class="primary">Store</span>
					</h1>
				</div>
				<!-- col-md-4 -->
				<div class="col-md-8 col-sm-12"></div>
				<!-- col-md-8 -->
			</div>
			<!-- row -->
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
						<li class="active"><a href="/ShopDienThoai/trang-chu/them">Thêm
								sản phẩm</a></li>
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

		<section id="" class="">
			<div class="row">
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-4">
							<img class="main-image"
								src="data:image/jpg;base64,${dienThoai.image}" />
						</div>
						<!-- col-md-4 -->
						<div class="col-md-8">
							<h2>${dienThoai.name}</h2>
							<div class="price">${dienThoai.gia}VNĐ</div>
							<hr />
							<br /> <br /> <br />
							<div class="panel-group" id="accordion" role="tablist"
								aria-multiselectable="true">
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseOne" aria-expanded="true"
												aria-controls="collapseOne"> Mô tả </a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in"
										role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body">${dienThoai.thongtinchitiet}</div>
									</div>
								</div>
							</div>
						</div>
						<!-- col-md-8 -->
					</div>
					<!-- row -->
				</div>
				<!-- col-md-8 -->
			</div>
			<!-- row -->
			<center>
				<a href="/ShopDienThoai/sua?id=${dienThoai.id}" class="btn btn-success">Sửa
					thông tin</a> <a onclick="return alertFn()"
					href="/ShopDienThoai/xoa?id=${dienThoai.id}" class="btn btn-danger">Xóa
					sản phẩm</a>
					<a onclick="history.back()" class="btn btn-default">Quay lại</a>
			</center>
		</section>


	</div>
	<!-- /container -->

	<footer>
		<p>
			THStore &copy; 2001 - <a href="#">Công nghê</a> &middot; <a
				href="#">Jva</a>
		</p>
	</footer>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript">
	function alertFn() {
		var agree = confirm("Bạn có muốn thao tác?");
		if (agree)
			return true;
		else
			return false;
	}
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
