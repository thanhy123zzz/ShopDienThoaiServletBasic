<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="author" content="Muhamad Nauval Azhar">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description"
	content="This is a login page template based on Bootstrap 5">
<title>THStore Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-sm-center h-100">
				<div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
					<div class="card shadow-lg">
						<div class="card-body p-5">
							<h1 class="fs-4 card-title fw-bold mb-4">Login</h1>
							<form method="POST" class="needs-validation" action="login">
								<div class="mb-3">
									<label class="mb-2 text-muted" for="email">Tài khoản</label> <input
										id="taikhoan" type="text" class="form-control" name="name"
										value="" required autofocus>
									<div class="invalid-feedback">Tài khoản</div>
								</div>

								<div class="mb-3">
									<div class="mb-2 w-100">
										<label class="text-muted" for="password">Password</label>
									</div>
									<input id="password" type="password" class="form-control"
										name="password" required>
									<div class="invalid-feedback">Password is required</div>
								</div>
								<c:if test="${thongBao != null}">
								<div class="alert alert-danger alert-dismissible">
									<a href="#" class="close" data-dismiss="alert"
										aria-label="close">&times;</a> ${thongBao}
								</div>
								</c:if>
								<div class="d-flex align-items-center">
									<div class="form-check"></div>

									<button type="submit" class="btn btn-primary ms-auto">
										Login</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="js/login.js"></script>
</body>
</html>