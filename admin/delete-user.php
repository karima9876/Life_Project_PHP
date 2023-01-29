<?php 
include 'config.php';
if($_SESSION['role'] == '0') {
   header("location:post.php");
       }

$rcv_id=$_GET['id'];
$query="DELETE FROM user WHERE user_id = '{$rcv_id}'";
$result=mysqli_query($conn,$query);
if($result){

	header("location:users.php");
}else{
	"Can't Delete User.";
}
mysql_close($conn);






 ?>