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
    <!-- where the chart will be rendered -->
    <div id="visualization" style="width: 600px; height: 400px;"></div>
    <?php
        $sdate=$_POST["SDate"];
        $edate=$_POST["EDate"];
        if($sdate=="" && $edate=="")
        {
            $sdate="0000-00-00";
            $edate="0000-00-00";
        }
    //query all records from the database
    $query = "SELECT Blood,COUNT(Blood) as Numbers FROM `request_blood` where CDATE between '$sdate' and '$edate' GROUP BY Blood ";
    //execute the query
    $result = $con->query( $query );
    //get number of rows returned
    $num_results = $result->num_rows;
    
    if( $num_results > 0){
        
    ?>
        <!-- load api -->
        <script type="text/javascript" src="http://www.google.com/jsapi"></script>
        
        <script type="text/javascript">
            //load package
            google.load('visualization', '1', {packages: ['corechart']});
        </script>
 
        <script type="text/javascript">
            function drawVisualization() {
                // Create and populate the data table.
                var data = google.visualization.arrayToDataTable([
                    ['BloodType', 'percent'],
                    <?php
                    while( $row = $result->fetch_assoc() ){
                        extract($row);
                        echo "['{$Blood}',{$Numbers}],";
                    }
                    ?>
                ]);
 
                // Create and draw the visualization.
                new google.visualization.PieChart(document.getElementById('visualization')).
                draw(data, {title:"Need Blood Completetion from <?php echo $sdate;?> to <?php echo $edate;?>"});
            }
 
            google.setOnLoadCallback(drawVisualization);
        </script>
    <?php
 
    }else{
        echo "No request found.";
    }
    ?>
            </div>
        </div>
    </div>
    <?php include("admin_footer.php"); ?>
</body>
</html>