<?php 
	 session_start();

 ?>

<!DOCTYPE html>
<html>
<head>
	<title>Unique Developer</title>
	<!----css file link-->
	<link rel="stylesheet" type="text/css" href="programming.css">

	<link rel="stylesheet" type="text/css" href="bootstrap.css">

	<script src="bootstrap.js"></script>


	<style type="text/css">
		.context-dark, .bg-gray-dark, .bg-primary {
    color: rgba(255, 255, 255, 0.8);
}

.footer-classic a, .footer-classic a:focus, .footer-classic a:active {
    color: #ffffff;
}
.nav-list li {
    padding-top: 5px;
    padding-bottom: 5px;
}

.nav-list li a:hover:before {
    margin-left: 0;
    opacity: 1;
    visibility: visible;
}

ul, ol {
    list-style: none;
    padding: 0;
    margin: 0;
}

.social-inner {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%;
    padding: 23px;
    font: 900 13px/1 "Lato", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
    text-transform: uppercase;
    color: rgba(255, 255, 255, 0.5);
}
.social-container .col {
    border: 1px solid rgba(255, 255, 255, 0.1);
    display: inline-block; 
}
.nav-list li a:before {
    content: "\f14f";
    font: 400 21px/1 "Material Design Icons";
    color: #4d6de6;
    display: inline-block;
    vertical-align: baseline;
    margin-left: -28px;
    margin-right: 7px;
    opacity: 0;
    visibility: hidden;
    transition: .22s ease;
}



.div1                           /* for title image*/
{
	margin-top: 10%;
   position: relative;
    height: 500px;
    width: 1263px;
    background:url(uploadimg/programming_image.png);
}


	</style>



</head>
<body>


			<!---Navigation Starts	----->

	
	
			


 			<!---programming languages Section Start	----->
<br><br>
 			<section class="latest-news-area" id="latest">
 				<div class="container">
 				
<br>

 					

<?php


			   // session_start();

			   $con=mysqli_connect('localhost','root');


			mysqli_select_db($con,'myelmsdb');

			$q="select * from programming_languages";
			$query=mysqli_query($con,$q);
			while ($res=mysqli_fetch_array($query)) {

			?>

			<div class="col-md-4 col-sm-6 col-xs-12 content-border" style="margin-bottom: 10px;">
 									

 									<div class="news-contenet">
 										
 										<a href="java_programming.php?course_name=<?php echo $res['language_name'] ?>">Start Reading...</a>
 									</div>
 							</div>

		

<?php } ?>



 				</div>
 				
 			</section>


 			<!---programming languages Section ends	----->


 			<!---footer Section Start	----->

<br><br><br><br>



			
</body>
</html>