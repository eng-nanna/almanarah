<?php
include ("config.php");
?>
<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Elmanara Hospital | Departments</title>
    <link rel="shortcut icon" href="img/favicon.ico">
    <link rel="stylesheet" href="css/foundation.min.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/jquery.slick/1.5.0/slick.css"/>
    <link rel="stylesheet" href="css/animate.css" />
    <link rel="stylesheet" href="css/style.css" />
    <script src="js/vendor/modernizr.js"></script>
    <!--[if gte IE 9]>
      <style type="text/css">
        .gradient {
          filter: none;
        }
      </style>
    <![endif]-->
  </head>
  <body>

    <div class="off-canvas-wrap" data-offcanvas>
      <div class="inner-wrap">

      

      <!-- Off Canvas Menu -->
      <aside class="left-off-canvas-menu">

        <!-- Mobile Menu Start -->

            <ul class="side-nav mobileNav">
              <li><a href="index.php">Home</a></li>
              <li><a href="departments.php">Departments</a></li>
              <li><a href="doctors.php">Doctors</a></li>
              <li><a href="events.php">Events</a></li>
              <li><a href="news.php">News</a></li>
              <li><a href="appointment.php">Appointments</a></li>
              <li><a href="albums.php">Gallery</a></li>
              <li><a href="about_us.php">About us</a></li>
              <li><a href="contact_us.php">Contact us</a></li>
            </ul>

    </aside>

    <!-- main content goes here -->
    <header class="indexHeader gradient">

      <div class="headerInfo">
        <div class="row">
          <div class="small-6 column">
           <?php
				$sql="SELECT * FROM contacts where type = 'Address'";
				$result=mysqli_query($db_conn,$sql);
				$rows=mysqli_fetch_array($result);
				?>
            <p><i class="fa fa-map-marker"></i> <span>Address</span><a href="https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%85%D9%86%D8%A7%D8%B1%D8%A9+%D8%A7%D9%84%D8%AA%D8%AE%D8%B5%D8%B5%D9%8A+%D8%A8%D8%A7%D9%84%D8%A3%D8%B3%D9%85%D8%A7%D8%B9%D9%8A%D9%84%D9%8A%D8%A9%E2%80%AD/@30.6123984,32.2728967,17z/data=!3m1!4b1!4m7!1m4!3m3!1s0x14f8597ac1a7b461:0xbe8d65082f35bad6!2z2YXYs9iq2LTZgdmJINin2YTZhdmG2KfYsdipINin2YTYqtiu2LXYtdmKINio2KfZhNij2LPZhdin2LnZitmE2YrYqQ!3b1!3m1!1s0x14f8597ac1a7b461:0xbe8d65082f35bad6?hl=en-US" target="_blank"> : <?php echo $rows['content'];?></a></p>
            </div>
          <div class="small-6 column">

            <div class="socialIcons_medium show-for-medium-only">
            <?php
				$sql="SELECT * FROM contacts where type = 'Facebook'";
				$result=mysqli_query($db_conn,$sql);
				$rows=mysqli_fetch_array($result);
				?>
               <a href="<?php echo $rows['content'];?>" class="animated"><span><i class="fa fa-facebook"></i></span></a>
               <?php
				$sql="SELECT * FROM contacts where type = 'Twitter'";
				$result=mysqli_query($db_conn,$sql);
				$rows=mysqli_fetch_array($result);
				?>
            <a href="<?php echo $rows['content'];?>" class="animated"><span><i class="fa fa-twitter"></i></span></a>
              <a href="#" class="animated" id="searchBtn" data-reveal-id="searchBox"><i class="fa fa-search"></i></a>
            </div><!-- socialIcons_medium -->
            <?php
				$sql="SELECT * FROM contacts where type = 'Telephone'";
				$result=mysqli_query($db_conn,$sql);
				$rows=mysqli_fetch_array($result);
				?>

            <p><i class="fa fa-phone"></i> <span>Phone</span> : <?php echo $rows['content'];?></p>
          </div>
        </div>
      </div> <!-- headerInfo -->

      <div class="row indexHeaderIn">
        <div class="small-6 medium-3 column"><a id="logo" href="http://almanarahospital.com/"><img src="img/elmanara_logo.png"></a></div>
        <div class="small-6 medium-9 large-7 column">

          <nav class="hide-for-small-only">
            <ul class="button-group pc-menu">
              <li><a href="index.php">Home</a></li>
              <li><a href="departments.php">Departments</a></li>
              <li><a href="doctors.php">Doctors</a></li>
              <li><a href="events.php">Events</a></li>
              <li><a href="news.php">News</a></li>
              <li><a href="appointment.php">Appointments</a></li>
              <li><a href="albums.php">Gallery</a></li>
              <li class="hasSub"><a>About</a>
              	<ul class="sub-menu">
                      <li><a href="about_us.php">About us</a></li>
                      <li><a href="contributor.php">contributors</a></li>
                      <li><a href="contact_us.php">Contact us</a></li>
                    </ul>
              </li>
            </ul>
          </nav>

        </div><!-- Nav -->
        <div class="large-2 column show-for-large-only">
          <div class="social_large">
            <?php
				$sql="SELECT * FROM contacts where type = 'Facebook'";
				$result=mysqli_query($db_conn,$sql);
				$rows=mysqli_fetch_array($result);
				?>
               <a href="<?php echo $rows['content'];?>" class="animated" target="_blank"><span><i class="fa fa-facebook"></i></span></a>
               <?php
				$sql="SELECT * FROM contacts where type = 'Twitter'";
				$result=mysqli_query($db_conn,$sql);
				$rows=mysqli_fetch_array($result);
				?>
            <a href="<?php echo $rows['content'];?>" class="animated" target="_blank"><span><i class="fa fa-twitter"></i></span></a>
                  <a href="#" class="animated" id="searchBtn" data-reveal-id="searchBox"><span><i class="fa fa-search"></i></span></a>
          </div><!-- social_large -->
        </div>

        <div class="small-6 column show-for-small-only">
          <div class="mobTrigger">
            <a class="left-off-canvas-toggle" href="#"> Menu <i class="fa fa-list-ul"></i></a> 
          </div><!-- mobTrigger -->
        </div>

      </div>
    </header> <!-- mainHeader -->

    <section class="introContainer innerPages">
      <div class="innerPageImage">
        <img src="img/about_us.jpg" alt="about us">      
      </div><!-- innerPageImage -->
    </section><!-- introContainer -->



