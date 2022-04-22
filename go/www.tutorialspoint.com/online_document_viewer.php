<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Document Viewer</title>
<meta name="Description" content="Online Document Viewer - Online Tools for Working Professionals and Students" />
<link rel="stylesheet" type="text/css" href="/themes/css/gray/easyui.css">
<link rel="stylesheet" type="text/css" href="/themes/css/icon.css">
<link href="https://fonts.googleapis.com/css?family=Oswald:700" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/themes/css/tools-common.css">
<script src="/themes/js/jquery.min.js"></script>
<script src="/themes/easyui/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout" id="cc">
<div id="loading"></div>
<div data-options="region:'north'" style="height:65px; width:100%;overflow:hidden;background:url(/images/top_bg.png);">
<a href='https://www.tutorialspoint.com/'>
<img src="green/images/logo.png" style="height:50px;padding:5px;float:left;" alt="Tutorials Point"/>
</a>
<h1 class="main-title">Online Document Viewer</h1>
<div class="easyui-panel,border:false" style="margin:18px 0px 0px 0px; float:right;">
<a id="help" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-help', plain:true" style="float:right">Help</a>
<a id="tutorials" target="_blank" href="http://www.tutorialspoint.com/tutorialslibrary.htm" class="easyui-linkbutton" data-options="iconCls:'icon-library', plain:true" style="float:right; position:relative; top:-1px;">Tutorials</a>
<a id="codingground" href="http://www.tutorialspoint.com/codingground.htm" class="easyui-linkbutton l-btn l-btn-small l-btn-plain" data-options="iconCls:'', plain:true" style="font-size:12px;float:right; position:relative; top:-1px;"><i class="fa-code"></i> Coding Ground</a>
<a id="system" href="#" class="easyui-menubutton" data-options="menu:'#mm5', plain:true, iconCls:'icon-tools'" style="float:right">Dev Tools</a>
</div>
<div id="mm5" style="width:200px;">
   <div data-options="plain:true, iconCls:'icon-image-optimizer'"><a href="/online_image_optimizer.htm" style="color:#424242;text-decoration:none;">Online Image Optimizer</a></div>
   <div class="menu-sep"></div>
   <div data-options="plain:true, iconCls:'icon-image-editor'"><a href="/online_latex_editor.php" style="color:#424242;text-decoration:none;">Online LaTex Editor</a></div>
   <div class="menu-sep"></div>
   <div data-options="plain:true, iconCls:'icon-sum'"><a href="/latex_equation_editor.htm" style="color:#424242;text-decoration:none;">LaTex Equation Editor</a></div>
   <div class="menu-sep"></div>
   <div data-options="plain:true, iconCls:'icon-whiteboard'"><a href="/whiteboard.htm" style="color:#424242;text-decoration:none;" title="Web Collaboration Whiteboard">Whiteboard</a></div>
   <div class="menu-sep"></div>
   <div data-options="plain:true, iconCls:'icon-image-editor'"><a href="/online_image_editor.htm" style="color:#424242;text-decoration:none;">Online Image Editor</a></div>
   <div class="menu-sep"></div>
   <div data-options="plain:true, iconCls:'icon-xml'"><a href="/online_xml_editor.htm" style="color:#424242;text-decoration:none;">Online XML Editor</a></div>
   <div class="menu-sep"></div>
   <div data-options="plain:true, iconCls:'icon-json'"><a href="/online_json_editor.htm" style="color:#424242;text-decoration:none;">Online JSON Editor</a></div>
   <div class="menu-sep"></div>
   <div data-options="plain:true, iconCls:'icon-refresh'"><a href="/online_file_conversion.htm" style="color:#424242;text-decoration:none;">File Conversion</a></div>
   <div class="menu-sep"></div>
   <div data-options="plain:true, iconCls:'icon-project'"><a href="/online_dev_tools.htm" style="color:#424242;text-decoration:none;">More Tools...</a></div>
</div>
</div>
<div id="center" data-options="region:'center'">
   <div class="convert-heading">
      <h1>Online Document Viewer</h1>
   </div>
   <div style="clear:both;"></div>
   <div id="file-drop-area">    
       <div id="file-drop-bg">
         <form action="https://tools.tutorialspoint.com/convert.php"  method="post" enctype="multipart/form-data" id="file-form">
            <img src="/images/download-icon-optim.png" class="download-icon"/>
            <div>Drop files here or click to upload<div class="clear"></div> 
               <span>Open PDF, PS,  MS Office, Visio, Publisher or Image Document</span>
               <div class="max-size">Upload upto <b>1 GB</b> files</div>
            </div>               
            <input type="file" name="fileUpload[]" value="" id="fileMUpload"/>
            <input type="hidden" name="session" value="" id="session"/>
            <input type="hidden" name="output" value="view" id="output"/>
         </form><div class="fa-arrows-h botharrow"></div>
      </div>  
      <div class="progress" style="visibility: visible;">
         <div class="bar" style="width: 100%;">
            <div class="percent">%</div>
         </div>
      </div>
  </div>
  <div style="width:100%; text-align:center;">
  <div id="resultData"></div>
   <iframe id="download_files" src="" style="width:98.5%; border:0px;"></iframe>
  </div>
  <div style="clear:both;"></div>
