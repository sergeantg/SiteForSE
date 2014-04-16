<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--[if IE 7 ]>    <html class="ie7 no-js" lang="en"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8 no-js" lang="en"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9 no-js" lang="en"> <![endif]--> 
<!--[if (gte IE 9)|!(IE)]><!--> <html class="no-js" lang="en"> <!--<![endif]-->

<head>
    <meta charset="utf-8" />
    <title>Site For SE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <meta name="description" content="study site" />
    <meta name="author" content="" />

    <!-- CSS styles -->
    <link href="css/mentor.min.css" rel="stylesheet"/>
    <!--Skins: uncomment to activate-->
    <link href="css/skin_blue.css" rel="stylesheet"/>
    <!--<link href="css/skin_orange.css" rel="stylesheet"/>-->


	<!-- http://remysharp.com/2009/01/07/html5-enabling-script/ -->
	<!--[if lt IE 9]>
		<script type="text/javascript">/*@cc_on'abbr article aside audio canvas details figcaption figure footer header hgroup mark meter nav output progress section summary subline time video'.replace(/\w+/g,function(n){document.createElement(n)})@*/</script>
	<![endif]-->
	<script type="text/javascript">(function(H){H.className=H.className.replace(/\bno-js\b/,'js')})(document.documentElement)</script>

    <!-- favicon & iSO touch icons -->
    <link rel="shortcut icon" href="favicon.jpg" />
</head>

