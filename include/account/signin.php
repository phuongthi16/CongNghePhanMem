<link rel="stylesheet" type="text/css" href="css/style-signin.css">

<?php 
if(isset($_POST['hanhdong']) && $_POST['hanhdong']=="tquat"){
	$_SESSION['hovaten']="";
$tendangnhap=(isset($tendangnhap)?$_POST["txttendangnhap"]:'');
	//$tendangnhap=$_POST["txttendangnhap"];
       // $pass=$_POST["txtpass"];
		$pass=(isset($pass)?$_POST["txtpass"]:'');
		 $strSQL="SELECT *  FROM khach_hang WHERE ten_dn = '$tendangnhap' AND mat_khau = '$pass'";
			$khachhang=mysql_query($strSQL,$ung);
			$rowDN=mysql_fetch_array($khachhang);
}
?>
<a href="#myModal" class="trigger-btn glyphicon-user" data-toggle="modal">Đăng nhập</a>
<div id="myModal" class="modal fade">
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">				
				<h4 class="modal-title">Member Login</h4>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<form action="/examples/actions/confirmation.php" method="post">
					<div class="form-group">
						<i class="fa fa-user"></i>
						<input type="text" class="form-control" placeholder="Username" required="required">
					</div>
					<div class="form-group">
						<i class="fa fa-lock"></i>
						<input type="password" class="form-control" placeholder="Password" required="required">					
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary btn-block btn-lg" value="Login">
					</div>
				</form>				
				
			</div>
			<div class="modal-footer">
				<a href="#">Forgot Password?</a>
			</div>
		</div>
	</div>
</div>     
	<script>
		function tquattaikhoan(Lenh)
		{
			formdangnhap.hanhdong.value=Lenh;
			if(confirm('bạn chắc chắn muốn thoát tài khoản..!!'))
			formdangnhap.submit()
		}
		function dangky_onsubmit(trang)
		{	
			dangky.view.value=trang;
			dangky.submit()
		}
	</script>
