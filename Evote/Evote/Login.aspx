<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Evote.Login" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>E_VOTING</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Site Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns f   
    or Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/iconeffects.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<link href='//fonts.googleapis.com/css?family=Viga' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->

</head>
<body>
<!-- header -->
<div class="banner w3l">
	<div class="head_top wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.3s">
		<div class="container">
			<div class="banner-right">
				<ul>
					<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>0787424925</li>
					<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="login.aspx">Motazzghoul98@gmail.com</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="banner-info">
       
		<div class="container">
			<div class="profile-left wow flipInY" data-wow-duration="1.5s" data-wow-delay="0s">
				<form  runat="server">
                     <h3 class="header" style="text-align:center">Login</h3>
					<div class="login">
						 
	 
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" required=""></asp:TextBox>
                <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password" required=""></asp:TextBox>
                       
                 <asp:Button ID="btnlogin" runat="server" Text="login" OnClick="btnlogin_Click" />
			<asp:Label ID="lbllogin" runat="server" ForeColor="#990000" style="margin-left:8px"></asp:Label>
					</div>
					
				</form>
                </div>
				
                
			</div>
		</div>
        </div>
   
	
    

<!-- //header -->
<!-- navigation -->

<!-- //navigation -->
<!-- make -->
<div class="make wthree all_pad">
	<div class="container">
		<h2 class="title">Al-Zaytoonah University<span></span></h2>
		<div class="make-grids">
			<div class="col-md-8 make-grid-one wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0s">
				<div class="make-left">
					<div class="item item-type-double">
						<div class="item-hover">
							<div class="item-info">
								<div class="date">ZUJ-IT</div>			
								<div class="line"></div>			
								<div class="headline">Vote</div>
								<div class="line"></div>
							</div>
							<div class="mask"></div>
						</div>
						<div class="item-img"  ><img class="img-responsive" src="images/IMG_4971.JPG" alt=" " width="30" height="40" /></div>
					</div>
				</div>
			</div>
			<div class="col-md-4 make-grid-two wow bounceInUp" data-wow-duration="1.5s" data-wow-delay="0.1s">
				<div class="make-left">
					<div class="item item-type-double">
						<div class="item-hover">
							<div class="item-info">
								<div class="date">ZUJ-IT</div>			
								<div class="line"></div>			
								<div class="headline">Vote</div>
								<div class="line"></div>
							</div>
							<div class="mask"></div>
						</div>
						<div class="item-img"><img class="img-responsive" src="images/IMG_4973.JPG" alt=" " /></div>
					</div>
				</div>
			</div>
			
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //make -->
<!-- explore -->


<!-- footer -->


<div class="footer w3agile wow bounceInDown" data-wow-duration="1.5s" data-wow-delay="0s">
	<div class="container">
		<!-- <div class="foo-arr text-center"><img src="images/arrows.png" alt=" "/></div> -->
		<div class="col-md-4 footer-left">
			<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><p>123K Avenue, 5th Street, <span>New York City</span></p>
		</div>
		<div class="col-md-4 footer-left">
			<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><p><a href="Motazzghoul98@gmail.com">Motazzghoul98@gmail.com</a><span><a href="mailto:example@mail.com">abdealrhman1996@gmail.com</a></span></p>
		</div>
		<div class="col-md-4 footer-left">
			<i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><p>0795476035<span>0795476035</span></p>
		</div>
		<div class="clearfix"></div>
		<div class="copyrights w3">
			<div class="copy-left">
				<p>© 2016 Real Site. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
			</div>
			<div class="copy-right agileinfo">
				<ul class="fb_icons">
					<li class="hvr-rectangle-out"><a class="fb" href="#"></a></li>
					<li class="hvr-rectangle-out"><a class="twit" href="#"></a></li>
					<li class="hvr-rectangle-out"><a class="goog" href="#"></a></li>
					<li class="hvr-rectangle-out"><a class="pin" href="#"></a></li>
					<li class="hvr-rectangle-out"><a class="drib" href="#"></a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //footer -->
<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</body>
</html>