</div>
<div data-options="region:'west', split:false" style="padding:0px;width:0px" id="left"><!-- STAGE STARTS --> </div>
<script src="/themes/js/jquery.form.js"></script>
<!--EAST STARTS -->
<div id="east" data-options="region:'east',iconCls:'icon-library', title:'Tutorials', split:true" style="overflow: hidden; width: 110px; background: rgb(142, 142, 142);" title="" class="panel-body layout-body">
   <a href="/cplusplus/index.htm" title="Learn C++" target="_blank">
   <img style="width:100px; height:80px;" src="/images/cplusplus_icon.png" alt="Learn C++">
   </a>
   <a href="/java/index.htm" title="Learn Java" target="_blank">
   <img style="width:100px; height:80px;" src="/images/java_icon.png" alt="Learn Java">
   </a>
   <a href="/python/index.htm" title="Learn Python" target="_blank">
   <img style="width:100px; height:80px;" src="/images/python_icon.png" alt="Learn Python">
   </a>
   <a href="/ruby/index.htm" title="Learn Ruby" target="_blank">
   <img style="width:100px; height:80px;" src="/images/ruby_icon.png" alt="Learn Ruby">
   </a>
   <a href="/swift/index.htm" title="Learn Swift Programming" target="_blank">
   <img style="width:100px; height:80px;" src="/images/swift_icon.png" alt="Learn Swift Programming">
   </a>
   <a href="/scala/index.htm" title="Learn Scala" target="_blank">
   <img style="width:100px; height:80px;" src="/images/scala_icon.png" alt="Learn Scala">
   </a>
</div>
<!--EAST ENDS -->
<!--BOTTOM STARTS -->
<div id="south" data-options="region:'south'" style="overflow:hidden;">
<div class="simple-ad">
      <div class="logo"><a href="index.htm"> <img alt="Tutorials Point" class="img-responsive" src="/scripts/img/logo-footer.png" style="width:60px; height:60px;"> </a></div>
      <ul>
         <li><a href="/about/about_privacy.htm">Privacy Policy</a></li>         
         <li><a href="/about/about_privacy.htm#cookies">Cookies Policy</a></li>
         <li><a href="/about/about_terms_of_use.htm">Terms of Use</a></li>
         <li style="border-right:none;"><a href="/about/contact_us.htm">Contact</a></li>      </ul>
      <div class="cprght">©Copyright 2020. All Rights Reserved.</div>
      <div style="float:right; padding:25px 0px 0px 0px;"> <a href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('http://www.facebook.com/sharer.php?u=' + 'http://www.tutorialspoint.com/online_dev_tools.htm','sharer','toolbar=0,status=0,width=626,height=456,top='+sTop+',left='+sLeft);return false;">
         <img src="/images/facebookIcon.jpg" alt="img">
         </a>         <a href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('http://twitter.com/share?url=' + 'http://www.tutorialspoint.com/online_dev_tools.htm','sharer','toolbar=0,status=0,width=626,height=456,top='+sTop+',left='+sLeft);return false;"><img src="/images/twitterIcon.jpg" alt="img"></a>
         <a href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://www.linkedin.com/cws/share?url=' + 'http://www.tutorialspoint.com/online_dev_tools.htm&amp;title=Online Developers Tools','sharer','toolbar=0,status=0,width=626,height=456,top='+sTop+',left='+sLeft);return false;">
         <img src="/images/linkedinIcon.jpg" alt="img"></a>
         <a href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('https://plus.google.com/share?url=http://www.tutorialspoint.com/online_dev_tools.htm','sharer','toolbar=0,status=0,width=626,height=456,top='+sTop+',left='+sLeft);return false;"><img src="/images/googlePlusIcon.jpg" alt="img">
         </a>
         <a href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('http://www.stumbleupon.com/submit?url=http://www.tutorialspoint.com/online_dev_tools.htm&amp;title=Online Developers Tools','sharer','toolbar=0,status=0,width=626,height=456,top='+sTop+',left='+sLeft);return false;">
         <img src="/images/StumbleUponIcon.jpg" alt="img">
         </a>
         <a href="javascript:void(0)" onclick="var sTop = window.screen.height/2-(218); var sLeft = window.screen.width/2-(313);window.open('http://reddit.com/submit?url=http://www.tutorialspoint.com/online_dev_tools.htm&amp;title=Online Developers Tools','sharer','toolbar=0,status=0,width=626,height=656,top='+sTop+',left='+sLeft);return false;">
         <img src="/images/reddit.jpg" alt="img">
         </a>
      </div>
   </div>
