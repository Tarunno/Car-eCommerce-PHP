<?php
    session_start();
    include 'includes/post.inc.php';
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css"  />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/post.css">
		<title>TARUNNO DRIVES | more</title>
	</head>
	<body>
		<div class="nav">
			<a href="javascript:history.back();"><i class="fas fa-angle-double-left"></i></a><h1>TARUNNO DRIVES</h1>
		</div>

        <h1 class="headling">Post</h1>
		<div class="container">
			<div class="results">
				<?php
				  	$row = $thoughts->fetch_assoc();
					echo '<div class="image"  style="background-image:url(assets/Thought_images/'.$row['image'].');
								background-size: cover;
								background-position:center;">
						  </div>
						<div class="text">
							<h2>'.$row['title'].'</h2>
							<i class="far fa-user"> <p style="display: inline;"> Mahdi Hasan Tarunno</p></i>
							<p style="display: inline; padding:0px 5px 0px 5px;"> | </p>
							<i class="far fa-calendar-alt"> <p style="display:inline;"> '.$row['create_time'].'</p></i>
							<p style="display: inline; padding:0px 5px 0px 5px;"> | </p>
							<i class="fas fa-paperclip" style="display:inline;"><p style="display:inline;"> '.$row['tag'].'  </p></i>
							<br><br>
							<p>'.$row['body'].'</p>
							<br>
						</div>';
				?>
            </div>
		</div>

        <footer>
			<div class="social">
			  <h2>FLLOW US</h2>
			  <a href="#"> <i class="fab fa-facebook"> <span></span> </i> </a>
			  <a href="#"> <i class="fab fa-instagram"> <span></span> </i> </a>
			  <a href="#"> <i class="fab fa-twitter"> <span></span> </i> </a>
			  <a href="#"> <i class="fab fa-youtube"> <span></span> </i> </a>
		  </div>
		  <div class="credit">
		  	<h1>TARUNNO DRIVES | Developed by mahadi hasan tarunno</h1>
		  </div>
      </footer>
	</body>
</html>
