<?php
include ("config.php");
?>
<section class="doctors-section">
              <ul id="drFilterContainer">
               <?php		   
			   $result = $_POST['selected'];
			   if ($result == "Show All"){
				   $sql="SELECT * FROM doctors";
			   }
			   else{
			   $sql="SELECT * FROM doctors where departments='$result' || specialty='$result'";
			   }
			   $result=mysqli_query($db_conn,$sql);
			   while($rows=mysqli_fetch_array($result)){
					
					?>
					<li>
					  <div class="doctor">
						<div class="doc-img">
						  <img src="<?php echo "img/doctors/".$rows['profile_pic']; ?>" alt="doctor image">
						</div>
						<div class="doc-title"><?php echo $rows['name']; ?></div>
						<div class="doc-position"><?php echo $rows['departments']; ?></div>
                        <div class="doc-position"><?php echo $rows['specialty']; ?></div>
						<div class="doc-info">
	
						  <p><?php echo $rows['description']; ?></p>
	
						  <div class="doc-social">
							 <a href="<?php echo $rows['mail']; ?>" class="doc-envelope"><i class="fa fa-envelope"></i></a>
							<a href="<?php echo $rows['facebook']; ?>" class="doc-facebook"><i class="fa fa-facebook"></i></a>
							<a href="<?php echo $rows['twitter']; ?>" class="doc-twitter"><i class="fa fa-twitter"></i></a>
						  </div>
						</div>
					  </div><!-- doctor item -->
					  <?php
					}			   
        ?>
        
        
              </ul> <!-- mixItContainer -->
            </section><!-- doctors-section -->
         