</div>
<!--BOTTOM ENDS -->
<!-- STAGE ENDS -->
<script>
$(document).ready(function() {
   $("#file-drop-area").on('dragenter', function (e){
       $("#file-drop-bg").css("border", "2px dashed #0F705C");
       $("#file-drop-bg").css("opacity", "0.5");
   });
   $("#file-drop-area").on('dragover', function (e){
       $("#file-drop-bg").css('border', '2px dashed #0F705C');
       $("#file-drop-bg").css("opacity", "0.5");
   });
   $("#center").on('dragenter', function (e){
       $("#file-drop-bg").css("border", "2px dashed #B5B5B5");
       $("#file-drop-bg").css("opacity", "1.0");
   });

   $("#file-drop-area").on('dragexit', function (e){
       $("#file-drop-bg").css('border', '2px dashed #B5B5B5');
       $("#file-drop-bg").css("opacity", "1.0");
   });
   $("#file-drop-area").on('drop', function (e){
       $("#file-drop-bg").css('border', '2px dashed #B5B5B5');
       $("#file-drop-bg").css("opacity", "1.0");
   });
   function checkRegExp(s) {    
      var regexp =/^(?:(?:https?|ftp):\/\/)(?:\S+(?::\S*)?@)?(?:(?!10(?:\.\d{1,3}){3})(?!127(?:\.\d{1,3}){3})(?!169\.254(?:\.\d{1,3}){2})(?!192\.168(?:\.\d{1,3}){2})(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))|(?:(?:[a-z\u00a1-\uffff0-9]+-?)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]+-?)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,})))(?::\d{2,5})?(?:\/[^\s]*)?$/i;
      return regexp.test(s);    
   }
   function addhttp(url) {
      url = url.toLowerCase();
      if (!/^(f|ht)tps?:\/\//i.test(url)) {
         url = "https://" + url;
      }   
      return url;
   }
   $('#fileMUpload').change(function(e){	
      var bar = $('.bar');
      var percent = $('.percent');
      var status = $('#status');
      if($(this).get(0).files.length <= 0) {
         $.messager.alert('Alert', 'Please select a file from local drive' ).window({  width:320 });
         $('#fileMUpload').focus();
         return false;
      }
      var fd = new FormData();
      var file_data = $('#fileMUpload')[0].files; // for multiple files
      for(var i = 0;i < file_data.length;i++){
         fd.append("file_"+i, file_data[i]);
      }
      $('form').ajaxForm({
          beforeSend: function() {
              status.empty();
              var percentVal = '0%';
              bar.width(percentVal)
              percent.html(percentVal);
              $("#resultData").html("");
              $(".progress").css({"visibility":"visible"});
              $(".progress").css({"display":"block"});
              $("#loading").css({"visibility":"visible"});
              $("#download_files").css({"visibility":"hidden"});
              $("#file-form").css({"visibility":"hidden"});
          },
          uploadProgress: function(event, position, total, percentComplete) {
              var percentVal = percentComplete + '%';
              bar.width(percentVal)
              percent.html(percentVal);
              if( percentComplete == 100 ){
                  percent.html("File upload is completed...opening file in a moment");
              }
          },
          success: function( data ) {
              $("#fileMUpload").val('');
              $("#loading").css({"visibility":"hidden"});
              $("#download_files").css({"visibility":"visible"});
              $("#download_files").attr("src", data);
              $("#file-form").css({"visibility":"visible"});
              $("#file-drop-area").css({"display":"none"});
              $('#center').animate({
                 scrollTop: $("#resultData").offset().top - 50
              });
              var percentVal = 'Below is your document';
              bar.width(percentVal)
              percent.html(percentVal);
              $(".convert-heading").css({"display":"none"});
              $(".progress").css({"display":"none"});
              $("#download_files").css({"height": $("#center").height()});
          },
          error: function( data ){
              $(".progress").css({"visibility":"hidden"});
              $("#resultData").html("<h1>Opps... either given file is bigger than 1Gb or format is not recognizable</h1>");
              $("#fileMUpload").val('');
              $("#loading").css({"visibility":"hidden"});
              $("#file-form").css({"visibility":"visible"});
              $('#center').animate({
                 scrollTop: $("#resultData").offset().top - 50
              });
          },
          complete: function(xhr) {
	      status.html(xhr.responseText);
	  }
      }); 
      $("form").submit();
   });
   $(".progress").css({"visibility":"hidden"});
   $("#loading").css({"visibility":"hidden"});
   $("#download_files").css({"visibility":"hidden"});
   $("body#cc").css({"visibility":"visible"});
   function guid() {
     function s4() {
       return Math.floor((1 + Math.random()) * 0x10000)
         .toString(16)
         .substring(1);
     }
     return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
       s4() + '-' + s4() + s4() + s4();
   }
   $("#session").val( guid() );
});
</script>
<script src="https://www.google-analytics.com/urchin.js">
</script>
<script type="text/javascript">
_uacct = "UA-232293-6";
urchinTracker();
</script>
</body>
</html>
