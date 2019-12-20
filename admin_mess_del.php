<?php
session_start();
include("config.php");
 if(!isset($_SESSION['usertype']))
 {
	 header("location:admin.php");
 }
 if(isset($_GET["id"]))
 {
	 $id=$_GET["id"];
	 echo $sql="DELETE FROM messages WHERE ID=$id";
	 $con->query($sql);
	 ?>
	 <script> location.replace("admin_inbox.php?mes=Message Deleted"); </script>
	 <?php
 }
 else
 {
	 header("location:admin_inbox.php");
 }
 
?>