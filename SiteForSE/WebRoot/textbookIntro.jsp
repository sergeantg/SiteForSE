<%@include file="declar.jsp" %>

<html>

  <head>
  	<%@include file="head.jsp" %>
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
	    <a href="teacherIntro.jsp">教材简介</a> <span class="divider">/</span>
	    </li>
	  </ul>
      
        <div class="row-fluid">
          
          
          <!--sidebar-->
          
          <aside class="span3 sidebar">
            
            <div class="well" style="padding: 8px 0;">
              <ul class="nav nav-list">
                <li class="nav-header">关于</li>
                <li><a href="teacherIntro.jsp"><i class="icon-user"></i> 教师介绍</a></li>
                <li class="active"><a href="textbookIntro.jsp"><i class="icon-book"></i> 教材简介</a></li>
                <li><a href="courseIntro.jsp"><i class="icon-star"></i>课程简介</a></li>
                <li ><a href="about.jsp"><i class="icon-white icon-info-sign"></i> About Us</a></li>
                <li class="divider"></li>
              </ul>
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
                  <div class="span12"><h1>教材简介</h1></div>
                </div>
                    <!--row 1-->
                    <div class="row-fluid">
                      <div class="span6 peIsotopeItem filter-link filter-image">
                        
                        <div class="portfolioItem">
                            <img src="img/content/se.jpg" alt="project" />
                             <span></span>
                          
                          <div class="title">
                            <span class="icon-file"></span><a href="http://s.etao.com/search?q=%C8%ED%BC%FE%B9%A4%B3%CC%A3%BA%CA%B5%BC%F9%D5%DF%B5%C4%D1%D0%BE%BF%B7%BD%B7%A8%A3%A8%D4%AD%CA%E9%B5%DA7%B0%E6%A3%A9&initiative_id=wwwetao_20140416">软件工程：实践者的研究方法（原书第7版）</a>
                          </div>
                          <p>Roger S. Pressman著，郑人杰 等译，机械工业出版社</p>
                        </div>  
                      </div>
                      
                      
                      <div class="span6 peIsotopeItem filter-image filter-lightbox filter-project">
                        
                        <div class="portfolioItem">

                            <img src="img/content/se1.png" alt="project" />
                             <span></span>
                        
                          <div class="title">
                            <span class="icon-film"></span><a href="http://s.etao.com/search?q=%C8%ED%BC%FE%B9%A4%B3%CC%A3%A8%D4%AD%CA%E9%B5%DA9%B0%E6%A3%A9&initiative_id=setao_20140416&style=grid">软件工程（原书第9版）</a>
                          </div>
                          <p>Ian Sommerville 著，程成 等译，机械工业出版社</p>
                        </div>  
                      </div>
                      
                    </div>
                    <!--end row 1-->

                    <!--row 2-->
                    <div class="row-fluid">
                      <div class="span6 peIsotopeItem">
                        
                        <div class="portfolioItem">
                            <img src="img/content/seoo.jpg" alt="project" />
                             <span></span>
              
                          <div class="title">
                            <span class="icon-picture"></span><a href="http://s.etao.com/search?q=%C3%E6%CF%F2%B6%D4%CF%F3%D3%EB%B4%AB%CD%B3%C8%ED%BC%FE%B9%A4%B3%CC&initiative_id=setao_20140416&style=grid">面向对象与传统软件工程（原书第8版)</a>
                          </div>
                          <p>Stephen R.Schach著，机械工业出版社</p>
                        </div>  
                      </div>
                      
                      
                      <div class="span6 peIsotopeItem filter-project filter-video">
                        
                        <div class="portfolioItem">
                            <img src="img/content/seitr.png" alt="project" />
                             <span></span>
                          
                          <div class="title">
                            <span class="icon-film"></span><a href="http://s.etao.com/search?q=%C8%ED%BC%FE%B9%A4%B3%CC%B5%BC%C2%DB%A3%A8%B5%DA5%B0%E6%A3%A9&initiative_id=setao_20140416&style=grid">软件工程导论（第5版）</a>
                          </div>
                          <p>张海藩著，清华大学出版社</p>
                        </div>  
                      </div>
                      
                    </div>
                    <!--end row 2-->

                
                <div class="row-fluid">
                  <div class="span12" >
                  
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