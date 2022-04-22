    function isEmail(email) {
     var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
     return regex.test(email);
   }
   $(document).ready(function ($) {
        $('.customer.share').on("click", function (e) {
            // $(this).customerPopup(e);
        });
                 
      $("#btnemail").on('click', function(e) {
         var inputs = { "email": $('#textemail').val() };
         $("#newsresponse").css({"display":"block"});
         if( !isEmail( $('#textemail').val() ) ){
            $("#newsresponse").html("Please enter a valid email id");
            $("#newsresponse").fadeOut(5000, function(){
               $("#newsresponse").html("");
               $("#textemail").val("");
            });
            return false;
         }
         var url="subs-news.php";
         $.ajax({
            type: "POST",
            url: url,
            data: inputs,
            dataType: 'json',
            beforeSend: function(  ) {
               $(".wrapLoader").css({"display":"block"});
            },
            success: function(data) {
               $(".wrapLoader").css({"display":"none"});
               if( data.ret > 0 ){
                   $("#newsresponse").html("You already have a subscription");
               }else{
                   $("#newsresponse").html("Thanks for your subscription");
               }
               $("#newsresponse").fadeOut(5000, function(){
                  $("#newsresponse").html("");
                  $("#textemail").val("");
               });
            }
         });
         });
         $("form button.btn").on('click', function() {
             if( $(this).find('a').attr('href') ) {
                 window.location.href = $(this).find('a').attr('href');
              }
         });
      });
