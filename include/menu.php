<?php 
		$sql_category = mysqli_query($con,'SELECT * FROM tbl_category ORDER BY category_id DESC');
	?>
	<style >
		.wrapper { width: 980px; margin: 0 auto; } .wrapper-nav{ background: #fff; } .wrapper-nav.fixed { width: 100%; position: fixed; top: 0; left: 0; z-index: 7000; box-shadow: 0 0 5px 2px #ccc; } .wrapper-nav.fixed .nav-main { width: 980px; margin: 0 auto; } .nav-main { height: 36px; } .nav-main>ul { position: relative; width: 100%; max-width: 980px; padding: 0px; margin: 0px; } .nav-main>ul>li { list-style: none; float: left; padding: 12px 0 10px; border-bottom: solid 1px #ccc; } .nav-main>ul>li>a { color: #333; font-weight: 700; float: left; font-size: 14px; padding: 1px 3.6px; border-left: solid 1px #ccc; }
	</style>
	<div class="wrapper-nav" id="main-menu-tto">
<div class="navbar-inner">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="agileits-navi_search">
					<form action="#" method="post">
						<select id="agileinfo-nav_search" name="agileinfo_search" class="border" required="">
							<option value="">Danh mục sản phẩm</option>
							<?php
							while($row_category = mysqli_fetch_array($sql_category)) {
							?>
							<option value="<?php echo $row_category['category_id'] ?>"><?php echo $row_category['category_name'] ?></option>
							<?php
							 }
							?>
						</select>
					</form>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto text-center mr-xl-5">
						<li class="nav-item active mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link" href="index.php">Trang chủ
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<?php 
							$sql_category_danhmuc = mysqli_query($con,'SELECT * FROM tbl_category ORDER BY category_id DESC');
							while($row_category_danhmuc = mysqli_fetch_array($sql_category_danhmuc)){
						?>
						<li class="nav-item  mr-lg-2 mb-lg-0 mb-2">

							<a class="nav-link " href="?quanly=danhmuc&id=<?php echo $row_category_danhmuc['category_id'] ?>" role="button"  aria-haspopup="true" aria-expanded="false">
								<?php echo $row_category_danhmuc['category_name'] ?>
							</a>
							
						</li>
						<?php
						} 
						?>
						<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
							<?php
							$sql_danhmuctin = mysqli_query($con,"SELECT * FROM tbl_danhmuc_tin ORDER BY danhmuctin_id DESC"); 

							?>
							<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Tin Tức
							</a>
							<div class="dropdown-menu">
								<?php
								while($row_danhmuctin = mysqli_fetch_array($sql_danhmuctin)){ 
								?>
								<a class="dropdown-item" href="?quanly=tintuc&id_tin=<?php echo $row_danhmuctin['danhmuctin_id'] ?>"><?php echo $row_danhmuctin['tendanhmuc'] ?></a>
								<?php
								} 
								?>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="index.php?quanly=giohang">Giỏ Hàng</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="https://www.facebook.com/Blubber.accessories/">Fanpage Facebook</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
		
	</div>
	</div>

	<!-- //navigation -->