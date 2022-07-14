<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link href="http://fonts.googleapis.com/css?family=Oswald:700"
	rel="stylesheet" type="text/css" />

<!-- Custom styles for this template (imports bootstrap from LESS) -->
<link href="css/style.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
				<div class="col-md-8 col-sm-12">
					<!-- Nút đăng nhập -->
					<form class="form-inline" action="login" method="get">
						<button type="submit" class="btn btn-default">Đăng xuất</button>
					</form>
				</div>
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
						<form class="navbar-form" action="tim-kiem" method="post">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search..." name ="find" />
							</div>
							<button type="submit" class="btn btn-default">Search</button>
						</form>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.container-fluid -->
		</nav>

		<!-- Main component for a primary marketing message or call to action -->
		<div class="jumbotron">
			<!-- Nav tabs -->
			<ul class="tablist" role="tablist">
				<li role="presentation" class="active"><a href="#featured-item"
					aria-controls="featured-item" role="tab" data-toggle="tab">Sản phẩm thịnh hành</a></li>
				<li role="presentation"><a href="#best-seller"
					aria-controls="best-seller" role="tab" data-toggle="tab">Sản phẩm bán chạy</a></li>
				<li role="presentation"><a href="#discount"
					aria-controls="discount" role="tab" data-toggle="tab">Sản phẩm đang giảm giá</a></li>
				<li role="presentation"><a href="#gift-idea"
					aria-controls="gift-idea" role="tab" data-toggle="tab">Sản phẩm sắp ra mắt</a></li>
				<li role="presentation"><a href="#premium"
					aria-controls="premium" role="tab" data-toggle="tab">Quà tặng khách hàng</a></li>		
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="featured-item">
					<div class="tab-text">
						<h2>Iphone 12 Pro</h2>
						<p>Trong những tháng cuối năm 2020, Apple đã chính thức giới 
						thiệu đến người dùng cũng như iFan
						thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, 
						thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và
						một trong số đó chính là iPhone 12 Pro 64GB.</p>
					</div>
					<!-- tab-text -->
					<img class="slide-img" src="img/12.png" />
				</div>
				<div role="tabpanel" class="tab-pane" id="best-seller">
					<div class="tab-text">
						<h2>Iphone 11 Series</h2>
						<p>Apple mặc dù đã ngừng sản xuất siêu phẩm iPhone 11 nhưng vẫn chưa bao giờ 11 Series hết "hot", trong đó phiên bản iPhone 11 64GB 
						có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ, cạnh tranh được với tất cả các đối thủ trong tầm giá. Chính vì điều đó có lẽ Iphone 11 vẫn tiếp tục là sản phẩm được các bạn trẻ săn đón trong năm nay</p>
					</div>
					<!-- tab-text -->
					<img class="slide-img" src="img/11.png" />
				</div>
				<div role="tabpanel" class="tab-pane" id="discount">
					<div class="tab-text">
						<h2>Oppo Reno 7</h2>
						<p>OPPO Reno7 4G ra mắt với một diện mạo vô cùng nổi bật và bộ thông số ấn tượng cả về hiệu suất lẫn khả năng chụp ảnh, nhằm giúp khách hàng có thêm lựa chọn trong phân khúc tầm trung. Nhưng giờ đây còn đặc biệt hơn khi THStore đang giảm lên đến 20% chỉ còn với giá 8.550.000</p>
					</div>
					<!-- tab-text -->
					<img class="slide-img" src="img/reno7.jpg" />
				</div>
				<div role="tabpanel" class="tab-pane" id="premium">
					<div class="tab-text">
						<h2>Xiaomi Watch S1 Active</h2>
						<p>Trải nghiệm đeo đồng hồ nhẹ và thoải mái luôn là yếu tố quan trọng hàng đầu với các sản phẩm của Xiaomi. Với Xiaomi Watch S1 Active thì yếu tố thiết kế thời trang cũng được chú ý để bạn có thể tự tin hơn khi sử dụng đồng hồ trong đời sống hàng ngày như tập thể dục hoặc mang đi làm việc.
						 Sản phẩm sẽ được tri ân cho những khách hàng thân thiết nhất của THStore.</p>
					</div>
					<!-- tab-text -->
					<img class="slide-img" src="img/dho.png" />
				</div>
				<div role="tabpanel" class="tab-pane" id="gift-idea">
					<div class="tab-text">
						<h2>Iphone 14 Pro Pink</h2>
						<p>Có iPhone 14 chưa? Cho tới thời điểm hiện tại, Apple chưa chính thức cho ra mắt dòng sản phẩm iPhone 14 mới năm 2022. Theo 9to5Mac, iPhone 14 đã bắt đầu giai đoạn đầu tiên của quá trình sản xuất iPhone 14. Với các dòng iPhone thế hệ tước, Apple thường bắt đầu quá trình sản xuất thử nghiệm vào cuối tháng 2 trước khi ra mắt chính thức là tháng 9 hoặc tháng 10.</p>>
					</div>
					<!-- tab-text -->
					<img class="slide-img" src="img/iphone-14-hong.png" />
				</div>
			</div>
		</div>
		<!-- jumbotron -->

		<section id="products" class="">
			<div class="row">
			<c:if test="${ThongBao!=''}">
			<center>
				<strong>${ThongBao}</strong>
				</center>
			</c:if>
				<c:if test="${trangthai ==true}">
					<div class="alert alert-danger alert-dismissible">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						${thongBao}
					</div>
				</c:if>
				<c:forEach var="i" items="${dienThoais}">
					<div class="col-md-4">
						<div class="thumbnail">
							<img src="data:image/jpg;base64,${i.image}" width="300"
								height="240">
							<div class="caption">
								<h4 class="pull-right">${i.gia}VNĐ</h4>
								<h4>
									<a href="/ShopDienThoai/trang-chu/thong-tin?id=${i.id}">${i.name}</a>
								</h4>
								<p id="shrinkMe" class="shrinkable">${i.thongtinchitiet}</p>
								<center>
									<a 
										href="/ShopDienThoai/sua?id=${i.id}" class="btn btn-success">Sửa
										thông tin</a> <a onclick="return alertFn()" href="/ShopDienThoai/xoa?id=${i.id}"
										class="btn btn-danger">Xóa sản phẩm</a>
								</center>
							</div>

						</div>
						<!-- thumbnail -->

					</div>
					<!-- col-md-4 -->
				</c:forEach>

			</div>
			<nav aria-label="...">
				<center>
					<ul class="pagination pagination-lg">
						<c:forEach begin="1" end="${size}" var="page">
							<li class="page-item"><a class="page-link"
								href="/ShopDienThoai/trang-chu?page=${page}">${page}</a></li>
						</c:forEach>
					</ul>
				</center>
			</nav>
			<!-- row -->
		</section>

	</div>
	<!-- /container -->
	<footer>
		<p>
			THStore &copy; 2001 - <a href="#">Công nghê</a> &middot; <a
				href="#">Java</a>
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
		var len = 39;
		var shrinkables = document.getElementsByClassName('shrinkable');
		if (shrinkables.length > 0) {
		    for (var i = 0; i < shrinkables.length; i++){
		        var fullText = shrinkables[i].innerHTML;
		        if(fullText.length > len){
		            var trunc = fullText.substring(0, len).replace(/\w+$/, '');
		            var remainder = "";
		            var id = shrinkables[i].id;
		            remainder = fullText.substring(len, fullText.length);
		            shrinkables[i].innerHTML = '<span>' + trunc + '<span class="hidden" id="' + id + 'Overflow">'+ remainder +'</span></span>&nbsp;<a style="text-decoration: none">...</a>';
		        }
		    }
		}
		
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
		
	</script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>