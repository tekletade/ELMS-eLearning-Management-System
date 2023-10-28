 
<!--
include 'conn.inc.php';

session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
    {   
header('location:login2.php');
}
else

-->
 

    <?php include('header2.php');?>

	<?php include('display_video_courses.php');?>
    <?php include('footer.php');?>
