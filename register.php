<?php
session_start();
error_reporting(0);
include('includes/config.php');
// Code user Registration
if(isset($_POST['submit']))
{
$name=$_POST['name'];
$email=$_POST['email'];
$contactno=$_POST['contactno'];
//$password=md5($_POST['password']);
$query=mysqli_query($con,"insert into users(name,email,contactno) values('$name','$email','$contactno')");
if($query)
{
	echo "<script>alert('You are successfully register');</script>";
	echo "<script>window.open('index.php','_self')</script>";

}
else{
echo "<script>alert('Not register something went worng');</script>";
echo "<script>window.open('index.php','_self')</script>";

}
}

?>
