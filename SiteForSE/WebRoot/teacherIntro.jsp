<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
  <head>
    
   <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <meta name="description" content="" />
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
    
    <!--main content-->
    <section class="mainContentWrap">
    <div class="container mainContent">
      <ul class="breadcrumb">
	    <li>
	    <a href="#">关于</a> <span class="divider">/</span>
	    </li>
	    <li>
	    <a href="teacherIntro.jsp">教师介绍</a> <span class="divider">/</span>
	    </li>
	  </ul>
	  </div>
      <div class="container mainContent">
      
        <div class="row-fluid">
          
          
          <!--sidebar-->
          
          <aside class="span3 sidebar">
            
            <div class="well" style="padding: 8px 0;">
              <ul class="nav nav-list">
                <li class="nav-header">关于</li>
                <li class="active"><a href="teacherIntro.jsp"><i class="icon-user"></i> 教师介绍</a></li>
                <li><a href="textbookIntro.jsp"><i class="icon-book"></i> 教材简介</a></li>
                <li><a href="courseIntro.jsp"><i class="icon-star"></i>课程简介</a></li>
                <li ><a href="#"><i class="icon-white icon-info-sign"></i> About Us</a></li>
                <li class="divider"></li>
                <li><a href="#"><i class="icon-flag"></i> Help</a></li>
                
              </ul>
            </div>
            
            
            <!--social media widget-->
            
            <div class="widget widget_social">
              <h3>Social Media Widget</h3>
              <a href="#" data-rel="tooltip" title="Pinterest" class="sm-icon sm-icon-pinterest"></a>
              <a href="#" data-rel="tooltip" title="Dribbble" class="sm-icon sm-icon-dribbble"></a>
              <a href="#" data-rel="tooltip" title="Skype" class="sm-icon sm-icon-skype"></a>
              <a href="#" data-rel="tooltip" title="facebook" class="sm-icon sm-icon-facebook"></a>
              <a href="#" data-rel="tooltip" title="Vimeo" class="sm-icon sm-icon-vimeo"></a>
            </div>
            
            
            <!--categories widget-->
            
            <div class="widget widget_categories">
              <h3>Categories</h3>
              <ul>
                <li class="cat-item">
                  <a title="View all posts filed under Business 101" href="#">Business 101</a>(6)
                </li>
                <li class="cat-item">
                  <a title="View all posts filed under Strategy" href="#">Strategy</a>(11)
                </li>
                <li class="cat-item">
                  <a title="View all posts filed under Profit & Loss" href="#">Profit & Loss</a>(25)
                </li>
                <li class="cat-item">
                  <a title="View all posts filed under Startup" href="#">Startup</a>(1)
                </li>
              </ul>
            </div>
            
            
            <!--text widget-->
            
            <div class="widget widget_text">
              <h3>Text Widget 1</h3>
              <div class="textwidget"><p>Lorem ipsum dolor sit amet, consec tetuer adipiscing elit. Phasellus hen drerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapi bus id, mattis vel, nisi. Sed pretium.</p></div> <a href="#"><span class="label">Read More</span></a>
            </div>
            
            
            
            
            
          </aside> <!--end sidebar-->
          
          <!--main content-->
          
          <div class="span9">
            <div class="row-fluid">
              <div class="innerSpacer left">
                
                <!--body search widget for mobile-->
                <div class="row-fluid body-search">
                  <div class="span12 widget_search">
                    <form class="form-inline" action="#" method="get" role="search">
                        <input type="text" class="input-medium span3"  placeholder="Search...">
                        <button class="icon-search" type="submit"></button>
                    </form>
                  </div>  
                </div>
                
                <div class="row-fluid pageTitle">
                  <div class="span12"><h1>教师介绍</h1></div>
                </div>
                      <div class="span6 peIsotopeItem filter-lightbox filter-image">
                        
                        <div class="portfolioItem">
                          
                            <img src="img/hanzhi.jpg" alt="project" />
                             <span></span>
                          <div class="title">
                            <span class="icon-picture"></span><a href="#">Custom Lightbox Project (Fill)</a>
                          </div>
                          <p>Lorem ipsum dolor sitam et conse caetue adi pit mit solsz..</p>
                        </div>  
                      </div>

                
                <div class="row-fluid">
                  <div class="span12" >


                      <p>姓 名：  韩智
                      </p>
                      <p>性 别：  男
                      </p>
                      <p>所属部门： 软件工程系
                      </p>
                      <p>职 称：副教授
                      </p>
                      <p>学 历：博士
                      </p>
                      <p>所学专业：      模式识别与智能系统
                      </p>
                      <p>电子邮件：      hanzhi@nankai.edu.cn
                      </p>
                      <p>研究方向：      生物信息、智能图像处理、模式识别、软件工程
                      </p>
                      <p>个人简介：      1995年毕业于南开大学数学系数学专业，获理学学士学位 
                      </p>
                      <h3>撰写论文、专著、教材等：</h3>
                      <h4>发表论文：</h4>
                      <ol>
                      <li><p>Keith N. Brown; She Chen; Zhi Han; Chun-Hui Lu; Xin Tan; Xin-Jun Zhang; Liya Ding; Alejandro Lopez-Cruz; Dieter Saur; Stewart A. Anderson; Kun Huang; Song-Hai Shi. Clonal production and organization of inhibitory interneurons in the neocortex.Science 2011;334(6055):480-486 (IF:31.364)</p>
                      </li>
                      <li><p>Han Z, Lu T, Pecot T, Huang T, Machiraju R, Huang K. A signal processing approach for enriched region detection in RNA polymerase II ChIP-seq data, BMC Bioinformatics 2012, 13(Suppl 2):S2 [IF: 3.03]</p>
                      </li>
                      <li><p>Shu-ping Li, Zhi Han, Yi-zhen Chen, Bo Fu, Chunhui Lu, Xiaohui Yao. "Resampling forgery detection in JPEG-compressed images," Image and Signal Processing (CISP), 2010 3rd International Congress on , vol.3, no., pp.1166-1170, 16-18 Oct. 2010 </p>
                      </li>
                      <li><p>Yi-zhen Chen, Zhi Han, Shu-ping Li, Chun-hui Lu, Xiao-Hui Yao. "An adaptive steganography algorithm based on block sensitivity vectors using HVS features," Image and Signal Processing (CISP), 2010 3rd International Congress on , vol.3, no., pp.1151-1155, 16-18 Oct. 2010 </p>
                      </li>
                      <li><p>Zhi Han, Chang-Ping Liu. Fingerprint Recognition Method Based on Multi-Feature Fusion (In Chinese). Journal of Computer Science , 37(7)：255-259, 2010. </p>
                      </li>
                      <li><p>Zheng LI, Zhi Han, Bo Fu. A Novel Method to Evaluate the Fingerprint Image Quality. Proceedings of The International Conference on Computational Intelligence and Software Engineering, CiSE2009, 2009</p>
                      </li>
                      <li><p>FU Bo, HAN Zhi, LI Zheng. A Novel Fingerprint Enhancement Method Based on Gabor Filtering. Proceedings of the 2nd International Congress on Image and Signal Processing (CISP'09) , 2009. </p>
                      </li>
                      <li><p>Zhi Han, Zhenhong Zhang. Integration of Game Elements with Role Play in Collaborative Learning ?A Case Study of Quasi-GBL in Chinese Higher Education. Proceedings of the 3rd International Conference on Technologies for E-learning and Digital Entertainment,, Springer Lecture Notes in Computer Science, LNCS 5093:427-435, 2008. </p>
                      </li>
                      <li><p>Zhi Han, Zhenghong Zhang. Instructional Reform and Practice in Experimental Session of “Digital Image Processing” (In Chinese). Journal of Research and Exploration in Laboratory, 27(9):102-104, 2008. </p>
                      </li>
                      <li><p>Zhi Han, Chang-Ping Liu. Automatic Evaluation Algorithm of Fingerprint Images Quality (In Chinese). Journal of Computer Engineering, 33(19):4-6, 2007. </p>
                      </li>
                      <li><p>Zhi Han, Chang-Ping Liu. A Robust Method of Singular Point Detection from Fingerprint Image (In Chinese). Journal of Computer Engineering, 32(20):30-32, 2006. </p>
                      </li>
                      <li><p>Zhi Han, Chang-Ping Liu, Xu-Cheng Yin. An Offline Handwritten Character Segmentation Algorithm for Mail Address (In Chinese). Journal of Chinese Information Processing, 20(1):85-90, 2006. </p>
                      </li>
                      <li><p>Zhi Han, Chang-Ping Liu. Fingerprint Classification based on Statistical features and Singular Point Information. Proceedings of International Workshop on Biometric Recognition Systems (IWBRS 2005), LNCS 3781:119?126, 2005. </p>
                      </li>
                      <li><p>Zhi Han, Chang-Ping Liu, Xu-Cheng Yin. A Two-Stage Chinese Handwritten Character Segmentation Approach in Mail Address Recognition. IEEE International Conference on Document Analysis and Recognition 2005 (ICDAR'05), 1:111-115, 2005. </p>
                      </li>
                      <li><p>Xu-Cheng Yin, Chang-Ping Liu, Zhi Han. Financial Document Image Coding with Regions of Interest Using JPEG2000. IEEE International Conference on Document Analysis and Recognition 2005 (ICDAR'05), 1:96-100, 2005. </p>
                      </li>
                      <li><p>Xu-Cheng Yin, Chang-Ping Liu, Zhi Han. Feature Combination Using Boosting. Pattern Recognition Letters, 26:2195-2205, 2005. </p>
                      </li>
                      <li><p>Xu-Cheng Yin, Shi-Sheng Jiang, Zhi Han, Chang-Ping Liu. A Hierarchical Method for Form Classification of Financial Document Images (In Chinese). Journal of Chinese Information Processing, 19(6):71-77, 2005. </p>
                      </li>
                      <li><p>Xu-Cheng Yin, Zhi Han, Chang-Ping Liu. Selective Bagging Based Incremental Learning. IEEE International Conference on Machine Learning and Cybernetics 2004 (ICMLC'04), 2412-2417, 2004. </p>
                      </li>
                      <li><p>Jin Jian-Ming, Zhi Han, Q.R.Wang. Mathematical Expression Analysis. Proceedings of IEEE International Conference on Machine Learning and Cybernetics 2002 (ICMLC'02), 2:1038-1043.2002.</p>
                      </li>
                      </ol>
                      <h3>讲授课程</h3>
                      <ul>
                      <li><p>本科生《软件工程》（校级精品课程）</p>
                      </li>
                      <li><p>本科生《数字图像处理》</p>
                      </li>
                      <li><p>研究生MSE 《软件工程》</p>
                      </li>
                      </ul>
                      <h3>社会兼职</h3>
                      <ul>
                      <li><p>美国计算机协会（ACM）会员</p>
                      </li>
                      <li><p>中国计算机学会（CCF）会员</p>
                      </li>
                      <li><p>《自动化学报》审稿人</p>
                      </li>
                      <li><p>《计算机科学》审稿人</p>
                      </li>
                      <li><p>《计算机应用》审稿人</p>
                      </li>
                      </ul>
                  
                  <div class="divider dotted clearfix"><span></span></div>
                  
                  </div>
                </div>
            
                
              </div>
            </div>
          </div>
            
          
        </div>
      </div>
    </section>
    <%@include file="footer.jsp" %>
  </body>
</html>
