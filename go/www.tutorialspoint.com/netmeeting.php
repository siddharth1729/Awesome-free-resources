<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Net Meeting</title>
<meta name="Description" content="Net Meeting - A free high quality web conferencing tool to have audio, video chat online any time anywhere using laptop, desktop, mobile phone or tablets. Suitable for your business and personal usage."/>
<meta name="Keywords" content="Free, Net, Meeting, Web, Conferencing, Tool, audio, video, chat, mobile, desktop, laptop, tablets "/>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="themes/css/gray/easyui.css">
<link rel="stylesheet" type="text/css" href="themes/css/icon.css">
<link rel="stylesheet" type="text/css" href="themes/css/netmeeting.css">
<script src="themes/js/jquery.min.js"></script>
<script src="themes/easyui/jquery.easyui.min.js"></script>
<script src="themes/js/jquery.ba-resize.min.js"></script>
<script src="themes/js/ion.sound.min.js"></script>
<script src="themes/js/RTCMultiConnection.min.js"></script>
<script src="themes/js/FileBufferReader.min.js"></script>
<script src="themes/js/socket.io.js?v=1"></script>
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
</head>
<body class="easyui-layout" id="cc">
<!--HEADER STARTS -->
<div data-options="region:'north'" style="height:65px; width:100%;overflow:hidden;">
   <a href='http://www.tutorialspoint.com/'>
      <img src="/images/logo.png" height="50px" style="padding:5px; float:left;"/>
   </a>
  <h1 class="meeting"><span>|</span> Net Meeting <span>(A free tool for online video conferencing)</span></h1>
  <div style="margin:18px 0px 0px 0px;">
       <a href="http://www.tutorialspoint.com/" class="easyui-linkbutton" data-options="iconCls:'icon-home-green', plain:true" style="font-size:12px;float:right; margin-right:5px; position:relative; top:-1px;" group=""><span class="l-btn-left l-btn-icon-left">Home</span></a>
       <a id="muteall" href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-mute-small', plain:true" style="font-size:12px;float:right; margin-right:5px; position:relative; top:-1px;" group=""><span class="l-btn-left l-btn-icon-left">Mute All</span></a>
       <a id="raisedoubt" href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-raise-doubt', plain:true" style="font-size:12px;float:right; margin-right:5px; position:relative; top:-1px;" group=""><span class="l-btn-left l-btn-icon-left">Raise Doubt</span></a>
  </div>
  <a href="javascript:void(0);"><div id="owner"></div></a>
</div>
<!--HEADER ENDS -->
<div id="east" data-options="region:'east',split:true,collapsible:true, collapsed:true, iconCls:'icon-chat-small', title:'Text Chat'" style="width:300px;">
<!-- webrtc panel -->
 <div id="webrtcPanel" class="easyui-layout" data-options="fit:true,border:false">
       <div data-options="region:'center'" id="chatParent" style="overflow:hidden; border:0px;">
          <div id="chatContainer"></div>
      </div>
      <div data-options="region:'south',split:false" style="width:100%; border:0px;padding-bottom:40px;">
      <div id="chat-input-box" style="border:1px solid #eee; border-left:0px solid;">
         <input id="input-box" class="easyui-textbox" data-options="buttonText:'Send',prompt:'Enter your text here...',iconWidth:22" style="width:100%; height:40px; border-radius:0px; -webkit-border-radius:0px; -moz-border-radius:0px">
       </div>
      </div>
</div>
</div>
<!--Left Navigation STARTS -->
<div data-options="region:'west',split:false,collapsible:false" style="width:5px;">
</div>
<!--End of Left Navigation -->
<!--BOTTOM STARTS -->
<div id="south" data-options="region:'south',split:true,collapsible:true" style="height:200px; overflow: scroll;">
<div id="videocontext" class="easyui-menu" style="width:150px;">
  <div id="muteUser" data-options="iconCls:'icon-mute-small'">Mute User</div>
  <div id="unmuteUser" data-options="iconCls:'icon-unmute-small'">Unmute User</div>
  <div id="ejectUser" data-options="iconCls:'icon-eject-user'">Remove User</div>
  <div id="clearDoubt" data-options="iconCls:'icon-clear-doubt'">Clear Doubt</div>
</div>
<div class="centered">
    <div style="padding:5px; text-align:center;">
        <h1 id="mheading"><div id="mid" class="easyui-textbox" data-options="prompt:'Enter a Unique Meeting Room ID...'" style="width:303px;height:32px;"></div></h1>
        <h1 id="midheading"></div></h1>
