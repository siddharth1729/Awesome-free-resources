<!DOCTYPE html>  
<html>  
<head> 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Fortran Compiler - Online Fortran Editor - Online Fortran IDE - Fortran Coding Online - Practice Fortran Online - Execute Fortran Online - Compile Fortran Online - Run Fortran Online</title>
<meta name="Description" content="Online Fortran Compiler, Online Fortran Editor, Online Fortran IDE, Fortran Coding Online, Practice Fortran Online, Execute Fortran Online, Compile Fortran Online, Run Fortran Online, Online Fortran Interpreter, Compile and Execute FORTRAN-95 Online (GNU Fortran, GCC v7.1.1)"/>
<meta name="Keywords" content="Online Fortran Compiler, Online Fortran Editor, Online Fortran IDE, Fortran Coding Online, Practice Fortran Online, Execute Fortran Online, Compile Fortran Online, Compile and Execute FORTRAN-95 Online (GNU Fortran, GCC v7.1.1), compile, execute, programs, online, linux, experience, cloud, computing, source code, dropbox, googledrive, onedrive, programming, java, jsp, cold fusion, c, c++, pascal, fortran, php, perl, ruby, python, browsers, iphones, ipads, smart tv."/>
<link rel="shortcut icon" href="https://www.tutorialspoint.com/codingground/images/favicon.ico" type="image/x-icon" />
<base href="https://www.tutorialspoint.com">
<link rel="stylesheet" type="text/css" href="https://www.tutorialspoint.com/themes/easyui/gray/easyui.css">
<link rel="stylesheet" type="text/css" href="https://www.tutorialspoint.com/themes/css/icon.css">
<link rel="stylesheet" type="text/css" href="https://www.tutorialspoint.com/cg/cg.css">
<style>
#privacy-banner {
    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
    max-width: 100%;
    padding: 1rem .5rem;
    background: #fff;
    z-index: 1030;
    color: #000;
    font-size: 14px;
    margin: 0;
    display: none;
    border-top: 2px solid rgb(130, 130, 130);
  }
  #privacy-banner p {
    margin: 0;
    color: #000;
    text-align: center;
  }
  #privacy-banner a {
    text-decoration: none;
    margin: 20px auto 0 auto;
    display: block;
    max-width: 150px;
  }
  #privacy-banner a:hover {
    text-decoration: underline;
  }
  #banner-learn {
    color: #000;
  }
  #banner-accept {
    padding: 7px 15px;
    color: #fff;
    border-radius: 5px;
    background:#737373;
  }
  @media (min-width: 768px) {
    #privacy-banner {
      padding: 1.5rem .5rem;
    }
    #privacy-banner a {
      display: inline-block;
      margin: 0 10px;
    }
}
</style>
<script data-cfasync="false" type="text/javascript">(function(w, d) { var s = d.createElement('script'); s.src = '//cdn.adpushup.com/40046/adpushup.js'; s.type = 'text/javascript'; s.async = true; (d.getElementsByTagName('head')[0] || d.getElementsByTagName('body')[0]).appendChild(s); })(window, document);</script>
</head>
<body class="easyui-layout" id="cc">
<div id="loading"></div>
<div id="devices">
<div class="preview">
   <a href="javascript:void(0);"><img id="desktop_preview" style="margin-top:40px; width:60px; clear:both" src="/images/desktop_icon.png" alt="Desktop Preview"/></a>
<div style="font-size: 12px; color:#545454; margin-bottom: 20px;border-bottom:1px dotted #ccc; padding-bottom:15px;">Desktop<br>Preview</div>
</div>
<div class="preview">
   <a href="javascript:void(0);"><img id="portrait_phone_preview" style="margin-top:10px; width:25px;" src="/images/phone_portrait_icon.png" alt="Portrait Phone Preview"/></a><br>
   <div style="font-size: 12px; color:#545454; margin-bottom: 20px;border-bottom:1px dotted #ccc; padding-bottom:15px;">Mobile<br>320x568</div>
</div>
<div class="preview">
   <a href="javascript:void(0);"><img id="landscape_phone_preview" style="margin-top:10px; width:40px;" src="/images/phone_landscape_icon.png" alt="Landscape Phone Preview"/></a><br>
   <div style="font-size: 12px; color:#545454; margin-bottom: 20px;border-bottom:1px dotted #ccc; padding-bottom:15px;">Mobile<br>568x320</div>
