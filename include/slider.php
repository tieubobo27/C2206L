<!-- banner -->
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<!-- Indicators-->
	
		<div class="carousel-inner">
			<?php
			$sql_slider = mysqli_query($con,"SELECT * FROM tbl_slider WHERE slider_active='1' ORDER BY slider_id");
			while($row_slider = mysqli_fetch_array($sql_slider)){ 
			?>

			<div class="carousel-item  active">
				<div class="container">
					<div class="w3l-space">
						<div class="carousel-caption p-lg-5 p-sm-4 p-3">
							<p><?php echo $row_slider['slider_caption'] ?></p>
						</div>
					</div>
				</div>
				<img src="images/<?php echo $row_slider['slider_image'] ?>" alt="">
			</div>
			<?php
			} 
			?>
		</div>
		
	</div>