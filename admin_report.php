<?php
session_start();
include("config.php");
 if(!isset($_SESSION['usertype']))
 {
	 header("location:admin.php");
 }
?>
<!DOCTYPE html>
<html lang="en">
    <head>
         <?php include("admin_head.php");?>
    </head>
<body style="font-family: Arial;border: 0 none;">
<?php include("admin_topnav.php"); ?>
<div class="container"  style='margin-top:70px;'>
	<div class="row">
		<div class="col-sm-3">
			<?php include("admin_side_nav.php");?>
		</div>
		<div class="col-sm-9" >
			<h3 class="text-primary"><i class="fa fa-envelope"></i> Need Blood Report </h3><hr>   
            <div class="row">
            <div class="col-md-6">
            <form method='post' action="admin_report_view.php">
			        <div class="form-group">
				        <label for="SDate">Start Date</label>
				        <input type="text" name="SDate"  id="SDate" class="form-control DATES">
                        <label for="EDate">End Date</label>
				        <input type="text" name="EDate"  id="EDate" class="form-control DATES">
			        </div>
                    <div class="form-group">
                        <button type='submit' class='btn btn-primary' name='submit'><i class="fa fa-pie-chart" aria-hidden="true"></i> Show Report</button>
                    </div>
            </form>       
            </div>
            </div>
    <?php include("admin_footer.php"); ?>
</body>
</html>