</div>
<div class="preview">
   <a href="javascript:void(0);"><img id="portrait_pad_preview" style="margin-top:10px; width:35px;" src="/images/ipad_portrait_icon.png" alt="Portrait Pad Preview"/></a><br>
   <div style="font-size: 12px; color:#545454; margin-bottom: 20px;border-bottom:1px dotted #ccc; padding-bottom:15px;">Tablet<br>768x1024</div>
</div>
<div class="preview">
   <a href="javascript:void(0);"><img id="landscape_pad_preview" style="margin-top:10px; width:50px;" src="/images/ipad_landscape_icon.png" alt="Landscape Pad Preview"/></a>
   <div style="font-size: 12px; color:#545454; margin-bottom: 20px;border-bottom:0px; padding-bottom:15px;">Tablet<br>1024x768</div>
</div>
</div>
<div id="handle"></div>
<form id="ff">
<input type="hidden" name="lang"/>
<input type="hidden" name="device"/>
<input type="hidden" name="code"/>
<input type="hidden" name="stdinput"/>
<input type="hidden" name="ext"/>
<input type="hidden" name="compile"/>
<input type="hidden" name="execute"/>
<input type="hidden" name="mainfile"/>
<input type="hidden" name="uid" value="6965916"/>
<div id="sign" class="easyui-window" title="Coding Ground" data-options="iconCls:'icon-login',modal:true, maximizable:false, closed:true, minimizable:false" style="width:530px;height:475px;padding:10px;"></div>
<iframe id="download" style="display:none"></iframe>
<div data-options="region:'north'" id="north" style="height:55px; width:100%;overflow:hidden;background:url(/images/top_bg.png); ">
   <a href='https://www.tutorialspoint.com/codingground.htm'>
      <img src="/cg/images/logo.png" alt="Coding Ground" style="padding:5px; padding-right:0px; float:left; margin-top: 3px;"/>
   </a>
   <h1 class="main-title" id="main-title">Compile and Execute FORTRAN-95 Online</h1><span id="edit-title"><a href="javascript:void(0);" class="easyui-linkbutton" onclick="setProjectTitle()" data-options="plain:true,iconCls:'icon-edit'" style="float:right"></a></span>
 <div class="easyui-panel,border:false,doSize:false" style="margin:12px 0px 0px 0px; float:right;">
<!--
   <a id="help" onclick="openHelp();" href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-help', plain:true" style="float:right"></a>
-->
   <a id="login" onclick="openLogin();" href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-login', plain:true" style="float:right">Login</a>
   <a id="logout" href="javascript:void(0);" class="easyui-menubutton" data-options="menu:'#mm1', iconCls:'icon-login'" style="float:right;display:none;">Logout</a>
   <a id="view" href="javascript:void(0);" class="easyui-menubutton" data-options="menu:'#mm3',iconCls:'icon-setting'" style="float:right">Setting</a>
   <a id="edit" href="javascript:void(0);" class="easyui-menubutton" data-options="menu:'#mm2',iconCls:'icon-edit'" style="float:right">Edit</a>
   <a id="project" href="javascript:void(0);" class="easyui-menubutton" data-options="menu:'#mm4', plain:true, iconCls:'icon-project'" style="float:right">Project</a>
   <a id="fork" href="javascript:void(0);" class="easyui-linkbutton" onclick="forkProject()" data-options="plain:true,iconCls:'icon-fork'" style="float:right"><b>Fork</b></a>
  </div>
</div>
<div id="mm1" style="width:150px;">
   <div onclick="getProjects()"  data-options="iconCls:'icon-list-project'">My Projects</div>
   <div class="menu-sep"></div>
   <div onclick="openChangePassword()" data-options="iconCls:'icon-password'">Change Password</div>
   <div onclick="userProfile()" data-options="iconCls:'icon-login'">My Profile</div>
   <div class="menu-sep"></div>
   <div onclick="userLogout()" data-options="iconCls:'icon-logout'">Logout</div>
</div>
<div id="mm2" style="width:200px;">
   <div id="undo" data-options="iconCls:'icon-undo'">Undo</div>
   <div id="redo" data-options="iconCls:'icon-redo'">Redo</div>
   <div class="menu-sep"></div>
   <div id="cut" data-options="iconCls:'icon-cut'">Cut</div>
   <div id="copy" data-options="iconCls:'icon-copy'">Copy</div>
   <div id="paste" data-options="iconCls:'icon-paste'">Paste</div>
   <div id="delete" data-options="iconCls:'icon-delete'">Delete</div>
   <div id="select" data-options="iconCls:'icon-select'">Select All</div>
   <div class="menu-sep"></div>
   <div id="find" data-options="iconCls:'icon-find'">Find</div>
   <div id="findreplace" data-options="iconCls:'icon-replace'">Find and Replace</div>
