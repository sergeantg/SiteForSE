<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="declar.jsp"%>

<html>
<head>
    <%@include file="head.jsp"%></head>

<body>
    <%@include file="header.jsp"%>
    <section class="mainContentWrap">
        <div class="container mainContent">
            <div class="row-fluid">
                <div class="span12 post full">
                  <div class="well">
                    <div class="row-fluid">
                        <div class="span12 post-title">
                            <h3>
                                <a href="forum.jsp">【新手必读】二：MOOC操作指南</a>
                            </h3>
                            <p class="post-meta">
                                Posted on 23 Mar 2012, by
                                <a href="#">Admin</a>
                            </p>
                        </div>
                    </div>
                    <!--post image-->
                    <div class="row-fluid">
                        <div class="span12">
                            <!--no post image--> </div>
                    </div>
                    <!--post content-->
                    <div class="contentWrap">
                        <div class="row-fluid">
                            <div class="span12">

                                <p>
                                    【MOOC启动指南】
                                    MOOC收费吗？
                                    绝大多数课程都是免费的。Coursera 的部分课程提供收费服务“Signature Track”，可以自由选择是否购买。你也可以免费学习有这个服务的课程，并得到证书。

                                    Signature track 能通过追踪照片、打字习惯等方式确认是你本人完成了每一次作业和考试，在课程结束后你将得到更有说服力的证书。具体请看@寒塘月色 更详细的全中文解读《关于Signature Track的统一解答》，也可查看Coursera官方介绍。
                                    edX等平台也有类似的服务，不同平台的名称不同，但实质上是一样的。

                                    英语不好怎么办？
                                    Coursera的英文课程都配有英文视频。只要点击视频下方的CC，或者键盘上按C键即可。
                                    在课程页面按语言筛选，可以查看所有中文字幕或中文授课的课程。
                                    学堂在线的课程由清华和北大提供，多数为中文授课，也有加入中文字幕的国外课程。更重要的是，在这里你可以用中文写作业！
                                </p>
                            </div>
                        </div>
                        <!--end post content--> </div>
                  </div>
                </div>
                <!--end share buttons--> 
            </div>
            <div class="row-fluid" id="comments">
              <div class="well">
                  <div class="span12 commentsWrap">
                    
                    <!--title-->
                    <div class="row-fluid">
                      <div class="span12">
                        <h1 id="comments-title">Comments <span>( 5 )</span></h1>
                      </div>
                    </div>
                    
                    <ul class="commentlist">
                      <li class="comment even depth-1">
                        
                        <!--comment body-->
                        <div class="row-fluid comment-body">
                          <div class="span1 comment-author vcard"><img class="avatar" src="img/content/avatar.jpg" alt="avatar"></div>
                          
                          <div class="span11">
                            <cite class="fn"><a href="http://pixelentity.com/" rel="external nofollow" class="url">Username</a></cite>
                            <div class="comment-meta">
                              <a href="#">April 12, 2012 at 1:28 pm</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetue adipiscing elit. Done codio quisque vol utpat mattis eros. Nullam male suada era tu turpis. Suspendisse urna nibh, viverra noi semper suscipit, po suere a, pede. Nam nulla quam, grav idanon, commodo a, sod ales sit amet, nisi. Sed adipisci ngornare risus. Morbi est est, blandit sit amet, sagitties vel, euismod vel, velit. Pellentesque egestas sem suspen disse. Sed egestas, ante et vulputate volutpat, eros pede sempe rest, vitae luctus metus libero eu augue. Morbi purus lib erot faucit ibus adipiscing, commodo quis, gravida id, est. Sed lectus. </p>
                            <div class="reply pull-right">
                              <a class="comment-reply-link label" href="#">Reply</a>
                            </div>
                          </div>
                        </div>
                        <!--end top level comment body-->
                      
                        
                      </li>
                      
                      <!--new top level comment-->
                      
                      <li class="comment even depth-1">
                        
                        <!--comment body-->
                        <div class="row-fluid comment-body">
                          <div class="span1 comment-author vcard"><img class="avatar" src="img/content/avatar.jpg" alt="avatar"></div>
                          
                          <div class="span11">
                            <cite class="fn"><a href="http://pixelentity.com/" rel="external nofollow" class="url">Username</a></cite>
                            <div class="comment-meta">
                              <a href="#">April 12, 2012 at 1:28 pm</a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetue adipiscing elit. Done codio quisque vol utpat mattis eros. Nullam male suada era tu turpis. Suspendisse urna nibh, viverra noi semper suscipit, po suere a, pede. Nam nulla quam, grav idanon, commodo a, sod ales sit amet, nisi. Sed adipisci ngornare risus. Morbi est est, blandit sit amet, sagitties vel, euismod vel, velit. Pellentesque egestas sem suspen disse. Sed egestas, ante et vulputate volutpat, eros pede sempe rest, vitae luctus metus libero eu augue. Morbi purus lib erot faucit ibus adipiscing, commodo quis, gravida id, est. Sed lectus. </p>
                            <div class="reply pull-right">
                              <a class="comment-reply-link label" href="#">Reply</a>
                            </div>
                          </div>
                        </div>
                        <!--end top level comment body-->
                      
                      </li>
                      
                      
                    </ul>
                    <!--end commentlist-->
                    
                    <div id="respond">
                      <div class="row-fluid">
                        <div class="span12">
                          <h3 id="reply-title">Leave A Comment</h3>
                        </div>
                      </div>
                      
                      <!--comment form-->
                      <div class="row-fluid">
                        <div class="span12">
                          <form action="#" method="post" id="commentform" class="form-horizontal">
                            
                            <div class="comment-form-comment control-group">
                              <div class="controls">
                                <textarea class="span7" id="comment" name="comment" cols="45" rows="8" aria-required="true" placeholder="Your comment here.." style="margin: 0px; width: 530px; height: 228px;"></textarea>
                              </div>
                              <!--<label class="control-label" for="comment">Comment</label>-->
                            </div>
                            
                            <div class="form-submit">
                              <div class="controls">
                                <button class="btn btn-success" type="submit">Post Comment</button>
                                <input type="hidden" name="comment_post_ID" value="5" id="comment_post_ID">
                                <input type="hidden" name="comment_parent" id="comment_parent" value="0">
                              </div>
                            </div>
                          </form>
                        </div>
                      </div>
                      <!--end comment form-->
                      
                      
                    </div>
                    <!--end respond--> 
                     
                  </div>
                  <!--end comments wrap-->
                </div>
                </div>
        </div>
    </div>
</section>
<%@include file="footer.jsp"%>

  <!--back to top button-->
  <a href="#top" id="peBackToTop" class="label btt disabled"><span
    class="icon-chevron-up icon-white"></span> </a>

  <!-- import minified javascript -->
  <script type="text/javascript" src="js/mentor.min.js"></script>
  <script type="text/javascript" src="preview/preview.js"></script>

</body>
</html>