<!--
        <a href="#" id="myself" class="easyui-linkbutton" data-options="width:'150px', height:'62px'"><div id="owner"></div><b>Myself</b></a>
-->
        <a href="#" id="start" class="easyui-linkbutton" data-options="iconCls:'icon-start-meeting',size:'large',iconAlign:'top', width:'150px'"><b>Start Meeting</b></a>
        <a href="#" id="invite" class="easyui-linkbutton" data-options="iconCls:'icon-meeting-invite',size:'large',iconAlign:'top', width:'150px'"><b>Meeting Invite</b></a>
        <a href="#" id="join" class="easyui-linkbutton" data-options="iconCls:'icon-join-meeting',size:'large',iconAlign:'top', width:'150px'"><b>Join Meeting</b></a>
        <a href="#" id="mute" class="easyui-linkbutton" data-options="iconCls:'icon-mute-voice',size:'large',iconAlign:'top', height:'62px', width:'150px'"><b>Mute</b></a>
        <a href="#" id="quit" class="easyui-linkbutton" data-options="iconCls:'icon-quit-meeting',size:'large',iconAlign:'top', width:'150px'"><b>Quit Meeting</b></a>
    </div>
</div>
</div>
<!--BOTTOM ENDS -->
<!--STAGE STARTS -->
<div id="center" data-options="region:'center'" style="height:100%; width:100%">
<div class="centered">
   <img id="mainimg" src="/images/netmeeting.jpg" alt="Net Meeting"/>
   <div class="imgLoader">
      <img src="/images/loading.gif" alt="" width="70" height="70" />
      <div id="wait"></div>
   </div>