</div>
<div id="mm3" style="width:200px;">
   <div id="editor-theme" data-options="iconCls:'icon-editor-theme'"><span>Editor Theme</span>
           <div>
                <div onclick="setEditorTheme('crimson_editor');">Crimson</div>
                <div onclick="setEditorTheme('eclipse');">Eclipse</div>
                <div onclick="setEditorTheme('github');">Github</div>
                <div onclick="setEditorTheme('solarized_dark');">Solarized</div>
                <div onclick="setEditorTheme('cobalt');">Cobalt</div>
                <div onclick="setEditorTheme('kr_theme');">krTheme</div>
                <div onclick="setEditorTheme('monokai');">Monokai</div>
                <div onclick="setEditorTheme('terminal');">Terminal</div>
                <div onclick="setEditorTheme('textmate');">Textmate</div>
                <div onclick="setEditorTheme('twilight');">Twilight</div>
                <div onclick="setEditorTheme('vibrant_ink');">Vibrant Ink</div>
            </div>
   </div>
   <div id="font-size" data-options="iconCls:'icon-font-size'"><span>Font Size</span>
            <div>
                <div onclick="setEditorFontSize('8');">8px</div>
                <div onclick="setEditorFontSize('9');">9px</div>
                <div onclick="setEditorFontSize('10');">10px</div>
                <div onclick="setEditorFontSize('11');">11px</div>
                <div onclick="setEditorFontSize('12');">12px</div>
                <div onclick="setEditorFontSize('13');">13px</div>
                <div onclick="setEditorFontSize('14');">14px</div>
                <div onclick="setEditorFontSize('15');">15px</div>
                <div onclick="setEditorFontSize('16');">16px</div>
                <div onclick="setEditorFontSize('17');">17px</div>
                <div onclick="setEditorFontSize('18');">18px</div>
                <div onclick="setEditorFontSize('20');">20px</div>
                <div onclick="setEditorFontSize('22');">22px</div>
                <div onclick="setEditorFontSize('24');">24px</div>
            </div>
   </div>
   <div id="tab-size" data-options="iconCls:'icon-tab-size'"><span>Tab Size</span>
            <div>
                <div onclick="setEditorTabSize('1');">1</div>
                <div onclick="setEditorTabSize('2');">2</div>
                <div onclick="setEditorTabSize('3');">3</div>
                <div onclick="setEditorTabSize('4');">4</div>
                <div onclick="setEditorTabSize('5');">5</div>
                <div onclick="setEditorTabSize('6');">6</div>
                <div onclick="setEditorTabSize('7');">7</div>
                <div onclick="setEditorTabSize('8');">8</div>
            </div>
   </div>
   <div class="menu-sep"></div>
   <div onclick="setEditorInvisible(true);"  data-options="iconCls:'icon-show-invisible'">Show Invisible</div>
   <div onclick="setEditorInvisible(false);" data-options="iconCls:'icon-hide-invisible'">Hide Invisible</div>
   <div class="menu-sep"></div>
   <div onclick="setEditorGutter(true);" data-options="iconCls:'icon-show-gutter'">Show Line No</div>
   <div onclick="setEditorGutter(false);" data-options="iconCls:'icon-hide-gutter'">Hide Line No</div>
</div>
<div id="mm4" style="width:200px;">
     <div onclick="createProject('https://www.tutorialspoint.com/codingground.htm')" data-options="iconCls:'icon-new-project'"><span>New Project</span></div>
     <div onclick="saveProject();" data-options="iconCls:'icon-save-project'">Save Project</div>
     <div onclick="openGenerateLink();" data-options="iconCls:'icon-share-project'">Share Project</div>
     <div id="searchproject" onclick="openSearchProject();" data-options="iconCls:'icon-search'">Search Project</div>
     <div class="menu-sep"></div>
     <div onclick="openCompileOptions();" data-options="iconCls:'icon-share-project'">Compile Options</div>
</div><!--HEADER ENDS -->
<div id="terminal-tools">
   <a href="#" onclick="setTerminalMode('H')" class="easyui-linkbutton icon-color" plain="true" iconCls="icon-v-terminal" alt="Vertical Windows"></a>
   <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-minimize" id="minimize"></a>
   <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-mediumize" id="mediumize"></a>
   <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-maximize" id="maximize"></a>
