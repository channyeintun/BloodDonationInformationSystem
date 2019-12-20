<?php
session_start();
include("config.php");
$_SESSION["userId"] = 1;
include_once("config.php");

if (count($_POST) > 0) {
    $result1 = mysqli_query($con, "SELECT * from users WHERE userId='" . $_SESSION["userId"] . "'");
    $row = mysqli_fetch_array($result1);
    if ($_POST["currentPassword"] == $row["password"]) {
        mysqli_query($con, "UPDATE users set password='" . $_POST["newPassword"] . "' WHERE userId=" . $_SESSION["userId"] );
        $message = "Password Changed";
    } else
        $message = "Current Password is not correct";
}
?>
<html>
<head>
<title>Change Password</title>
<style>
.inner-container {
    width: 300px;
    background:rgba(255,255,255,0.8);
    margin: 30px 20px 20px 120px;
    padding: 20px 20px 20px 20px;
    border-radius:10% 10% 10% 10%;
    font-size:14px;
    box-sizing:border-box;
    box-shadow:0 20px 50px rgba(0,0,0,0.8);
}
.main-content{
    margin:20px 20px 20px 20px;
}
.headingOne{
    margin:10px 20px 10px 20px; 
    padding:0;
    text-align:center;
    font-size:24px;
    font-weight:300;
    color:red;
}

.btnSubmit {
margin-left: 50px;
margin-bottom: 20px;
background-color:red;
padding:5px;
border-color:transparent;
border-radius:4px;
color:white;
}
.message {
color: #FF0000;
text-align: center;
width: 100%;
}
.txtField {
padding: 5px;
border:red 1px solid;
border-radius:4px;
}
.required {
color: #FF0000;
padding-left:10px;
}
</style>
<script>
function validatePassword() {
var currentPassword,newPassword,confirmPassword,output = true;

currentPassword = document.frmChange.currentPassword;
newPassword = document.frmChange.newPassword;
confirmPassword = document.frmChange.confirmPassword;

if(!currentPassword.value) {
	currentPassword.focus();
	document.getElementById("currentPassword").innerHTML = "required";
	output = false;
}
else if(!newPassword.value) {
	newPassword.focus();
	document.getElementById("newPassword").innerHTML = "required";
	output = false;
}
else if(!confirmPassword.value) {
	confirmPassword.focus();
	document.getElementById("confirmPassword").innerHTML = "required";
	output = false;
}
if(newPassword.value != confirmPassword.value) {
	newPassword.value="";
	confirmPassword.value="";
	newPassword.focus();
	document.getElementById("confirmPassword").innerHTML = "not same";
	output = false;
} 	
return output;
}
</script>
<head>
    <?php include("admin_head.php"); ?>
</head>
<body>
<?php include("admin_topnav.php"); ?>
<div class="container"  style='margin-top:70px;'>
	<div class="row">
		<div class="col-sm-3">
			<?php include("admin_side_nav.php");?>
		</div>
		<div class="col-sm-9" >
    <form name="frmChange" method="post" action=""
        onSubmit="return validatePassword()">
            <div class="inner-container">

            <div class="message"><?php if(isset($message)) { echo $message; } ?></div>
           
            <div id="main-content">
                   <h2 class="headingOne">Change Password</h2><br>
                  <label>Current Password</label><br>
                   <input type="password" name="currentPassword" class="txtField" /><span
                        id="currentPassword" class="required"></span><br>
              
                   <label>New Password</label><br>
                    <input type="password" name="newPassword"
                        class="txtField" /><span id="newPassword"
                        class="required"></span><br>
               
               <label>Confirm Password</label><br>
                <input type="password" name="confirmPassword"
                    class="txtField" /><span id="confirmPassword"
                    class="required"></span><br><br>
               
                   <input type="submit" name="submit"
                        value="Submit" class="btnSubmit"><br>
            </div>
        </div>
        
    </form>
    </div>
    <?php include("admin_footer.php"); ?>
</body>
</html>