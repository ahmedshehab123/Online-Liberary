
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="ar">
<head>
<title>Military Academy Library</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript">
	//<![CDATA[
	try {
		if (!window.CloudFlare) {
			var CloudFlare = [ {
				verbose : 0,
				p : 0,
				byc : 0,
				owlid : "cf",
				bag2 : 1,
				mirage2 : 0,
				oracle : 0,
				paths : {
					cloudflare : "/cdn-cgi/nexp/dok3v=1613a3a185/"
				},
				atok : "61b1b57a1ddfe5dd4eb16d86f8f42d55",
				petok : "9acdd09058dbe9e26a830be6068be3764d35e5d1-1489236451-1800",
				zone : "template-help.com",
				rocket : "0",
				apps : {
					"abetterbrowser" : {
						"ie" : "7"
					}
				}
			} ];
			!function(a, b) {
						a = document.createElement("script"),
						b = document.getElementsByTagName("script")[0],
						a.async = !0,
						a.src = "//ajax.cloudflare.com/cdn-cgi/nexp/dok3v=f2befc48d1/cloudflare.min.js",
						b.parentNode.insertBefore(a, b)
			}()
		}
	} catch (e) {
	};
	//]]>
</script>
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon"
	href="/MilitaryAcademyLibrary/resources/images/favicon.ico"
	type="image/x-icon" />
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<meta name="format-detection" content="telephone=no" />

<link rel="stylesheet"
	href="/MilitaryAcademyLibrary/resources/css/bootstrap.css">
<link rel="stylesheet"
	href="/MilitaryAcademyLibrary/resources/css/style.css">
<link rel="stylesheet"
	href="/MilitaryAcademyLibrary/resources/css/camera.css">
<link rel="stylesheet"
	href="/MilitaryAcademyLibrary/resources/fonts/font-awesome.css">

<script src="/MilitaryAcademyLibrary/resources/js/jquery.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/js/jquery-migrate-1.2.1.min.js"></script>
<script src="/MilitaryAcademyLibrary/resources/js/superfish.js"></script>
<script src="/MilitaryAcademyLibrary/resources/js/jquery.easing.1.3.js"></script>
<script src="/MilitaryAcademyLibrary/resources/js/jquery.mobilemenu.js"></script>
<script src="/MilitaryAcademyLibrary/resources/js/jquery.ui.totop.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/js/jquery.equalheights.js"></script>
<script src="/MilitaryAcademyLibrary/resources/js/camera.js"></script>
<!--[if (gt IE 9)|!(IE)]><!-->
<script
	src="/MilitaryAcademyLibrary/resources/js/jquery.mobile.customized.min.js"></script>
<!--<![endif]-->
<script
	src="/MilitaryAcademyLibrary/resources/js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/js/jquery.mousewheel.min.js"></script>
<script
	src="/MilitaryAcademyLibrary/resources/js/jquery.touchSwipe.min.js"></script>
<script>
	$(window).load(function() {
		$(function() {
			$('#foo2').carouFredSel({
				auto : false,
				responsive : true,
				width : '100%',
				prev : '#prev2',
				next : '#next2',
				scroll : 1,
				items : {
					height : 'auto',
					width : 320,
					visible : {
						min : 1,
						max : 1
					}
				},
				mousewheel : true,
				swipe : {
					onMouse : true,
					onTouch : true
				}
			});
		});
	});
</script>
<script>
	$(document).ready(function() {
		jQuery('.camera_wrap').camera();
	});
</script>