</div>
<div id="east" data-options="region:'east',iconCls:'icon-result', collapsible:false, title:'Result', split:true, tools:[{ iconCls:'icon-v-terminal', handler:function(){setTerminalMode('H')} }, {iconCls:'icon-minimize', handler:function(){setMinimize('V')}}, {iconCls:'icon-maximize', handler:function(){setMaximize('V')}}]" style="width:50%;">
<div id="eastcover" class="desktop">
<div id="googleadv" style="text-align:center;position:relative;top:25%;">
<div style="padding: 10px; display: inline-block;">
<div id="5c0affd5-724a-475c-bfcd-cecbc7660c36" class="_ap_apex_ad">
	<script>
		var adpushup = adpushup || {};
		adpushup.que = adpushup.que || [];
		adpushup.que.push(function() {
			adpushup.triggerAd("5c0affd5-724a-475c-bfcd-cecbc7660c36");
		});
	</script>
</div>
</div>
<div style="padding: 10px; display: inline-block;">
<div id="430c9911-782f-495d-88f9-69f58ca8c9a4" class="_ap_apex_ad">
	<script>
		var adpushup = adpushup || {};
		adpushup.que = adpushup.que || [];
		adpushup.que.push(function() {
			adpushup.triggerAd("430c9911-782f-495d-88f9-69f58ca8c9a4");
		});
	</script>
</div>
</div>
</div>
<iframe id="eastframe" class="desktop"></iframe>
</div>
</div>
<div id="west" data-options="region:'west',split:false" style="width:1px;"></div>
<div id="south" data-options="region:'south',collapsible:false, split:true, tools:[{ iconCls:'icon-h-terminal', handler:function(){setTerminalMode('V')}},  {iconCls:'icon-minimize', handler:function(){setMinimize('H')}}, {iconCls:'icon-maximize', handler:function(){setMaximize('H')}}]" style="height:45%;">
<div id="southcover" class="desktop"><iframe id="southframe" class="desktop"></iframe></div>
</div><!--FOOTER ENDS -->
<div data-options="region:'center'" id="center"  style="padding:0px;background:#eee;"><!--CODE AREA STARTS -->
<div data-options="fit:true,border:false,tools:'#tab-tools',toolPosition:'left'" id="codebox" class="easyui-tabs" style="width:50%;">
</div>
<div id="tab-tools" style="border-top:0px; border-right:0px;">
<div id='wait' style='display:none'>
<img style="margin-left:4px;margin-top:3px;width:28px; height:28px;" alt="Loading..." src='/images/loading.gif'/>
</div>
<a href="javascript:void(0)" id="web_view"  class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-execute-project'" style="white-space:nowrap;"> <b>Preview</b></a>
<span style="white-space:nowrap;" id="web_view_space">|</span>
<a href="javascript:void(0)" id="execute"  class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-execute-project'" style="white-space:nowrap;"> <b>Execute</b></a>
<span style="white-space:nowrap;" id="execute_space">|</span>
<a href="javascript:void(0)" id="embed"  onclick="openGenerateLink()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-share-project'" style="white-space:nowrap;"><b>Share</b></a>
</div>
</div><!--CODE AREA STARTS -->
</form>
<script src="https://www.tutorialspoint.com/themes/easyui/jquery.min.js"></script>
<script src="https://www.tutorialspoint.com/themes/easyui/jquery.easyui.min.js"></script>
<script src="https://www.tutorialspoint.com/codingground/ace/src-min/ace.js" charset="utf-8"></script>
<script>
/* Copyright Tutorials Point (India) Private Limited */
/* Its purely illegal to reproduce or use this code in any of the applications outside Tutorials Point (India) Private Limited */
var SERVER = "https://www.tutorialspoint.com/cg";
var HOME = "https://www.tutorialspoint.com";
var langid = "fortran";
var preview = 0;
var compile = "gfortran -std=gnu *.f95 -o main";
var execute = "main";
var filename = "main.f95";
var mainfile = "main.f95";
var modename = "sql";
var version = "GNU Fortran, GCC v7.1.1";
var opt = "new";
var projectid = "";
var projecttitle = "Compile and Execute FORTRAN-95 Online";
var userid = 0;
var username = "root";
var ext = "f95";
</script>
<script src="https://www.tutorialspoint.com/cg/cg.min.js"></script>
<script src="https://www.google-analytics.com/urchin.js"></script>
<script>
_uacct = "UA-32077377-1";
urchinTracker();
</script>
</body>
</html>
