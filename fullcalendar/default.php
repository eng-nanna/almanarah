<?php
session_start();
include ("../config.php");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<link href='fullcalendar.css' rel='stylesheet' />
<link href='fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='lib/moment.min.js'></script>
<script src='lib/jquery.min.js'></script>
<script src='fullcalendar.min.js'></script>
<script>

	$(document).ready(function() {

		$('#calendar').fullCalendar({
			editable: true,
			eventLimit: true, // allow "more" link when too many events
			events: [
			<?php
			$sql="SELECT * FROM events";
			$result=mysqli_query($db_conn,$sql);
			$count=mysqli_num_rows($result);
			while($rows=mysqli_fetch_array($result)){
			?>
				{
					title: '<?php echo $rows['title']; ?>',
					start: '<?php echo $rows['start']; ?>',
					end: '<?php echo $rows['end']; ?>',
					url: '<?php echo $rows['url']; ?>'
				},
				  <?php
        }
        ?>
			]
		});
		
	});

</script>
<style>

	body {
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}

	#calendar {
		max-width: 900px;
		margin: 0 auto;
	}

</style>
</head>
<body>

	<div id='calendar'></div>

</body>
</html>