</head>
<body>

	<div class="main">
		<header>
			<div class="container">
				<div class="row">
					<article class="col-lg-12 col-md-12 col-sm-12">
						<h1 class="navbar-brand navbar-brand_">
							<a href="#"><img
								src="/MilitaryAcademyLibrary/resources/images/logo.png" alt=""></a>
						</h1>
						<div class="menuBox clearfix">
							<nav
								class="navbar navbar-default navbar-static-top tm_navbar clearfix"
								role="navigation">
								<ul class="nav sf-menu clearfix">
									<li class="active"><a href="/MilitaryAcademyLibrary/">Home</a></li>
									<li class="sub-menu"><a href="#">about us<span></span></a>
										<ul class="submenu">
											<li><a href="#">Dolore ipsu</a></li>
											<li><a href="#">Consecte</a></li>
											<li><a href="#">Elit Conseq</a>
												<ul class="submenu">
													<li><a href="#">Dolore ipsu</a></li>
													<li><a href="#">Consecte</a></li>
													<li><a href="#">Elit Conseq</a></li>
													<li class="tr"></li>
												</ul></li>
											<li class="tr1"></li>
										</ul></li>
									<li><a href="#">programs</a></li>
									<li><a href="#">blog</a></li>
									<li><a href="#">contacts</a></li>
								</ul>
							</nav>
						</div>
					</article>
				</div>
			</div>
		</header>
		<article class="slider">
			<div class="camera_wrap">
				<div
					data-src="/MilitaryAcademyLibrary/resources/images/picture1.jpg">
					<div class="camera-caption fadeIn"></div>
				</div>
				<div
					data-src="/MilitaryAcademyLibrary/resources/images/picture2.jpg">
					<div class="camera-caption fadeIn"></div>
				</div>
				<div
					data-src="/MilitaryAcademyLibrary/resources/images/picture3.jpg">
					<div class="camera-caption fadeIn"></div>
				</div>
			</div>
		</article>
	</div>
	<div class="global">
		<section class="welcomeBox">
			<div class="container">
				<div class="row">
					<article class="col-lg-12 col-md-12 col-sm-12">
						<h2>
							Plunge into the wonderful<br>world of reading
						</h2>
					</article>
				</div>
			</div>
		</section>
		<section class="popularBox">
			<div class="container">
				<div class="row">
					<article class="col-lg-12 col-md-12 col-sm-12 banner-box">
						<h3>Departments</h3>
						<div class="row">
							<c:forEach var="department" items="${departments }">
								<article class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
									<div class="thumb-pad2 maxheight1">
										<div class="thumbnail">

											<figure>
												<a href="list-books-in-department?departmentName=${department.departmentName}" ><img
													src="diplay-image?generatedName=${department.imageName }"
													alt=""></a>
											</figure>

											<div class="caption">
												<a
													href="list-books-in-department?departmentName=${department.departmentName}" >${department.departmentName}</a>
												<!-- <p class="title">by Cormac McCarthy</p> -->
											</div>
										</div>
									</div>
								</article>
							</c:forEach>
						</div>
				</div>
		</section>
		<section class="circleIconBox">
			<div class="container">
				<div class="row">
					<article class="col-lg-3 col-md-6 col-sm-6">
						<div class="thumb-pad1 maxheight">
							<div class="thumbnail">
								<h2>Ask a Librarian</h2>
								<div class="badge">
									<span class="fa fa-comment"></span>
								</div>
								<div class="caption">
									<p class="title">Mes cuml dia sed ineniet inger lot aliiqs
										dolore.</p>
									<p>Mes cuml dia sed in lacus ut eniascet inger aliiqt es
										site amet eismod ictor ut ligulate ameti dapibus ticdu nt
										mtsen dolor.</p>
									<a href="#" class="btn-default btn1">read more</a>
								</div>
							</div>
						</div>
					</article>
					<article class="col-lg-3 col-md-6 col-sm-6">
						<div class="thumb-pad1 maxheight">
							<div class="thumbnail">
								<h2>Innovations</h2>
								<div class="badge">
									<span class="fa fa-lightbulb-o"></span>
								</div>
								<div class="caption">
									<p class="title">Mes cuml dia sed ineniet inger lot aliiqs
										dolore.</p>
									<p>Mes cuml dia sed in lacus ut eniascet inger aliiqt es
										site amet eismod ictor ut ligulate ameti dapibus ticdu nt
										mtsen dolor.</p>
									<a href="#" class="btn-default btn1">read more</a>
								</div>
							</div>
						</div>
					</article>
					<article class="col-lg-3 col-md-6 col-sm-6">
						<div class="thumb-pad1 maxheight">
							<div class="thumbnail">
								<h2>Join the Library</h2>
								<div class="badge">
									<span class="fa fa-pencil-square-o"></span>
								</div>
								<div class="caption">
									<p class="title">Mes cuml dia sed ineniet inger lot aliiqs
										dolore.</p>
									<p>Mes cuml dia sed in lacus ut eniascet inger aliiqt es
										site amet eismod ictor ut ligulate ameti dapibus ticdu nt
										mtsen dolor.</p>
									<a href="#" class="btn-default btn1">read more</a>
								</div>
							</div>
						</div>
					</article>
					<article class="col-lg-3 col-md-6 col-sm-6">
						<div class="thumb-pad1 maxheight">
							<div class="thumbnail">
								<h2>Help</h2>
								<div class="badge">
									<span class="fa fa-search"></span>
								</div>
								<div class="caption">
									<p class="title">Mes cuml dia sed ineniet inger lot aliiqs
										dolore.</p>
									<p>Mes cuml dia sed in lacus ut eniascet inger aliiqt es
										site amet eismod ictor ut ligulate ameti dapibus ticdu nt
										mtsen dolor.</p>
									<a href="#" class="btn-default btn1">read more</a>
								</div>
							</div>
						</div>
					</article>
				</div>
			</div>
		</section>
		<section class="carouselBox">
			<div class="container">
				<div class="row">
					<article
						class="col-lg-10 col-md-10 col-sm-12 col-lg-offset-1 col-md-offset-1">
						<div class="list_carousel2 responsive clearfix">
							<ul id="foo2">
								<li>
									<p>
										&ldquo; Lorem ipsum dolor sit amet, consect etur adipiscing
										elit. Vestibulum ut tortor urnati dunt dolor. Nunc vulputate<br>ultrices
										con sect etur donec semper lacinia ultri dolore cie<br>lorem
										ipsum commete. &rdquo;
									</p> <a href="#">Jack Calso</a>
								</li>
								<li>
									<p>
										&ldquo; Lorem ipsum dolor sit amet, consect etur adipiscing
										elit. Vestibulum ut tortor urnati dunt dolor. Nunc vulputate<br>ultrices
										con sect etur donec semper lacinia ultri dolore cie<br>lorem
										ipsum commete. &rdquo;
									</p> <a href="#">Jack Calso</a>
								</li>
							</ul>
						</div>
						<div class="foo-btn clearfix">
							<a id="prev2" class="prev" href="#"></a> <a id="next2"
								class="next" href="#"></a>
						</div>
					</article>
				</div>
			</div>
		</section>
	</div>

	<footer>
		<div class="container">
			<div class="row">
				<article class="col-lg-12 col-md-12 col-sm-12">
					<p>
						<span>Libuno</span> &copy; <em id="copyright-year"></em> | <a
							href="index-5.html">Privacy Policy</a>
					</p>
					<ul>
						<li><a href="#"><img
								src="/MilitaryAcademyLibrary/resources/images/follow_icon1.png"
								alt=""></a></li>
						<li><a href="#"><img
								src="/MilitaryAcademyLibrary/resources/images/follow_icon2.png"
								alt=""></a></li>
						<li><a href="#"><img
								src="/MilitaryAcademyLibrary/resources/images/follow_icon3.png"
								alt=""></a></li>
						<li><a href="#"><img
								src="/MilitaryAcademyLibrary/resources/images/follow_icon4.png"
								alt=""></a></li>
					</ul>
				</article>
			</div>
		</div>

	</footer>
	<script src="/MilitaryAcademyLibrary/resources/js/bootstrap.min.js"></script>
	<script src="/MilitaryAcademyLibrary/resources/js/tm-scripts.js"></script>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-7078796-5' ]);
		_gaq.push([ '_trackPageview' ]);
		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'https://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
</body>
<noscript>
	<iframe src="//www.googletagmanager.com/ns.html?id=GTM-P9FT69"
		height="0" width="0" style="display: none; visibility: hidden"></iframe>
</noscript>
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-P9FT69');
</script>
<!-- End Google Tag Manager -->
</html>