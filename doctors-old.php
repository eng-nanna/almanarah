<?php
include ("config.php");
?>
<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Elmanara Hospital | Doctors</title>
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
              <li><a href="about_us.html">About us</a></li>
              <li><a href="contact_us.php">Contact us</a></li>
            </ul>
      </aside>

    <!-- main content goes here -->
    <header class="indexHeader gradient">

      <div class="headerInfo">
        <div class="row">
          <div class="small-6 column">
            <p><i class="fa fa-map-marker"></i> <span>Address</span> : 12, California</p>
          </div>
          <div class="small-6 column">

            <div class="socialIcons_medium show-for-medium-only">
               <a href="https://www.facebook.com/pages/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89-%D8%A7%D9%84%D9%85%D9%86%D8%A7%D8%B1%D8%A9-%D8%A7%D9%84%D8%AA%D8%AE%D8%B5%D8%B5%D9%8A-%D8%A8%D8%A7%D9%84%D8%A3%D8%B3%D9%85%D8%A7%D8%B9%D9%8A%D9%84%D9%8A%D8%A9/376896095843756?fref=ts" class="animated"><span><i class="fa fa-facebook"></i></span></a>
<!--            <a href="#" class="animated"><span><i class="fa fa-twitter"></i></span></a>
-->    
              <a href="#" class="animated" id="searchBtn" data-reveal-id="searchBox"><i class="fa fa-search"></i></a>
            </div><!-- socialIcons_medium -->

            <p><i class="fa fa-phone"></i> <span>Phone</span> : 12, California</p>
          </div>
        </div>
      </div> <!-- headerInfo -->

      <div class="row indexHeaderIn">
        <div class="small-6 medium-3 column"><a id="logo" href="#"><img src="img/elmanara_logo.png"></a></div>
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
                      <li><a href="about_us.html">About us</a></li>
                      <li><a href="contact_us.php">Contact us</a></li>
                    </ul>
              </li>
            </ul>
          </nav>


        </div><!-- Nav -->
        <div class="large-2 column show-for-large-only">
          <div class="social_large">
             <a href="https://www.facebook.com/pages/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89-%D8%A7%D9%84%D9%85%D9%86%D8%A7%D8%B1%D8%A9-%D8%A7%D9%84%D8%AA%D8%AE%D8%B5%D8%B5%D9%8A-%D8%A8%D8%A7%D9%84%D8%A3%D8%B3%D9%85%D8%A7%D8%B9%D9%8A%D9%84%D9%8A%D8%A9/376896095843756?fref=ts" class="animated"><span><i class="fa fa-facebook"></i></span></a>
<!--            <a href="#" class="animated"><span><i class="fa fa-twitter"></i></span></a>
-->    
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


        <div class="medium-12 column">
 
          <h2 class="redDiamond-title"><span>Doctors</span></h2>
            <div class="filterControler">
              <a class="filter button secondary" data-filter="all">Show All</a>
              <?php
				$sql="SELECT * FROM dept";
				$result=mysqli_query($db_conn,$sql);
				while($rows=mysqli_fetch_array($result)){
				$category =  $rows['name']; 
				?>
              <a class="filter button secondary" data-filter=".<?php echo $category; ?>"><?php echo $category; ?></a>
               <?php
        }
        ?>
            </div><!-- filterControler -->
            

            <section class="doctors-section">
              <ul id="drFilterContainer">
               <?php
				$sql="SELECT * FROM doctors where departments='name'";
				$result=mysqli_query($db_conn,$sql);
				while($rows=mysqli_fetch_array($result)){
				?>
                <li class="mix category-1" data-my-order="1">
                  <div class="doctor">
                    <div class="doc-img">
                      <img src="<?php echo "img/doctors/".$rows['profile_pic']; ?>" alt="doctor image">
                    </div>
                    <div class="doc-title"><?php echo $rows['name']; ?></div>
                    <div class="doc-position"><?php echo $rows['departments']; ?></div>
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
        
        <?php
				$sql="SELECT * FROM doctors where departments='رمد'";
				$result=mysqli_query($db_conn,$sql);
				while($rows=mysqli_fetch_array($result)){
				?>
                <li class="mix category-1" data-my-order="1">
                  <div class="doctor">
                    <div class="doc-img">
                      <img src="<?php echo "img/doctors/".$rows['profile_pic']; ?>" alt="doctor image">
                    </div>
                    <div class="doc-title"><?php echo $rows['name']; ?></div>
                    <div class="doc-position"><?php echo $rows['departments']; ?></div>
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
        
              <?php
				$sql="SELECT * FROM doctors where departments='category-1'";
				$result=mysqli_query($db_conn,$sql);
				while($rows=mysqli_fetch_array($result)){
				?>
                <li class="mix category-1" data-my-order="1">
                  <div class="doctor">
                    <div class="doc-img">
                      <img src="<?php echo "img/doctors/".$rows['profile_pic']; ?>" alt="doctor image">
                    </div>
                    <div class="doc-title"><?php echo $rows['name']; ?></div>
                    <div class="doc-position"><?php echo $rows['departments']; ?></div>
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
                </li>
                
                <?php
				$sql="SELECT * FROM doctors where departments='category-2'";
				$result=mysqli_query($db_conn,$sql);
				while($rows=mysqli_fetch_array($result)){
				?>
                <li class="mix category-2" data-my-order="3">
                  <div class="doctor">
                    <div class="doc-img">
                      <img src="<?php echo "img/doctors/".$rows['profile_pic']; ?>" alt="doctor image">
                    </div>
                    <div class="doc-title"><?php echo $rows['name']; ?></div>
                    <div class="doc-position"><?php echo $rows['departments']; ?></div>
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
                </li>
              </ul> <!-- mixItContainer -->
            </section><!-- doctors-section -->
          
          
        </div><!-- column -->
        
      </div><!-- row -->
    </section> <!-- Doctors -->

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
    <script src="js/jquery.mixitup.min.js"></script>
    <script src="js/app.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
