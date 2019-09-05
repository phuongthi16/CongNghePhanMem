<link rel="stylesheet" type="text/css" href="css/style-header.css">

<div class="top-header">
	<div class="row">
		<div class="col-sm-4">
			<div class="logo"><img src="images/logo.png"></div>
		</div>
		<div class="col-sm-5">
			<?php include('include/search/search.php') ?>
		</div>
		<div class="col-sm-3">
			<div class="account">
				<div class="account-user">
					<a href="#myModal" class="trigger-btn glyphicon-u" data-toggle="modal">Click to Open Login Modal</a>
					<a data-fancybox="gallery" href="include/account/signin.php"><span class="glyphicon glyphicon-user"></span> Đăng nhập</a>
				</div>
				<div class="acount-login">
					<a data-fancybox="gallery" href="include/account/signup.php"><span class="glyphicon glyphicon-log-in"></span> Đăng ký</a>
				</div>
			</div>
			<div class="shopping-cart">
				<a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Giỏ hàng</a>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<nav class="navbar">
		<div class="container-fluid ">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span> 
				</button>
				<a href="#"><span class="glyphicon glyphicon-home"></span></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="#">Trang chủ</a></li>
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Hoa chúc mừng<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Hoa tặng Mẹ</a></li>
							<li><a href="#">Hoa tặng Thầy cô</a></li>
							<li><a href="#">Hoa tặng Người yêu</a></li> 
						</ul>
					</li>
					<li><a href="#">Hoa tang lễ</a></li> 
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Hoa sự kiện<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Hoa cưới</a></li>
							<li><a href="#">Hoa khai trương</a></li>
							<li><a href="#">Phụ kiện</a></li> 
						</ul>
					</li>
					<li><a href="#">Hướng dẫn</a></li> 
					<li><a href="#">Liên hệ</a></li> 
				</ul>
			</div>
		</div>
	</nav>
</div>
<div class="slidebar">
	<img class="mySlides" src="images/banner2.jpg" style="width:100%">
	<img class="mySlides" src="images/banner1.jpg" style="width:100%">
	<img class="mySlides" src="images/banner3.jpg" style="width:100%">
</div>
</div>

<script>
	var myIndex = 0;
	carousel();

	function carousel() {
		var i;
		var x = document.getElementsByClassName("mySlides");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";  
		}
		myIndex++;
		if (myIndex > x.length) {myIndex = 1}    
			x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000); // Change image every 2 seconds
}
</script>
