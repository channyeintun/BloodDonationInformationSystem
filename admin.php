<?php
session_start();
include("config.php");
?>
<!DOCTYPE html>

<html lang="en">

<head>

	<?php include("head.php");?>

</head>

<body>

<?php include("top_nav.php"); ?>

    <!-- Navigation -->
   

    <!-- Page Content -->
    <div class="container" style="margin-top:70px;">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header text-primary"><i class='fa fa-user-md'></i> Admin Login
                  
                </h1>
              
            </div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
				<?php
				include_once("config.php");
				$result = mysqli_query($con, "SELECT * from users");
				$row = mysqli_fetch_array($result);
				if(isset($_POST["submit"]))
					{
						if (count($_POST) > 0) {
						if($_POST["user"]=="admin"&&$_POST["pass"]==$row["password"])
						{
							 $_SESSION['usertype'] ='admin';
							 $_SESSION['username']='admin';
							 ?>
							 <script> location.replace("admin_inbox.php"); </script>
							 <?php
						}
						else
						{
							echo "<div class='alert alert-danger'><b>Error</b> User Name and Password Incorrect.</div>";
						}
					}
					}
				?>
					<form role="form" action="admin.php" method="post">
			    	  	<div class="form-group">
							 <label for="user_name" class="text-primary">User Name</label>
			    		    <input class="form-control" name="user"  id="user" type="text" required>
			    		</div>
			    		<div class="form-group">
							<label for="pass" class="text-primary">Password</label>
			    			<input class="form-control" id="pass" name="pass" type="password" value="" required>
			    		</div>
						
						
			    		<button class="btn btn-primary pull-right" name="submit" type="submit"><i class="fa fa-sign-in"></i> Login Here</button>
			      	</form>
				</div>
				<div class="col-md-3"></div>
			</div>
        </div>
        <!-- /.row -->


       

        <!-- Footer -->
       <?php include"footer.php";?>
  
        </div>
      
  
</body>

</html>
