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
                <h3>发表新帖</h3>
            <form id="newPost" class="form" action="" method="post">
                <input id="csrf_token" name="csrf_token" type="hidden" value="1399638660.48##3a3a81193902c3f600af6e446b1360fbd4435525">            
                <input type="hidden" value="0" name="course_id" id="course_id">            
                <div class="post-eva">
                    <div class="post-info">
                        <label class="form-label" for="postTitle"></label>
                        <input type="text" name="title" id="title" class="post-title" placeholder="请在这里输入你的标题" autofocus="" required="" value=""></div>
                        <textarea class="neirong" name="content" id="content" rows="20" rols="40" placeholder="请在此处输入你的内容"></textarea>
<!--                     <div class="post-info post-content">

                        <div id="mce_10" class="mce-tinymce mce-container mce-panel" hidefocus="1" tabindex="-1" role="application" style="visibility: hidden; border-width: 1px; width: 583px; overflow: visible;">
                            <div id="mce_10-body" class="mce-container-body mce-stack-layout" style="overflow: visible;">
                                <div id="mce_11" class="mce-toolbar-grp mce-container mce-panel mce-first mce-stack-layout-item" hidefocus="1" tabindex="-1" role="group" style="position: static; width: 100%; top: 0px; border-top-width: 0px; border-bottom-width: 0px;">
                                    <div id="mce_11-body" class="mce-container-body mce-stack-layout">
                                        <div id="mce_12" class="mce-container mce-toolbar mce-first mce-last mce-stack-layout-item" role="toolbar">
                                            <div id="mce_12-body" class="mce-container-body mce-flow-layout">
                                                <div id="mce_13" class="mce-container mce-first mce-flow-layout-item mce-btn-group" role="group">
                                                    <div id="mce_13-body">
                                                        <div id="mce_0" class="mce-widget mce-btn mce-btn-normal mce-first" tabindex="-1" aria-labelledby="mce_0" role="button" aria-label="Bold">
                                                            <button role="presentation" type="button" tabindex="-1"> <i class="mce-ico mce-i-bold"></i>
                                                            </button>
                                                        </div>
                                                        <div id="mce_1" class="mce-widget mce-btn mce-btn-normal mce-last" tabindex="-1" aria-labelledby="mce_1" role="button" aria-label="Italic">
                                                            <button role="presentation" type="button" tabindex="-1"> <i class="mce-ico mce-i-italic"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="mce_14" class="mce-container mce-flow-layout-item mce-btn-group" role="group">
                                                    <div id="mce_14-body">
                                                        <div id="mce_2" class="mce-widget mce-btn mce-btn-normal mce-first" tabindex="-1" aria-labelledby="mce_2" role="button" aria-label="Insert/edit link">
                                                            <button role="presentation" type="button" tabindex="-1">
                                                                <i class="mce-ico mce-i-link"></i>
                                                            </button>
                                                        </div>
                                                        <div id="mce_3" class="mce-widget mce-btn mce-btn-gkimage mce-btn-normal" tabindex="-1" aria-labelledby="mce_3" role="button" aria-label="Insert image">
                                                            <button role="presentation" type="button" tabindex="-1">
                                                                <i class="mce-ico mce-i-image"></i>
                                                            </button>
                                                        </div>
                                                        <div id="mce_4" class="mce-widget mce-btn mce-btn-normal" tabindex="-1" aria-labelledby="mce_4" role="button" aria-label="Insert/edit video">
                                                            <button role="presentation" type="button" tabindex="-1">
                                                                <i class="mce-ico mce-i-media"></i>
                                                            </button>
                                                        </div>
                                                        <div id="mce_5" class="mce-widget mce-btn mce-btn-normal mce-last" tabindex="-1" aria-labelledby="mce_5" role="button" aria-label="Blockquote">
                                                            <button role="presentation" type="button" tabindex="-1">
                                                                <i class="mce-ico mce-i-blockquote"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="mce_15" class="mce-container mce-flow-layout-item mce-btn-group" role="group">
                                                    <div id="mce_15-body">
                                                        <div id="mce_6" class="mce-widget mce-btn mce-btn-normal mce-first" tabindex="-1" aria-labelledby="mce_6" role="button" aria-label="Bullet list">
                                                            <button role="presentation" type="button" tabindex="-1">
                                                                <i class="mce-ico mce-i-bullist"></i>
                                                            </button>
                                                        </div>
                                                        <div id="mce_7" class="mce-widget mce-btn mce-btn-normal" tabindex="-1" aria-labelledby="mce_7" role="button" aria-label="Numbered list">
                                                            <button role="presentation" type="button" tabindex="-1">
                                                                <i class="mce-ico mce-i-numlist"></i>
                                                            </button>
                                                        </div>
                                                        <div id="mce_8" class="mce-widget mce-btn mce-btn-normal mce-last" tabindex="-1" aria-labelledby="mce_8" role="button" aria-label="插入公式">
                                                            <button role="presentation" type="button" tabindex="-1">
                                                                <i class="mce-ico mce-i-formula"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="mce_16" class="mce-container mce-last mce-flow-layout-item mce-btn-group" role="group">
                                                    <div id="mce_16-body">
                                                        <div id="mce_9" class="mce-widget mce-btn mce-btn-normal mce-first mce-last" tabindex="-1" aria-labelledby="mce_9" role="button" aria-label="Fullscreen">
                                                            <button role="presentation" type="button" tabindex="-1">
                                                                <i class="mce-ico mce-i-fullscreen"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="mce_17" class="mce-edit-area mce-container mce-panel mce-stack-layout-item" hidefocus="1" tabindex="-1" role="group" style="border-width: 1px 0px 0px;">
                                    <iframe id="postDesc_ifr" src="javascript:""" frameborder="0" allowtransparency="true" title="在编辑区按ALT-F9打开菜单，按ALT-F10打开工具栏，按ALT-0查看帮助" style="width: 100%; height: 338px; display: block; margin-top: 0px;"></iframe>
                                </div>
                                <div id="mce_18" class="mce-dropzone-container mce-container mce-panel mce-last mce-stack-layout-item" hidefocus="1" tabindex="-1" role="group" style="position: absolute; margin-left: 583px; bottom: auto; z-index: 200; height: 374px; margin-top: -375px;">
                                    <div id="mce_18-body" class="mce-container-body mce-flow-layout">
                                        <div id="mce_19" class="mce-container mce-first mce-flow-layout-item mce-btn-group" role="group">
                                            <div id="mce_19-body">
                                                <div id="mce_20" class="mce-widget mce-btn mce-insert-image-url mce-first mce-last" tabindex="-1" aria-labelledby="mce_20" role="button" aria-label="上传或直接插入外链图片">
                                                    <button role="presentation" type="button" tabindex="-1">外链图片</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="mce_21" class="mce-dropzone mce-container mce-panel mce-last mce-flow-layout-item dz-clickable" hidefocus="1" tabindex="-1" role="group" style="height: 328px;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <textarea name="html" id="postDesc" class="post-desc" aria-hidden="true" style="display: none;"></textarea>
                    </div> -->

                    <input id="captcha" name="captcha" type="hidden" value=""></div>
                <div class="form-do">                   
                    <input type="submit" class="btn btn-info btn-large" value="发布">
                    <a href="forum.jsp" class="btn btn-success btn-large">取消</a>
                    </div>
            </form>


            </div>
        </div>
    </section>
    <%@include file="footer.jsp"%>

</body>

</html>