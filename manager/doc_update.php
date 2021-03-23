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
		});
		});
		</script>
        
        <script src="../js/nicEdit.js" type="text/javascript"></script>
		<script type="text/javascript">
        bkLib.onDomLoaded(function() {
            new nicEditor({iconsPath : '../img/nicEditorIcons.gif'}).panelInstance('desc');
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
                                <li id="current"><a href="doctors.php">Doctors</a></li>
                                <li><a href="events.php">Events</a></li>
                                <li><a href="news.php">News</a></li>
                                <li><a href="appointment.php">Appointments</a></li>
                                <li><a href="gallery.php">Gallery</a></li>
                                <li><a href="slider.php">Slider</a></li>
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
            <!--<div id="subnav">
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
        <?php
		$id = $_GET['id'];
		$query="SELECT * FROM doctors WHERE id = $id";
		$result= mysqli_query($db_conn, $query) or die("Invalid query");
		$row = mysqli_fetch_array($result);
		?>
		<h1> Update Doctor </h1>
        <form action="<?php $_SERVER['PHP_SELF']?>" method="post">
        Doctor Name: <input type="text" name="title" value="<?php echo $row['name']; ?>"> <br><br>
        Bio: <textarea id="desc" cols="100" rows="3" name="brief"><?php echo $row['description']; ?></textarea><br><br>
        Department:<select name="dept">
        			<option><?php echo $row['departments']; ?></option>
                      <?php
						$query1="SELECT * FROM dept";
						$result1= mysqli_query($db_conn, $query1) or die("Invalid query");
						while($row1 = mysqli_fetch_array($result1)){
						?>
                        <option><?php echo $row1['name']; ?></option>
                        <?php
                }
         ?>
                      </select> <br><br>
         Specialty:<select name="spec">
        			<option><?php echo $row['specialty']; ?></option>
                      <?php
						$query1="SELECT * FROM specialty";
						$result1= mysqli_query($db_conn, $query1) or die("Invalid query");
						while($row1 = mysqli_fetch_array($result1)){
						?>
                        <option><?php echo $row1['name']; ?></option>
                        <?php
                }
         ?>
                      </select> <br><br>
        Email: <input type="mail" name="mail" value="<?php echo $row['mail']; ?>"> <br><br>
        Facebook account URL: <input type="text" name="facebook" value="<?php echo $row['facebook']; ?>"> <br><br>
        Twitter account URL: <input type="text" name="twitter" value="<?php echo $row['twitter']; ?>"> <br><br>
        <input type="submit" name="submit" value="UPDATE">
        </form>
        
		<?php
		 if (isset($_POST['submit'])){
            $name = $_POST['title'];
			$desc = $_POST['brief'];
			$spec = $_POST['spec'];
			$dept = $_POST['dept'];
			$mail = $_POST['mail'];
			$fb = $_POST['facebook'];
			$twtr = $_POST['twitter'];
            /***********************************************/
			$result = mysqli_query($db_conn,"UPDATE doctors SET name='$name', description='$desc', departments='$dept', specialty='$spec', mail='$mail', facebook='$fb', twitter='$twtr' where id='$id'");
            if ($result) echo "Doctor Profile has been updated.";
            else echo "Error: " . $result . "<br>" . mysqli_error($db_conn);
				  }
        ?>
		


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