</div>
</div>
<!--STAGE ENDS -->
<!-- DIALOG BOX -->
<div id="dd" class="easyui-dialog" title="Meeting Invitation" style="width:600px;height:250px;" data-options="iconCls:'icon-email',resizable:true,modal:true, onOpen:function(){$('.imgLoader').css('visibility', 'hidden');}, onClose:function(){if( $('#center').children().filter('video').length == 0 ){$('.imgLoader').css('visibility', 'visible');}}">
<div id="eid" class="easyui-validatebox" data-options="required:true,validType:'emails', prompt:'Enter Email IDs separated by comma...',buttonText:'Invite'" style="width:70%;height:32px;"></div>
</div>
<script>
$( document ).ready(function( event ) {
     var wCount = 1, hCount = 1, vCount = 0, next = "w";
     var width =  100, height = 100;
     $('#dd').dialog('close');
     $('#cc').layout('collapse','east');
     ion.sound({
        sounds: [{
            name: "bell_ring"
        }],
        path: "/themes/js/sounds/",
        preload: true,
        multiplay: true,
        volume: 0.9
    });

     var user_name;

     $('#eid').textbox({
        onClickButton: function(){
           if($('#eid').validatebox('isValid')){
              var url = "net-invite.php";
              var inputs = {'mid': escape($("#mid").val()), 'emails': $('#eid').val()};
              $.ajax({
                 type: "POST",
                 url: url,
                 data: inputs,
                 dataType: 'json',
                 beforeSend: function(  ) {
                    $('#dd').dialog('close');
                    $("#wait").html("Sending invitation...");
                    $(".imgLoader").css({"visibility":"visible"});
                 },
                 success:function(data){
                    $.messager.alert('Message', data.message);
                    $("#wait").html("Waiting for participants to join...");
                    if( $("#center").children().filter("video").length ){
                        $(".imgLoader").css({"visibility":"hidden"});
                    }
                 },
                 error:function(data){
                    $(".imgLoader").css({"visibility":"hidden"});
                    $.messager.alert('Message', data.message);
                 }
            });
           }
        }
     });
     function validateEmail(value) {
        var regex = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        return (regex.test(value)) ? true : false;
     }

     function validateEmails(string) {
        var result = string.replace(/\s/g, "").split(/,|;/);

        for(var i = 0;i < result.length;i++) {
            if(!validateEmail(result[i])) {
                return false;
            }
        }
        return true;
     }
     $.extend($.fn.validatebox.defaults.rules, {
         emails: {
             validator: function(value){
                return validateEmails( value );
             },
             message: 'Enter correct Email IDs'
         }
     });

    $('#invite').css("display", "none");
    $('#quit').css("display", "none");
    $("#midheading").css("display", "none");
    var connection = new RTCMultiConnection();
    connection.socketURL = 'https://tools.tutorialspoint.com:9001/';
    connection.socketMessageEvent = 'TP-Net-Meeting';
    connection.enableFileSharing = true;
    connection.filesContainer = chatContainer;
    connection.session = {
        audio: true,
        video: true,
        data: true
    };
    connection.sdpConstraints.mandatory = {
        OfferToReceiveAudio: true,
        OfferToReceiveVideo: true
    };
    connection.onmessage = function appendDIV(event) {
         console.log( "Got a message from remote" );
         console.log( event );
         if( event.data && event.data.muteUserStream && event.data.userid == connection.userid ){
             console.log( "Got a mute message from admin..." );
             muted = false;
             $("#mute").trigger("click");
             return;
         }else if( event.data && event.data.muteUserStream ){
             return;
         }else if( event.data && event.data.unmuteUserStream && event.data.userid == connection.userid ){
             muted = true;
             console.log( "Got an unmute message from admin..." );
             $("#mute").trigger("click");
             return;
         }else if( event.data && event.data.unmuteUserStream ){
             return;
         }else if( event.data && event.data.ejectUser && event.data.userid == connection.userid ){
             console.log( "Got an ejectUser message from admin..." );
             $.messager.alert('Alert','Admin has removed you from the meeting');
             setTimeout (function(){
                $("#quit").trigger("click");
             }, 5000);
             return;
         }else if( event.data && event.data.ejectUser ){
             return;
         }else if( event.data && event.data.raiseDoubt && connection.isInitiator ){
             ion.sound.play("bell_ring");
             console.log( "Got a doubt raised by the user " + event.data.userid );
             jQuery.each(connection.streamEvents,  function( index, value ) {
                if( value.userid == event.data.userid ){
                    $("#" + value.streamid).css("opacity", "0.5");
                    console.log( value );
                }
             });
             return;
         }else if( event.data && event.data.raiseDoubt ){
             return;
         }else if( event.data && event.data.clearedDoubt && event.data.userid == connection.userid ){
             $('#raisedoubt').linkbutton('enable');
             $('#raisedoubt').linkbutton({ plain:true});
             return;
         }else if( event.data && event.data.clearedDoubt ){
             return;
         }
         var div = document.createElement('div');
         div.innerHTML = event.data || event;
         chatContainer.appendChild(div);
         chatContainer.scrollTop = chatContainer.lastChild.offsetTop;
         if( $("#cc").layout('panel','east').panel('options').collapsed ){
             $("#cc").layout('expand','east');
         }
    };
    connection.autoSaveToDisk = false;
    var videosContainer = document.getElementById('center');
    var owner = document.getElementById('owner');
    connection.streamended = connection.onclose = function(event) {
        vCount = $("#center").children().filter("video").length;
        vCount = connection.getAllParticipants().length;
        if( vCount == 0){
                $('.imgLoader').css("visibility", "visible");
                wCount = 1;
                hCount = 1;
                width = 100/wCount;
                height = 100/hCount;
        }else if( vCount == 1){
                $('.imgLoader').css("visibility", "hidden");
                wCount = 1;
                hCount = 1;
                width = 100/wCount;
                height = 100/hCount;
         }else if( vCount == 2){
                $('.imgLoader').css("visibility", "hidden");
                wCount = 2;
                hCount = 1;
                width = 100/wCount;
                height = 100/hCount;
         }else if( vCount == 3){
                $('.imgLoader').css("visibility", "hidden");
                wCount = 3;
                hCount = 1;
                width = 100/wCount;
                height = 100/hCount;
         }else if( vCount == 4){
                $('.imgLoader').css("visibility", "hidden");
                wCount = 2;
                hCount = 2;
                width = 100/wCount;
                height = 100/hCount;
                next = "h";
         }else if( vCount && vCount > (hCount * wCount) ){
             $('.imgLoader').css("visibility", "hidden");
             if( next == "w" ){
                wCount--;
                width = 100/wCount;
                next = "h";
             }else if ( next == "h" ){
                hCount--
                height = 100/hCount;
                next = "w";
             }
         }
         $("#center video").css("width", width + "%");
         $("#center video").css("height", height + "%");
         console.log( "onleave -- vCount " + vCount + " wCount " + wCount + " hCount " + hCount + " width " + width + " height " + height );
    };
    connection.onleave = function(event) {
        vCount = $("#center").children().filter("video").length;
        vCount = connection.getAllParticipants().length;
        if( vCount == 0){
                $('.imgLoader').css("visibility", "visible");
                wCount = 1;
                hCount = 1;
                width = 100/wCount;
                height = 100/hCount;
        }else if( vCount == 1){
                $('.imgLoader').css("visibility", "hidden");
                wCount = 1;
                hCount = 1;
                width = 100/wCount;
                height = 100/hCount;
         }else if( vCount == 2){
                $('.imgLoader').css("visibility", "hidden");
                wCount = 2;
                hCount = 1;
                width = 100/wCount;
                height = 100/hCount;
         }else if( vCount == 3){
                $('.imgLoader').css("visibility", "hidden");
                wCount = 3;
                hCount = 1;
                width = 100/wCount;
                height = 100/hCount;
         }else if( vCount == 4){
                $('.imgLoader').css("visibility", "hidden");
                wCount = 2;
                hCount = 2;
                width = 100/wCount;
                height = 100/hCount;
                next = "h";
         }else if( vCount && vCount > (hCount * wCount) ){
             $('.imgLoader').css("visibility", "hidden");
             if( next == "w" ){
                wCount--;
                width = 100/wCount;
                next = "h";
             }else if ( next == "h" ){
                hCount--
                height = 100/hCount;
                next = "w";
             }
         }
         $("#center video").css("width", width + "%");
         $("#center video").css("height", height + "%");
         console.log( "onleave -- vCount " + vCount + " wCount " + wCount + " hCount " + hCount + " width " + width + " height " + height );
        if( typeof event.extra.user_name !== 'undefined' ){
           var div = document.createElement('div');
           var msg = '<b>' + event.extra.user_name + '</b> > left the room';
           div.innerHTML = msg;
           console.log( "connection.onleave" );
           console.log( event );
           chatContainer.appendChild(div);
           chatContainer.scrollTop = chatContainer.lastChild.offsetTop;
        }
    };
    var streamid;
    var remoteUserId;
    $("#muteUser").bind("click", function(){
      if( connection.isInitiator ){
         connection.send({muteUserStream:true, userid:remoteUserId});
         console.log( "Sending mute command to the server" );
      }
    });
    $("#unmuteUser").bind("click", function(){
      if( connection.isInitiator ){
         connection.send({unmuteUserStream:true, userid:remoteUserId});
         console.log( "Sending unmute command to the server" );
      }
    });
    $("#ejectUser").bind("click", function(){
      if( connection.isInitiator ){
         connection.send({ejectUser:true, userid:remoteUserId});
         console.log( "Sending ejectUser command to the server" );
      }
    });
    $("#clearDoubt").bind("click", function(){
      if( connection.isInitiator ){
         $("#" + streamid).css("opacity", "1.0");
         connection.send({clearedDoubt:true, userid:remoteUserId});
         console.log( "Sending Doubt Cleared command to the server" );
      }
    });
    connection.onstream = function(event) {
         event.mediaElement.controls = false;
         if( event.type == "local" ){
            streamid = event.streamid;
         }
         console.log( connection );
         console.log( "Stream id is " + streamid );
         setTimeout(function() {
               event.mediaElement.play();
         }, 5000);
         if( !$("#owner").children().filter("video").length ){
            event.mediaElement.oncontextmenu  = function(e){
               e.preventDefault();
            }
            owner.appendChild(event.mediaElement);
            var ownerheight = $("#south").height()/2;
            $("#owner video").css("height", ownerheight);
            $('#myself').css("display", "inline-block");
            $('#mute').css("display", "inline-block");
            return true;
         }
         if( connection.isInitiator ){
            console.log( event );
            console.log( event.mediaElement );
            event.mediaElement.oncontextmenu  = function(e){
               e.preventDefault();
               console.log( e );
               console.log( "Stream ID is " + event.streamid );
               $('#videocontext').menu('show', {
                  id: event.userid,
                  left: e.pageX,
                  top: e.pageY,
                  onShow:function(){
                     remoteUserId = event.userid;
                     streamid = event.streamid;
                     console.log( "Remote User ID : " + remoteUserId );
                     console.log( "Stream ID : " + streamid );
                     console.log( "Type : " + event.type );
                  }
               });
            };
         }else{
            event.mediaElement.oncontextmenu  = function(e){
               e.preventDefault();
            }
         }
         $('.imgLoader').css("visibility", "hidden");
         videosContainer.appendChild(event.mediaElement);
         vCount = $("#center").children().filter("video").length;
         vCount = connection.getAllParticipants().length;
         if( vCount == 0){
                $('.imgLoader').css("visibility", "visible");
                wCount = 1;
                hCount = 1;
                width = 100/wCount;
                height = 100/hCount;
         }else if( vCount == 1){
                $('.imgLoader').css("visibility", "hidden");
                wCount = 1;
                hCount = 1;
                width = 100/wCount;
                height = 100/hCount;
         }else if( vCount == 2){
                $('.imgLoader').css("visibility", "hidden");
                wCount = 2;
                hCount = 1;
                width = 100/wCount;
                height = 100/hCount;
         }else if( vCount == 3){
                wCount = 3;
                hCount = 1;
                width = 100/wCount;
                height = 100/hCount;
         }else if( vCount == 4){
                wCount = 2;
                hCount = 2;
                width = 100/wCount;
                height = 100/hCount;
                next = "h";
         }else if( vCount && vCount > (hCount * wCount) ){
             if( next == "w" ){
                wCount++;
                width = 100/wCount;
                next = "h";
             }else if ( next == "h" ){
                hCount++
                height = 100/hCount;
                next = "w";
             }
         }
         $("#center video").css("width", width + "%");
         $("#center video").css("height", height + "%");
         console.log( "onstream -- vCount " + vCount + " wCount " + wCount + " hCount " + hCount + " width " + width + " height " + height );
         user_name = "User - " + vCount;
         connection.extra.user_name = user_name;
         connection.updateExtraData();
         var div = document.createElement('div');
         var msg = '<b>' + user_name + '</b> > Joined the room';
         div.innerHTML = msg;
         chatContainer.appendChild(div);
         chatContainer.scrollTop = chatContainer.lastChild.offsetTop;
         if( $("#cc").layout('panel','east').panel('options').collapsed ){
             $("#cc").layout('expand','east');
         }
    };
    connection.bandwidth = {
        audio: 128,
        video: 1024,
        screen: 1024
    };

    var videoConstraints = {
        mandatory: {
            maxWidth: 1920,
            maxHeight: 1080,
            minAspectRatio: 1.77,
            minFrameRate: 3,
            maxFrameRate: 64
        },
        optional: []
    };
    connection.mediaConstraints.video = videoConstraints;

    $('#start').bind('click', function(){
        $("#wait").html("Waiting for participants to join...");
        var mid = escape($("#mid").val());
        if( mid.length <= 0 ){
            return;
        }
        /* First check if room exist or not */
        connection.checkPresence(mid, function(isRoomExists, roomid) {
            if(isRoomExists) {
                $.messager.alert('Alert','Sorry this meeting room is not available!');
                $('.imgLoader').css("visibility", "hidden");
                $('#mainimg').css("display", "inline-block");
                return;
            }else{
               /* Open a new room */
               connection.open(mid);
               user_name = "Admin";
               var localStream = connection.streamEvents.selectFirst();
               console.log( "Local stream" );
               console.log( connection.streamEvents.selectFirst );
               console.log( "First stream" );
               console.log( connection.streamEvents.selectFirst() );
               $("#muteall").css("display", "inline-block");
               $("#midheading").html("Your Meeting ID - " + mid);
               $("#mheading").css("display", "none");
               $("#midheading").css("display", "inline-block");
               $('#start').css("display", "none");
               $('#join').css("display", "none");
               $('#invite').css("display", "inline-block");
               $('#quit').css("display", "inline-block");
               $('.imgLoader').css("visibility", "visible");
               $('#mainimg').css("display", "none");
               connection.extra.user_name = user_name;
               var div = document.createElement('div');
               var msg = '<b>' + user_name + '</b> > Created the room';
               div.innerHTML = msg;
               chatContainer.appendChild(div);
               chatContainer.scrollTop = chatContainer.lastChild.offsetTop;
               connection.updateExtraData();
           }
        });
    });
    $('#join').bind('click', function(){
        $("#wait").html("Trying to join meeting at given ID...");
        var mid = escape($("#mid").val());
        if( mid.length <= 0 ){
            return;
        }
        $('#mheading').css("left", "-2px");
        $('.imgLoader').css("visibility", "visible");
        $('#mainimg').css("display", "none");
        connection.checkPresence(mid, function(isRoomExists, roomid) {
            if(!isRoomExists) {
                $.messager.alert('Alert','Sorry but could not connect with given meeting room ID');
                $('.imgLoader').css("visibility", "hidden");
                $('#mainimg').css("display", "inline-block");
                return;
             }else{
                connection.join(mid);
                $("#raisedoubt").css("display", "inline-block");
                $('#join').css("display", "none");
                $('#start').css("display", "none");
                $('#quit').css("display", "inline-block");
                $('#invite').css("display", "inline-block");
                $("#midheading").html("Your Meeting ID - " + mid);
                $("#mheading").css("display", "none");
                $("#midheading").css("display", "inline-block");
             }
        });
    });
    var muted = false;
    $('#muteall').bind('click', function(){
       jQuery.each(connection.streamEvents,  function( index, value ) {
          if( connection.isInitiator && value.type == "remote" ){
              connection.send({muteUserStream:true, userid:value.userid});
              console.log( "Sending mute command to the server" );
              console.log( value );
          }
       });
    });
    var doubt = false;
    $('#raisedoubt').bind('click', function(){
         ion.sound.play("bell_ring");
         $('#raisedoubt').linkbutton('disable');
         $('#raisedoubt').linkbutton({ plain:false});
         connection.send({raiseDoubt:true, userid:connection.userid});
         console.log( "Sending a doubt command to the server" );
         doubt = true;
    });
    connection.onCustomMessage = function(message) {
        console.log( message );
        console.log( "Got a remove message to mute voice" );
        if(message.muteUserStream == true && message.remoteUserId == connection.userid) {
             $("#mute").trigger("click");
        }
    };

    $('#mute').bind('click', function(){
       if( muted == false ){
          var stream = connection.streamEvents[streamid].stream;
          stream.mute('audio');
          muted = true;
          $('#mute').linkbutton({
            iconCls: "icon-unmute-voice",
            text: "Unmute"
          });
        }else{
          var stream = connection.streamEvents[streamid].stream;
          stream.unmute('audio');
          muted = false;
          $('#mute').linkbutton({
            iconCls: "icon-mute-voice",
            text: "Mute"
          });
        }
    });
    $('#quit').bind('click', function(){
        $("#mheading").css("display", "inline-block");
        $("#midheading").css("display", "none");
        $('.imgLoader').css("visibility", "hidden");
        $('#mainimg').css("display", "inline-block");
        $('#start').css("display", "inline-block");
        $('#join').css("display", "inline-block");
        $('#invite').css("display", "none");
        $('#quit').css("display", "none");
        $('#myself').css("display", "none");
        $('#mute').css("display", "none");
        wCount = 1, hCount = 1, vCount = 0, next = "w";
        width =  100, height = 100;
        $("#center").children().filter("video").each(function(){
            this.pause();
            delete(this);
            $(this).remove();
        });
        $("#owner").children().filter("video").each(function(){
            this.pause();
            delete(this);
            $(this).remove();
        });
        connection.close();
        var href = window.location.href;
        var url = href.substring(0, href.indexOf('?'));
        window.location.href = url;
    });
    $("#owner").bind('click', function(){
        $('#owner video').clone().dialog({
          title:'Myself',
          width:600,
          height:400,
          closed: false
        });
    });
    $('#invite').bind('click', function(){
        $('#dd').dialog('open');
    });
    // Send text message button handler
    $('#input-box').textbox({
        onClickButton: function() {
            if ($('#input-box').val().length === 0) return;
            var msg = "<b" + user_name + " </b>> " + $('#input-box').val();
            div.innerHTML = msg;
            chatContainer.appendChild(div);
            connection.send(msg);
            $("#input-box").textbox('setValue', "");
        },
        icons: [{
            iconCls: 'icon-attach-file',
            handler: function(e) {
                e.preventDefault();
                var fileSelector = new FileSelector();
                fileSelector.selectSingleFile(function(file) {
                    connection.send(file);
                });
            }
        }]
    });
    $('#input-box').textbox('textbox').bind('keydown', function(e) {
        if (e.keyCode == 13) {
            var div = document.createElement('div');
            var msg = "<b>" + user_name + "</b> > " + $(this).val();
            div.innerHTML = msg;
            chatContainer.appendChild(div);
            connection.send(msg);
            //scroll chat to the bottom
            chatContainer.scrollTop = chatContainer.lastChild.offsetTop;
            $("#input-box").textbox('setValue', "");
        }
    });
    var url = window.location.href;
    if( url.match(/id=([^&]+)/) ){
       var id = url.match(/id=([^&]+)/)[1];
       $("#mid").textbox('setValue', escape(id) ); 
       $("#join").trigger("click");
    }
    $("#cc").css("visibility", "visible");
    $(".imgLoader").css("visibility", "hidden");
});
</script>
<script src="https://www.google-analytics.com/urchin.js"></script>
<script type="text/javascript">
_uacct = "UA-232293-6";
urchinTracker();
</script>
</body>
</html>
