<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>signing out</title>
</head>

<body>
<?php
include ("../config.php");
session_start();
/*$user = $_SESSION['login_user'];
$sql = "UPDATE admins SET status='offline' WHERE username='$user'";
$query = mysqli_query($db_conn, $sql);
*/if(session_destroy()) // Destroying All Sessions
{
	header("Location: index.php"); // Redirecting To Home Page
}
?>
</body>
</html>