<!-- 
  /* ==========================|  Content Start  |========================= */
-->

    <section class=" innerSection">
      <div class="row">

        <sidebar class="medium-4 column innerSidebar medium-push-8">
         <?php
		 	$id = $_GET['id'];
			$query="SELECT * FROM dept WHERE id = $id";
			$result= mysqli_query($db_conn, $query) or die("Invalid query");
			$row = mysqli_fetch_array($result)
			?>
          <img src="img/<?php echo $row['pic'];?>" alt="doctors" class="th">
        </sidebar><!-- innerSidebar -->
		
        <div class="medium-8 column medium-pull-4">
          <h2 class="redDiamond-title"><span><?php echo $row['name'];?></span></h2>
          <p>
           <?php echo $row['description'];?>
          </p>
        </div>
        
      </div>      
    </section> <!-- about-us -->

    <footer class="mainFooter">
      <div class="row">
        <div class="medium-12 column">
          <p>
            EIADS - INNOVA ©2015 all rights reserved
          </p>
        </div>
      </div>
    </footer>

    <div id="searchBox" class="reveal-modal" data-reveal aria-labelledby="Search" aria-hidden="true" role="dialog">
      <h2 id="modalTitle">Search</h2>
      <script>
  (function() {
    var cx = '009701266569637614435:qgvr9oafw7w';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
        '//cse.google.com/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
  })();
</script>
<gcse:search></gcse:search>
      <a class="close-reveal-modal" aria-label="Close">&#215;</a>
    </div><!-- searchBox -->

  <!-- close the off-canvas menu -->
  <a class="exit-off-canvas"></a>

  </div>
</div>
    
    

    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/jquery.slick/1.5.0/slick.min.js"></script>
    <script src="js/app.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