<body>
    
    <%@include file="header.jsp" %>

    <!--main tagline area-->
    <section class="taglineWrap">
		<div class="container">
			<div class="row-fluid sliderWrap">
				<div class="span12">
					
					<!--start slider-->
					<div class="peVolo" data-autopause="enabled">
						
						<div data-delay="3" class="visible">
							<a href="#"><img src="img/content/slide1.jpg" alt="Image" /></a>
						</div>
						<div data-delay="3">
							<a href="#"><img src="img/content/slide4.jpg" alt="Image" /></a>
						</div>
						<div data-delay="3">
							<a href="#"><img src="img/content/slide3.jpg" alt="Image" /></a>
						</div>		    
						<div data-delay="3">
							<a href="#"><img src="img/content/slide2.jpg" alt="Image" /></a>
						</div>		    
						
					</div>
                    <!--end slider-->
					
				</div>
			</div>
			<div class="row-fluid  tagline">
				<div class="span8"><h2>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, donec odio. Quisque volutpat mattis eros.</h2></div>
				<div class="span4 action">
					
					<div>
						<a href="#" class="btn first btn-success">Learn More</a>
						<span>or</span>
						<a href="#" class="btn btn-info">Contact Us</a>
					</div>
					
				</div>
			</div>
		</div> <!-- /container -->
    </section>
    
    
    <!--main content-->
    <section class="mainContentWrap">
		<div class="container mainContent">
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid featuredContent">
						
						<div class="span4"><h1><span class="btn btn-inverse">01</span> Who?</h1><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. <a href="#"><span class="label">More</span></a></p></div>
						
						<div class="span4"><h1><span class="btn btn-inverse">02</span> What?</h1><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. <a href="#"><span class="label">More</span></a></p></div>
						
						
						<div class="span4"><h1><span class="btn btn-inverse">03</span> Why?</h1><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. <a href="#"><span class="label">More</span></a></p></div>
						
						
					</div>
					
					<div class="row-fluid">
						<div class="divider dotted clearfix"><span></span></div>
					</div>
					
					<!-- carousel -->
					<div class="row-fluid relative">
						<div class="span12">
							<h1>Latest Projects</h1>
						</div>

						<div class="carousel-nav">
							<div class="pull-right">
								<a href="#" id="carouselPrev" class="prev-btn pull-left label"><i class="icon-chevron-left icon-white"></i></a>
								<a href="#" id="carouselNext" class="next-btn pull-left label"><i class="icon-chevron-right icon-white"></i></a>
							</div>
						</div>  
					</div>
				
					<div class="row-fluid carouselBox" data-height="0,0" data-slidewidth="250">
						
						<div data-delay="0">                    
							<div class="portfolioItem">
								<a href="img/content/homep1lb1.jpg" class="peOver"
                                  data-target="flare"
                                  data-flare-scale="fit">
									<img src="img/content/port09.jpg" alt="project" />
									<span></span>
								</a>
								<div class="title">
									<span class="icon-picture"></span><a href="#">Lightbox Single Image (fit)</a>
								</div>
								<p>Lorem ipsum dolor sitam et conse caetue adi pit mit solsz..</p>
							</div>  
						</div>
						
						
						
						<div data-delay="0">
							<div class="portfolioItem">
								<a href="img/content/homegal1.jpg" class="peOver"
                                    data-target="flare"
                                    data-flare-plugin="shutter"
                                    data-flare-gallery="homeGal"
                                    data-flare-scale="fillmax"
                                    data-flare-thumb="img/content/homegal1t.jpg"
                                    data-flare-bw="img/content/homegal1bw.jpg">
									<img src="img/content/port05.jpg" alt="project" />
									<span></span>
								</a>
								<div class="title">
									<span class="icon-th"></span><a href="#">Fullscreen Gallery (fill)</a>
								</div>
								<p>Lorem ipsum dolor sitam et conse caetue adi pit mit solsz..</p>
							</div>  
						</div>
						

						<div data-delay="0">
							<div class="portfolioItem">
								<a data-target="flare" href="http://www.youtube.com/watch?v=AFA-rOls8YA" class="peOver">
									<img src="img/content/port14.jpg" alt="project" />
									<span></span>
								</a>
								<div class="title">
									<span class="icon-facetime-video"></span><a href="#">Lightbox Video (YouTiube)</a>
								</div>
								<p>Lorem ipsum dolor sitam et conse caetue adi pit mit solsz..</p>
							</div>  
						</div>
                        
                        
                        <div data-delay="0">                    
							<div class="portfolioItem">
								<a href="project_single.html" class="peOver">
									<img src="img/content/port16.jpg" alt="project" />
									<span></span>
								</a>
								<div class="title">
									<span class="icon-file"></span><a href="#">Project Page Link</a>
								</div>
								<p>Lorem ipsum dolor sitam et conse caetue adi pit mit solsz..</p>
							</div>  
						</div>

						<div data-delay="0">      
							<div class="portfolioItem">
								<a href="project_single_video.html" class="peOver">
									<img src="img/content/port10.jpg" alt="project" />
									<span></span>
								</a>
								<div class="title">
									<span class="icon-film"></span><a href="#">Vdieo Project Link</a>
								</div>
								<p>Lorem ipsum dolor sitam et conse caetue adi pit mit solsz..</p>
							</div>  
						</div>
						
						
						<div data-delay="0">    
							<div class="portfolioItem">
								<a href="portfolio_1.html" class="peOver">
									<img src="img/content/port12.jpg" alt="project" />
									<span></span>
								</a>
								<div class="title">
									<span class="icon-th-list"></span><a href="#">Portfolio</a>
								</div>
								<p>Lorem ipsum dolor sitam et conse caetue adi pit mit solsz..</p>
							</div>  
						</div>
						
						
						<div data-delay="0">
							<div class="portfolioItem">
								<a href="project_single_slider.html" class="peOver">
									<img src="img/content/port20.jpg" alt="project" />
									<span></span>
								</a>
								<div class="title">
									<span class="icon-picture"></span><a href="#">Slider Project Link</a>
								</div>
								<p>Lorem ipsum dolor sitam et conse caetue adi pit mit solsz..</p>
							</div>  
						</div>
						
						
						<div data-delay="0">
							<div class="portfolioItem">
								<a href="project_single.html" class="peOver">
								  <img src="img/content/port08.jpg" alt="project" />
								  <span></span>
								</a>
                                
								<div class="title">
									<span class="icon-file"></span><a href="#">Project Page</a>
								</div>
								<p>Lorem ipsum dolor sitam et conse caetue adi pit mit solsz..</p>
							</div>  
						</div>
					</div>
                    
                    <!--content for the fullscreen gallery-->
                    <div class="hiddenLightboxContent">
                      
                      <a href="img/content/homegal2.jpg" class="peOver"
                          data-target="flare"
                          data-flare-plugin="shutter"
                          data-flare-gallery="homeGal"
                          data-flare-scale="fillmax"
                          data-flare-thumb="img/content/homegal2t.jpg"
                          data-flare-bw="img/content/homegal2bw.jpg">
                      </a>
                      
                      <a href="img/content/homegal3.jpg" class="peOver"
                          data-target="flare"
                          data-flare-plugin="shutter"
                          data-flare-gallery="homeGal"
                          data-flare-scale="fillmax"
                          data-flare-thumb="img/content/homegal3t.jpg"
                          data-flare-bw="img/content/homegal3bw.jpg">
                      </a>
                      
                      <a href="img/content/homegal4.jpg" class="peOver"
                          data-target="flare"
                          data-flare-plugin="shutter"
                          data-flare-gallery="homeGal"
                          data-flare-scale="fillmax"
                          data-flare-thumb="img/content/homegal4t.jpg"
                          data-flare-bw="img/content/homegal4bw.jpg">
                      </a>
                      
                      <a href="img/content/homegal5.jpg" class="peOver"
                          data-target="flare"
                          data-flare-plugin="shutter"
                          data-flare-gallery="homeGal"
                          data-flare-scale="fillmax"
                          data-flare-thumb="img/content/homegal5t.jpg"
                          data-flare-bw="img/content/homegal5bw.jpg">
                      </a>
                      
                    </div>

				</div>
				
            </div>
        </div>
    </section>
    
    <!--footer-->
    <%@include file="footer.jsp" %>
		
		
		<!--back to top button-->
		<a href="#top" id="peBackToTop" class="label btt disabled"><span class="icon-chevron-up icon-white"></span></a>

		<!-- import minified javascript -->
        <script type="text/javascript" src="js/mentor.min.js"></script>
		<script type="text/javascript" src="preview/preview.js"></script>

</body>
</html>
