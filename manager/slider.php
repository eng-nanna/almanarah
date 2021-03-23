<?php
session_start();
include ("../config.php");
if(!isset($_SESSION["login_user"]))
{
    header("Location: index.php");
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>Admin CPanel</title>
        
        <link rel="shortcut icon" href="img/favicon.ico">
       
        <!-- CSS Reset -->
		<link rel="stylesheet" type="text/css" href="reset.css" media="screen" />
       
        <!-- Fluid 960 Grid System - CSS framework -->
		<link rel="stylesheet" type="text/css" href="grid.css" media="screen" />
		
        <!-- IE Hacks for the Fluid 960 Grid System -->
        <!--[if IE 6]><link rel="stylesheet" type="text/css" href="ie6.css" tppabs="http://www.xooom.pl/work/magicadmin/css/ie6.css" media="screen" /><![endif]-->
		<!--[if IE 7]><link rel="stylesheet" type="text/css" href="ie.css" tppabs="http://www.xooom.pl/work/magicadmin/css/ie.css" media="screen" /><![endif]-->
        
        <!-- Main stylesheet -->
        <link rel="stylesheet" type="text/css" href="styles.css" media="screen" />
        
        <!-- WYSIWYG editor stylesheet -->
        <link rel="stylesheet" type="text/css" href="jquery.wysiwyg.css" media="screen" />
        
        <!-- Table sorter stylesheet -->
        <link rel="stylesheet" type="text/css" href="tablesorter.css" media="screen" />
        
        <!-- Thickbox stylesheet -->
        <link rel="stylesheet" type="text/css" href="thickbox.css" media="screen" />
        
        <!-- Themes. Below are several color themes. Uncomment the line of your choice to switch to different color. All styles commented out means blue theme. -->
        <link rel="stylesheet" type="text/css" href="theme-blue.css" media="screen" />
        <!--<link rel="stylesheet" type="text/css" href="css/theme-red.css" media="screen" />-->
        <!--<link rel="stylesheet" type="text/css" href="css/theme-yellow.css" media="screen" />-->
        <!--<link rel="stylesheet" type="text/css" href="css/theme-green.css" media="screen" />-->
        <!--<link rel="stylesheet" type="text/css" href="css/theme-graphite.css" media="screen" />-->
        
		<!-- JQuery engine script-->
		<script src="https://code.jquery.com/jquery-1.7.2.js"></script>
        
		<!-- JQuery WYSIWYG plugin script -->
		<script type="text/javascript" src="jquery.wysiwyg.js"></script>
        
        <!-- JQuery tablesorter plugin script-->
		<script type="text/javascript" src="jquery.tablesorter.min.js"></script>
        
		<!-- JQuery pager plugin script for tablesorter tables -->
		<script type="text/javascript" src="jquery.tablesorter.pager.js"></script>
        
		<!-- JQuery password strength plugin script -->
		<script type="text/javascript" src="jquery.pstrength-min.1.2.js" ></script>
        
		<!-- JQuery thickbox plugin script -->
		<script type="text/javascript" src="thickbox.js"></script>
        
        <!-- Initiate WYIWYG text area -->
		<script type="text/javascript">
			$(function()
			{
			$('#wysiwyg').wysiwyg(
			{
			controls : {
			separator01 : { visible : true },
			separator03 : { visible : true },
			separator04 : { visible : true },
			separator00 : { visible : true },
			separator07 : { visible : false },
			separator02 : { visible : false },
			separator08 : { visible : false },
			insertOrderedList : { visible : true },
			insertUnorderedList : { visible : true },
			undo: { visible : true },
			redo: { visible : true },
			justifyLeft: { visible : true },
			justifyCenter: { visible : true },
			justifyRight: { visible : true },
			justifyFull: { visible : true },
			subscript: { visible : true },
			superscript: { visible : true },
			underline: { visible : true },
            increaseFontSize : { visible : false },
            decreaseFontSize : { visible : false }
			}
			} );
			});
        </script>
        
        <!-- Initiate tablesorter script -->
        <script type="text/javascript">
			$(document).ready(function() { 
				$("#myTable") 
				.tablesorter({
					// zebra coloring
					widgets: ['zebra'],
					// pass the headers argument and assing a object 
					headers: { 
						// assign the sixth column (we start counting zero) 
						6: { 
							// disable it by setting the property sorter to false 
							sorter: false 
						} 
					}
				}) 
			.tablesorterPager({container: $("#pager")}); 
		}); 
		</script>
        
        <!-- Initiate password strength script -->
		<script type="text/javascript">
			$(function() {
			$('.password').pstrength();
			});
        </script>
        
        <script type="text/javascript">
		$( document ).ready(function() {
		$(function() {
			$('#showdiv1').click(function() {
				$('div[id^=div]').hide();
				$('#div1').show();
			});
			$('#showdiv2').click(function() {
				$('div[id^=div]').hide();
				$('#div2').show();
			});	
		});
		});
		</script>
	</head>
	<body>
    	<!-- Header -->
        <div id="header">
            <!-- Header. Status part -->
            <div id="header-status">
                <div class="container_12">
                    <div class="grid_8">
					&nbsp;
                    </div>
                    <div class="grid_4">
                        <a href="signout.php" id="logout">
                        Logout
                        </a>
                    </div>
                </div>
                <div style="clear:both;"></div>
            </div> <!-- End #header-status -->
            
            <!-- Header. Main part -->
            <div id="header-main">
                <div class="container_13">
                    <div class="grid_13">
                        <div id="logo">
                            <ul id="nav">
                                <li><a href="home.php">Departments</a></li>
                                <li><a href="specialty.php">specialties</a></li>
                                <li><a href="doctors.php">Doctors</a></li>
                                <li><a href="events.php">Events</a></li>
                                <li><a href="news.php">News</a></li>
                                <li><a href="appointment.php">Appointments</a></li>
                                <li><a href="gallery.php">Gallery</a></li>
                                <li id="current"><a href="slideer.php">Slider</a></li>
                                <li><a href="partners.php">Partners</a></li>
                                <li><a href="contributor.php">contributors</a></li>
                                <li><a href="administrators.php">Administrators</a></li>
                                <li><a href="about_us.php">About us</a></li>
                                <li><a href="contacts.php">Contacts</a></li>
                                <li><a href="inbox.php">Inbox</a></li>
                            </ul>
                        </div><!-- End. #Logo -->
                    </div><!-- End. .grid_12-->
                    <div style="clear: both;"></div>
                </div><!-- End. .container_12 -->
            </div> <!-- End #header-main -->
            <div style="clear: both;"></div>
            <!-- Sub navigation -->
            <div id="subnav">
                <div class="container_12">
                    <div class="grid_12">
                        <ul>
                            <li><a id="showdiv1">Add images</a></li>
                            <li><a id="showdiv2">Remove images</a></li>
                        </ul>
                        
                    </div><!-- End. .grid_12-->
                </div><!-- End. .container_12 -->
                <div style="clear: both;"></div>
            </div> <!-- End #subnav -->
        </div> <!-- End #header -->
        
		<div class="container_12">
        <div id="div1">
       
        <h1> Add images </h1>
        <form action="<?php $_SERVER['PHP_SELF']; ?>" method="post" enctype="multipart/form-data">
        <input type="file" name="files"> <br><br>
        <input type="submit" name="submit" value="ADD">
        </form>
        </body>
        </html>
        
        <?php
		$valid_formats = array("jpg", "png", "gif", "zip", "bmp");
        $max_file_dim = 950;
        $path = "images/uploads/"; // Upload directory

        if (isset($_POST['submit'])){
			$pic = $_FILES['files']['name'];
            if ($_FILES['files']['error'] == 4) {
                continue; // Skip file if any error found
            }	       
            if ($_FILES['files']['error'] == 0) {
                list($width,$height) = getimagesize($_FILES["files"]["tmp_name"]);	           
                if ($height < $max_file_dim || $width < 1000) {
                    echo "$pic is too small! Image dimensions must be at least 1000 * 950";
                }
                elseif( ! in_array(pathinfo($pic, PATHINFO_EXTENSION), $valid_formats) ){
                    echo "$pic is not a valid format";
                    }
            else{ // No error found! Move uploaded files 
                  if(move_uploaded_file($_FILES["files"]["tmp_name"], $path.$pic)) {
                      $result = mysqli_query($db_conn,"INSERT INTO uploads (name,gallery) VALUES ('$pic','slider')");
                  if ($result) echo "New image has been added";
                  else echo "Error: " . $result . "<br>" . mysqli_error($db_conn);
                       
                        }
                    }
                }
	        }
        ?>
        </div>
        <div id="div2" style="display:none;">
        <?php
		$sql="SELECT * FROM uploads where gallery = 'slider'";
		$result=mysqli_query($db_conn,$sql);
		$count=mysqli_num_rows($result);
		?>

		<table width="600" border="0" cellspacing="1" cellpadding="0">
        <tr>
        <td><form name="form1" method="post" action="" onSubmit="return validate();">
        <table  bgcolor="#FFFFFF" width="500" border="0" cellpadding="3" cellspacing="1">
        <tr>
        <td>&nbsp;</td>
        <td colspan="4"><h1>Delete images</h1> </td>
        </tr>
        <tr><td></td></tr>
        <tr>
        <td style=" width:10%"></td>
        <td><strong>name</strong></td>
        <td><strong>image</strong></td>
        </tr>
        
        <?php
        while($rows=mysqli_fetch_array($result)){
			$img = "images/uploads/".$rows['name'];
        ?>
        
        <tr>
        <td><input name="checkbox[]" type="checkbox" id="checkbox[]" 
        value="<?php echo $rows['id']; ?>"></td>
        <td><?php echo $rows['name']; ?></td>
        <td><img src="images/uploads/<?php echo $rows['name']; ?>" height="60" width="100" /></td>
        </tr>
        
        <?php
        }
        ?>
        
        <tr>
        <td><input name="delete" type="submit" id="delete" value="Delete"></td>
        </tr>
        
        <?php
        
        // Check if delete button active, start this
        if(isset($_POST['delete'])){
        for($i=0;$i<count($_POST['checkbox']);$i++){
        $del_id=$_POST['checkbox'][$i];
		unlink($img);
        $sql = "DELETE FROM uploads WHERE id='$del_id'";
        $result = mysqli_query($db_conn,$sql);
        }
        if($result){
        	echo "<meta http-equiv=\"refresh\" content=\"0;URL=slider.php\">";
        }
        }
        mysqli_close($db_conn);
        ?>
        </table>
        </form>
        </td>
        </tr>
        </table>
        </div>
            <div style="clear:both;"></div>

         
        </div> <!-- End .container_12 -->
		
           
        <!-- Footer -->
        <div id="footer">
        	<div class="container_12">
            	<div class="grid_12">
                	<!-- You can change the copyright line for your own -->
                	 <p>
            EIADS - INNOVA ©2015 all rights reserved
          </p>
        		</div>
            </div>
            <div style="clear:both;"></div>
        </div> <!-- End #footer -->
	</body>
</html>