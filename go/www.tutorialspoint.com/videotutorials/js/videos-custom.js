$(document).ready(function(){   
       var cookie_val= readCookie('cookie-info');
        if(cookie_val == 'true'){
            $('#banner-cookie').css('display','none');
        }else{
            $('#banner-cookie').css('display','block');
        }
      
		//$('.plus-show').hide();
      $('.clsSection').click(function(e){
         var sid = $(this).parent().data('sid');
         if($(this).parent().find('ul').hasClass('active') ){
              $('#plus-hide-'+sid).show();
              $('#plus-show-'+sid).hide();
              $(this).parent().find('ul').removeClass('active').children('.clsoptions').slideDown();
              e.stopPropagation();
         }
         else{
              $('#plus-show-'+sid).show();
              $('#plus-hide-'+sid).hide();
              $(this).parent().find('ul').addClass('active').children('.clsoptions').slideUp();
              e.stopPropagation();
         }
      });

      $('.pdfCategory').click(function(e){
         e.stopPropagation();
         $('.catShow').toggle();
      });
      $(document).on('click', function(e) {
         $el = $(".catShow");
         if ($el.is(":visible")) {
         $el.hide();         
         }
      });
      
           
      $('.tp-copyright-issue').hide();
      $('.tp-copyright').click(function(){
         $('.tp-copyright-issue').toggle();
         $('.tp-video-notes').hide();
      });
      $('.tp-video-notes').hide();
      $('.tp-notes').click(function(){
         $('.tp-video-notes').toggle();
         $('.tp-copyright-issue').hide();
      });
      $('.ttx-notes-view').click(function(){
         $('.tp-video-notes').hide();
      });      
      
      $('.tp-feedback').click(function(){
         $('.tp-video-feedback').toggle();
         $('.tp-video-notes').hide();
      });
      $('.ttx-feedback-view').click(function(){
         $('.tp-video-feedback').hide();
      });
      $('#cancel-copyright').click(function(){
         $('#issue_text').val('');
         $('.tp-copyright-issue').hide();
      });
     $('#banner-cookie-button').on('click',function () {
         createCookie('cookie-info', 'true');
         $('#banner-cookie').css('display','none');         
     });
      $('.alert-close').on('click',function () {
         $('.alert').css('display','none');         
     });
  });

function createCookie(name, value) {
   var expiration_date = new Date ();
   expiration_date . setFullYear (expiration_date . getFullYear () + 1);
   expiration_date = expiration_date . toGMTString ();
   // Build the set-cookie string:

   var cookie_string = escape (name) + "=" + escape (value) +
          "; expires=" + expiration_date + "; path=/";

   // Create/update the cookie:
   document.cookie = cookie_string;

   /*if (days) {
    var date = new Date();

   }
   else var expires = "";
   document.cookie = name + "=" + value + expires + "; path=/";   */      
}
function readCookie(name) {
   var nameEQ = name + "=";
   var ca = document.cookie.split(';');
   for (var i = 0; i < ca.length; i++) {
       var c = ca[i];
       while (c.charAt(0) == ' ') c = c.substring(1, c.length);
       if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
   }
   return 0;         
}
