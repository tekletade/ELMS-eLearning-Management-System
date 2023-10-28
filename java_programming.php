<?php 
	session_start();
 ?>

<!DOCTYPE html>
<html>
<head>
	<title>E-LMS Platform</title>
	<!----css file link-->
	<link rel="stylesheet" type="text/css" href="java_programming.css">

	<!-- Latest compiled and
	minified CSS -->

	<!-- jQuery library -->
	<!-- Latest compiled JavaScript -->


	<!----Linking google fonts-->

	<!----font-awsome start-->
	<link rel="stylesheet" type="text/css" href="bootstrap.css">

	<script src="bootstrap.js"></script>



	<style type="text/css">
		#yt
		{
			margin-top: 50px;
		}

		#sidebarleftmenu
		{
				
		}

		body
		{
			

		}



		#mainpagecontent
		{
			background-color: white;
			margin-top: 80px;
			height: auto;
			box-shadow: 5px 5px 5px 5px #ccc; 
			border-color: #ccc;


		}
		.content
		{
			color: black !important;
		}

	</style>
</head>
<body>
	<?php //include('header.php');?>
	
		<!------Navigation bar ends ---->
	<nav class="navbar navbar-inverse navbar-fixed-top" style="height: 80px;">
		<div class="container">
			<div class="navbar-header">
				<!------Responsive Button---->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navi">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>


				</button>

				<h1 style="color: white;margin-top: 10px;" id="myhead">E-Learning</h1>
			</div>
			
			<div class="collapse navbar-collapse" id="navi">
                 <!------Navigation menus starts---->
				<ul class="nav navbar-nav navbar-right">
					<li> <a href="index.php">Home</a></li>
					<li> <a href="online_quize/quizhome.php">Take test</a></li>
					<li> <a href="teachers.php">Our Experts</a></li>
					<li> <a href="video.php">Videos</a></li>
					<li> <a href="contact.php">Contact</a></li>
					<!--<li> <a href="" id="our-location" class="btn-success" data-target="#mymodal" data-toggle="modal"><?php //echo $_SESSION['username'];   ?></a></li>-->
				</ul>
	                 <!------Navigation menus ends---->
			</div>
		</div>
	</nav>

		<!------Navigation bar ends ---->


		 <!------Side bar start---->


	<div class="sidemenu" id="sidebarleftmenu">
		<ul class="sidemenulist">
			<li style="background-color :green;"><a href="" ></a></li>

<?php 
$con=mysqli_connect('localhost','root');
mysqli_select_db($con,'myelmsdb');
$course_name=$_GET['course_name'];



//$_GET['course_name'];
// unset($_GET['course_name']);
$q="select * from courses where course_name='$course_name'";

$result=mysqli_query($con,$q);
while ($res=mysqli_fetch_array($result)) {
  ?>
		
  			<form action="fetch_main_content.php" method="POST">

  			<input type="hidden" name="txt1" value="<?php echo $res['id'] ?>">
			<button  style="background-color: transparent;border: none;text-align:left;color: white;"><li style="width: 300px;"><?php echo $res['topic_name']; ?></li></button>

			</form>
			

<?php } ?>

		</ul>
	</div>

		 <!------Side bar ends---->

 		<!------java main content starts ---->

	<div id="mainpagecontent" class="shadow">
		
		<div class="content">
			<p>

			<?php

			if (isset($_SESSION['message'])) {
				echo $_SESSION['message'];
			}
			

			  ?>
			</p>
		
		
		</div>
			<!------java main content Ends 

		<button id="btn_next">Next</button>---->
	
	</div>


	
		<!------java main content Ends ---->



		<!------youtube subscribe button starts---->

<div id="yt"  class="g-ytsubscribe" data-channelid="UCxwf74gbHaiHHJ7XxZ51JyA" data-layout="full" data-count="default"></div>

		
		<!------youtube subscribe button Ends---->


		<!-- 	<script type="text/javascript">
		
		function opensidemenu()
		{
			document.getElementById('sidebarleftmenu').style.width='250px';
			document.getElementById('mainpagecontent').style.marginLeft='250px';
		}

		function closesidemenu()
		{
			document.getElementById('sidebarleftmenu').style.width='0';
			document.getElementById('mainpagecontent').style.marginLeft='0px';			
		}

	</script>
 -->

 <script type="text/javascript">
 	
 	var li=document.getElementsByTagName('li')[0].style="color:red";
 </script>

</body>
</html>