$(document).ready(function () {
    var start_from = 0;
    var limit_val = 10;
    var regEmail = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    // $(".player").flowplayer();

    // left tutorial menu events

    var saveFlag = false;
    function tutorialCurriculum() {
        $.ajax({
            url: videobaseurl + "/ajax/ajaxTutorialCurriculam.php",
            method: "POST",
            data: {'vc': $('#varData42').val()}
        }).done(function (data) {
            if (data == -99) {
                window.location = videobaseurl + "/login.php";
            } else
            {
                $('#divTutorialContent').html(data);
            }
        });
    }
    $(window).on('beforeunload', function () {
        if (saveFlag) {
            return 'You haven\'t saved your changes.';
        }
    });
    //Getting course authors
    function tutorialAuthors() {
       $('#divTutorialContent').html('');
       $('#editCoAuthorDiv').html('');
        $.ajax({
            url: videobaseurl + "/ajax/ajaxTutorialAuthors.php",
            method: "POST",
            data: {'vc': $('#varData42').val()}
        }).done(function (data) {
            if (data == -99) {
                window.location = videobaseurl + "/login.php";
            } else
            {
                $('#divTutorialContent').html(data);
                return true;
            }
        });
    }

    //course authors actions
      $('#divTutorialContent').on('click', '.editCoAuthorCls', function () {
        var vc = $('#varData42').val();        
        var vs = $(this).data('coide');
        $(".wrap_loader").show();
       // return false;
        $.ajax({
            url: videobaseurl + "/ajax/ajaxAddCoAuthorEditor.php",
            method: "POST",
            data: {"vc": vc, "vs": vs},     
        }).done(function (data) {
            $(".wrap_loader").hide();
            $('#ancAddCoAuthorCls').hide();
            $('#editCoAuthorDiv').html(data);
            $('#editCoAuthorDiv').show();
            return true;

        });
    });
    $('#divTutorialContent').on("click", ".removeCoAuthorCls", function () {
        var r = confirm("Are you sure to delete this co author");
        if (r == true) {
            var vs = $(this).data('coidrm');
            $(".wrap_loader").show();
            $.ajax({
                url: videobaseurl + "/ajax/ajaxDeleteCoAuthor.php",
                method: "POST",
                dataType: "json",
                data:{"vs": vs},
            }).done(function (data) {
                if (data.flag == -99)
                {
                    $(".wrap_loader").hide();
                    window.location.href = videobaseurl + '/login.php';
                }
                if (data.flag == 1)
                {
                    $(".wrap_loader").hide();
                    $('.alert-success span').html(data.msg);
                    $('.alert-success').show();
                    setTimeout(function () {
                        $('.alert-success').hide();
                    }, 5000);
                    tutorialAuthors();
                    return true;
                } else
                {
                    $(".wrap_loader").hide();
                    $('.alert-danger span').html(data.msg);
                    $('.alert-danger').show();
                    setTimeout(function () {
                        $('.alert-danger').hide();
                    }, 5000);
                    return false;
                }
            });
        }
    });
    //course authors -- save
    $('#divTutorialContent').on("click", '#addCoAuthor', function () {
            var title = $('#txtCoAuthorTitle').val();
            var vc = $('#varData42').val();  
         if ($('#viewcheck_flag').is(':checked'))
         {
            var view_check = 'Y';
         } else {
            var view_check = 'N';
         }

         if(title == ''){
             $('.alert-danger span').html('Plese enter author email id');
             $('.alert-danger').show();    
             setTimeout(function() {
               $('.alert-danger').hide();
               }, 5000); 
             return false;
         }
         $(".wrap_loader").show();
            //alert(title+' '+vc);return false;          
         $.ajax({
             url: videobaseurl + "/ajax/ajaxSaveTutorialAuthor.php",
             method: "POST",
             dataType: "json",
             cache: false,
             data: {"title":title,"vc":vc,  "view_check":view_check},
         }).done(function (data) {
          console.log(data);
             if (data.flag == -99) {
                 $(".wrap_loader").hide();
                 window.location = videobaseurl + "/login.php";
             } else if (data.flag == 1)
             {

                 $(".wrap_loader").hide();
                  saveFlag = false;
                 $('.alert-success span').html(data.msg);
                 $('.alert-success').show();    
                 setTimeout(function() {
                     $('.alert-success').hide();
                 }, 5000);

                 tutorialAuthors();
                 return true;
             } else
             {
                 $(".wrap_loader").hide();
                 $('.alert-danger span').html(data.msg);
                 $('.alert-danger').show();    
                 setTimeout(function() {
                     $('.alert-danger').hide();
                 }, 5000); 
                 return false;
             }
         });
           
    });
    //course authors -- save
    $('#divTutorialContent').on("click", '#updateCoAuthor', function () {
            var title = $('#txtCoAuthorTitle').val();
            var vc = $('#varData42').val(); 
            var va = $(this).data('coid');     
            var coty = $(this).data('coty');     
            if ($('.viewcheck_flag').is(':checked'))
            {
                var view_check = 'Y';
            } else {
                var view_check = 'N';
            }  
              $(".wrap_loader").show();   
               $.ajax({
                   url: videobaseurl + "/ajax/ajaxUpdateTutorialAuthor.php",
                   method: "POST",
                   dataType: "json",
                   cache: false,
                   data: {"title":title,"vc":vc, "va":va, "view_check":view_check, "coty":coty},
               }).done(function (data) {
                   if (data.flag == -99) {
                       window.location = videobaseurl + "/login.php";
                   } else if (data.flag == 1)
                   {
                       $(".wrap_loader").hide();
                        saveFlag = false;
                       $('.alert-success span').html(data.msg);
                       $('.alert-success').show();    
                       setTimeout(function() {
                           $('.alert-success').hide();
                       }, 5000); 
                       tutorialAuthors();
                        return true;
                   } else
                   {
                       $(".wrap_loader").hide();
                       $('.alert-danger span').html(data.msg);
                       $('.alert-danger').show();    
                       setTimeout(function() {
                           $('.alert-danger').hide();
                       }, 5000); 
                       return false;
                   }
               });
           
    });
    // sections 
    $('#divTutorialContent').on('click', "#ancAddCoAuthorCls", function () {
        var vc = $('#varData42').val();
        $(".wrap_loader").show();
        $.ajax({
            url: videobaseurl + "/ajax/ajaxAddCoAuthorEditor.php",
            method: "POST",
            data: {"vc": vc},
        }).done(function (data) {
            $('#editCoAuthorDiv').html(data);
            $('#editCoAuthorDiv').show();
            $('#ancAddCoAuthorCls').hide();
            $(".wrap_loader").hide();
            return true;
        });
    });
    //cancel author editor saving
    $('#divTutorialContent').on('click', '#cancelCoAuthor', function () {
         $(".wrap_loader").show();
         saveFlag = false;
         tutorialAuthors();
         $(".wrap_loader").hide();
        return true;
        
    });

   // convert price
   $("#divTutorialContent").on("keyup", ".clsConvert", function () {
       var dprice = $(this).val();
       var thisObj = $(this);
        $.ajax({
            url: videobaseurl + "/ajax/ajaxConvertPrice.php",
            method: "POST",
            data: {'dprice': dprice}
        }).done(function (data) {
            if (data == -99) {
                window.location = videobaseurl + "/login.php";
            } else
            {
                thisObj.next().next().html(data);
            }
        });
    });
    $("#divTutorialContent").on("click", ".clsNextMenu", function () {
       var vf = $('#varData52').val();       
        var pagename = $(this).data('type');        
        var thisObj = $(this);
        $(".wrap_loader").show();
        if (vf != '') {           
            if (saveFlag) {
                var r = confirm("Changes you made may not be saved.");
                if (r == true) {
                    saveFlag = false;
                    $(".wrap_loader").show();
                    $.ajax({
                        url: videobaseurl + "/ajax/ajaxTutorial" + pagename + ".php",
                        method: "POST",
                        data: {'vc': $('#varData42').val()}
                    }).done(function (data) {
                        if (data == -99) {
                            $(".wrap_loader").hide();
                            window.location = videobaseurl + "/login.php";
                        } else
                        { 
                            $(".wrap_loader").hide();
                            $('.clsListMenu').removeClass('current');
                            $('.clsListMenu').addClass('disabled');                            
                            $('[data-type="'+pagename+'"]').addClass('current');
                            //thisObj.addClass('course-active');
                           // thisObj.removeClass('course-inactive'); 
                            $('#divTutorialContent').html(data);        
                            $('html, body').animate({
                                scrollTop: $("#divTutorialContent").offset().top - 150
                            }, 1000);
                        }
                    });
                } else {

                }
            } else {           
                $(".wrap_loader").show();
                $.ajax({
                    url: videobaseurl + "/ajax/ajaxTutorial" + pagename + ".php",
                    method: "POST",
                    data: {'vc': $('#varData42').val()}
                }).done(function (data) {
                    if (data == -99) {
                        $(".wrap_loader").hide();
                        window.location = videobaseurl + "/login.php";
                    } else
                    {
                        $(".wrap_loader").hide();
                        $('.clsListMenu').removeClass('current');
                        $('.clsListMenu').addClass('disabled');
                        //thisObj.addClass('course-active');
                        //thisObj.removeClass('course-inactive');
                        $('#divTutorialContent').html(data);
                        $('[data-type="'+pagename+'"]').addClass('current');
                        $('html, body').animate({
                          scrollTop: $("#divTutorialContent").offset().top - 150
                        }, 1000);
                    }
                });
            }
        } else {
              $('.alert-danger span').html('Please create course first');
              $(".wrap_loader").hide();
              $('.alert-danger').show();
              setTimeout(function () {
                    $('.alert-danger').hide();
              }, 5000);
              return false;
        }
    });
    $('.clsListMenu').click(function () {
        var vf = $('#varData52').val();
        var pagename = $(this).data('type');
        var thisObj = $(this);
        if (vf != '') {
            if (saveFlag) {
                var r = confirm("Changes you made may not be saved.");
                if (r == true) {
                    saveFlag = false;
                    $(".wrap_loader").show();
                    $.ajax({
                        url: videobaseurl + "/ajax/ajaxTutorial" + pagename + ".php",
                        method: "POST",
                        data: {'vc': $('#varData42').val()}
                    }).done(function (data) {
                        if (data == -99) {
                            $(".wrap_loader").hide();
                            window.location = videobaseurl + "/login.php";
                        } else
                        {
                            $(".wrap_loader").hide();
                            $('.clsListMenu').removeClass('current');
                            $('.clsListMenu').addClass('disabled');
                            $('.clsListMenu').find("[data-type='" + pagename + "']").addClass('current');
                            thisObj.addClass('current');
                            thisObj.removeClass('disabled'); 
                            $('#divTutorialContent').html(data);     
                            $('html, body').animate({
                             scrollTop: $("#divTutorialContent").offset().top - 150
                            }, 1000);
                        }
                    });
                } else {
                    $(".wrap_loader").hide();
                }
            } else {
                $(".wrap_loader").show();
                $.ajax({
                    url: videobaseurl + "/ajax/ajaxTutorial" + pagename + ".php",
                    method: "POST",
                    data: {'vc': $('#varData42').val()}
                }).done(function (data) {
                    if (data == -99) {
                        $(".wrap_loader").hide();
                        window.location = videobaseurl + "/login.php";
                    } else
                    {
                        $(".wrap_loader").hide();
                        $('.clsListMenu').removeClass('current');
                        $('.clsListMenu').addClass('disabled');
                        thisObj.addClass('current');
                        thisObj.removeClass('disabled');
                        $('#divTutorialContent').html(data);
                        $('html, body').animate({
                          scrollTop: $("#divTutorialContent").offset().top - 150
                        }, 1000);
                    }
                });
            }
        } else {
              $(".wrap_loader").hide();
              $('.alert-danger span').html('Please create course first');
              $('.alert-danger').show();
              setTimeout(function () {
                    $('.alert-danger').hide();
              }, 5000);
              return false;
        }
    });
    $("#divTutorialContent").on("keyup","input,textarea",function () {
        $(this).css('border-color', '#ccc');
        //$('.txtClass').next().html('');
        saveFlag = true;
    });
    $("#divTutorialContent select").change(function () {
        $(this).css('border-color', '#ccc');
        //$('.txtClass').next().html('');
    });



    $('#divTutorialContent').on("keyup", '#txtUserName', function () {
        if ($(this).val() != '') {
            $.ajax({
                url: videobaseurl + "/ajax/ajaxGetUserList.php",
                method: "POST",
                data: {'search_key': $(this).val()}
            }).done(function (data) {
                if (data == -99) {
                    window.location = videobaseurl + "/login.php";
                } else
                {
                    $('#divUserList').html(data);
                    $('#divUserList').show();
                }
            });
        } else {
            $('#divUserList').hide();
            $('#varData62').val('');
        }
    });
    $('#divTutorialContent').on('click', '.clsUser', function () {
        $('#txtUserName').val($(this).data('uname'));
        $('#varData62').val($(this).data('vu'));
        $('#divUserList').html('');
        $('#divUserList').hide();
    });
   
    $('#divTutorialContent').on("change", '#courseColorPicker', function () {
        $('#courseColor').val($(this).val());       
        $('.clsCourseTitle').css('background', $(this).val());
        $('.container .logo img').css('background', $(this).val());
        $("#courseDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
            //$(this).next().html('');
        });
    });
    $('#divTutorialContent').on("change", '#courseColor', function () {
        $('.clsCourseTitle').css('background', $(this).val());
        $('#courseColorPicker').val($(this).val());
        $('.container .logo img').css('background', $(this).val());
        $("#courseDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
            //$(this).next().html('');
        });
    });
    $('#divTutorialContent').on("change", '#courseImg', function () {
        $("#courseDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
            //$(this).next().html('');
        });
        var exts = ['jpg', 'jpeg', 'png'];
        var ext = $('#courseImg')[0].files[0].name.split('.');
        ext = ext.reverse();
        var size = ($('#courseImg')[0].files[0].size / (1024 * 1024)).toFixed(2);
        if ($.inArray(ext[0].toLowerCase(), exts) < 0) {
            $('.txtClass').next().html('');
            $('#courseImg').next().html('Please select jpeg/png format files only.');
            $('#courseImg').focus();
            $('#courseImg').css('border-color', 'red');
            $("#courseImg").val('');
            return false;
        } else if (size > 5) {
            $('.txtClass').next().html('');
            $('#courseImg').next().html('Please select file less than 5 MB files only');
            $('#courseImg').focus();
            $('#courseImg').css('border-color', 'red');
            $("#courseImg").val('');
            return false;
        }
        var formdata = new FormData();
        formdata.append("file", $('#courseImg')[0].files[0]);

        $.ajax({
            url: videobaseurl + "/ajax/ajaxTempCourseImage.php",
            dataType: 'json',
            method: "POST",
            cache: false,
            data: formdata,
            processData: false,
            contentType: false,
            success: function (data) {
                if (data.flag == -99) {
                    window.location = videobaseurl + "/login.php";
                } else if (data.flag == 1) {
                    $('#courseImgLeft').attr('src', data.cimgurl);
                    $('#courseImgTop').attr('src', data.cimgurl);
                    $("#courseImgUrl").val(data.cimgurl);
                } else {
                    /* $('#courseImg').next().html('Something went wrong! Please try after some time');
                    $('#courseImg').focus();
                    $('#courseImg').css('border-color', 'red'); */
                    $("#courseImg").val('');
                    $('.alert-danger span').html('Something went wrong! Please try after some time');
                    $('.alert-danger').show();
                    setTimeout(function () {
                        $('.alert-danger').hide();
                    }, 5000);
                }
            }
        });
    });

    $('#divTutorialContent').on("keyup", '#txtCourseName', function () {
        $("#courseDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });
        if ($(this).val() != '') {
            $('.clsCourseTitle').html($(this).val());
        } else {
            $('.clsCourseTitle').html('Course Title');
        }
    });
    $('#divTutorialContent').on("keyup", '#txtCourseTagLine', function () {
        $("#courseDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });
        if ($(this).val() != '') {
            $('.clsCourseTagLine').html($(this).val());
        } else {
            $('.clsCourseTagLine').html('Course Tag Line');
        }
    });
    $("#divTutorialContent,.newLectureDiv,#newSectionDiv").on('keyup', 'input,textarea,file', function () {
        $(this).css('border-color', '#ccc');
        $('.txtClass').next().html('');
    });
    $("#divTutorialContent,.newLectureDiv,#newSectionDiv select").change(function () {
        $(this).css('border-color', '#ccc');
        //$('.txtClass').next().html('');
    });

   
     /*
     * On click on save landing page 
     */
    $('#divTutorialContent').on("click", '#btnSaveLandingPage', function () {

        var mval = 'N';
        var cflag = 'N';
       
        var course_category = $('.js-example-basic-multiple').select2('val');
        var course_cat_length = $('.js-example-basic-multiple').select2('data').length;
        var course_category_sub = $('.js-example-basic-multiple-sub').select2('val');
        var course_cat_length_sub = $('.js-example-basic-multiple-sub').select2('data').length;
        var course_category_sub_sub = $('.js-example-basic-multiple-sub-sub').select2('val');
        var course_cat_length_sub_sub = $('.js-example-basic-multiple-sub-sub').select2('data').length;
        var vu = $('#varData62').val();
        var vc = $('#varData42').val();
        var title = $('#txtCourseName').val();
        var tagline = $('#txtCourseTagLine').val();
        let editor = new FroalaEditor('div#editor');
        var desp = editor.html.get();
        var country = $("#sltCountry").val();
        var ccolor = $('#courseColor').val();
        var rejectMsg = $('#txtCourseRejectMsg').val();
        var selStatus = $('#selStatus').val();
        var certificate = $('#chkCertificate').val();
        var cheadline = $('#txtCertificateHL').val();
 
        $('#basicMsg').hide();
        $('#basicMsg').removeClass('successmsg');
        $('#basicMsg').removeClass('errormsg');

        $("#courseDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });
        $('div#editor').css('border-color', '#ccc');
        $('div#editor').next().html('');

        if (vu == '')
        {
            $('#courseImg').css('border-color', '#ccc');            
            $('#txtUserName').focus();
            $('.txtClass').next().html('');
            $('.alert-danger span').html("Please select author");
            $('.alert-danger').show();
            setTimeout(function () {
               $('.alert-danger').hide();
            }, 5000);
            return false;
        } else if (title == '')
        {
            $('#varData62').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#txtCourseName').next().html('Please enter course name');
            $('#txtCourseName').focus();
            $('#txtCourseName').css('border-color', 'red');
            return false;
        } else if (tagline == '')
        {
            $('#txtCourseName').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#txtCourseTagLine').next().html('Please enter course tag line');
            $('#txtCourseTagLine').focus();
            $('#txtCourseTagLine').css('border-color', 'red');
            return false;
        } else if ($('#courseImg').val() != '')
        {
            var exts = ['jpg', 'jpeg', 'png'];
            var ext = $('#courseImg')[0].files[0].name.split('.');
            ext = ext.reverse();
            var size = ($('#courseImg')[0].files[0].size / (1024 * 1024)).toFixed(2);
            if ($.inArray(ext[0].toLowerCase(), exts) < 0) {
                $('.txtClass').next().html('');
                $('#courseImg').next().html('Please select jpeg/png format files only.');
                $('#courseImg').focus();
                $('#courseImg').css('border-color', 'red');
                $("#courseImg").val('');
                return false;
            } else if (size > 5) {
                $('.txtClass').next().html('');
                $('#courseImg').next().html('Please select file less than 5 MB files only');
                $('#courseImg').focus();
                $('#courseImg').css('border-color', 'red');
                $("#courseImg").val('');
                return false;
            }
        } 
        if (course_cat_length == 0)
        {
            $('#editor').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('.alert-danger span').html("please select a course category");
            $('.alert-danger').show();
            setTimeout(function () {
               $('.alert-danger').hide();
            }, 5000);
            return false;
        } 
        if (course_cat_length_sub == 0)
        {
            $('#editor').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('.alert-danger span').html("please select sub course category");
            $('.alert-danger').show();
            setTimeout(function () {
               $('.alert-danger').hide();
            }, 5000);
            return false;
        } 
        if (desp == '')
        {
            $('.txtClass').next().html('');
            $('#editor').next().html('Please enter course description');
            $('#editor').focus();
            $('#editor').css('border', '1px solid red');
            return false;
        } 

        if ($('#chkCertificate').is(':checked'))
        {
            cflag = 'Y';
        }

        if (cheadline == '' && cflag == 'Y')
        {

            $('.txtClass').next().html('');
            $('#txtCertificateHL').next().html('Please enter certificate head line for the course');
            $('#txtCertificateHL').focus();
            $('#txtCertificateHL').css('border', '1px red solid');
            return false;
        }

        $("#courseDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });
        $('.txtClass').next().html('');

        var formdata = new FormData();
        if ($('#courseImg').val() != '')
        {
            formdata.append("file", $('#courseImg')[0].files[0]);
        }

        formdata.append("vu", vu);
        formdata.append("vc", vc);
        formdata.append("title", title);
        formdata.append("tagline", tagline);
        formdata.append("desp", desp);
        formdata.append("course_category", course_category);
        formdata.append("course_category_sub", course_category_sub);
        formdata.append("course_category_sub_sub", course_category_sub_sub);
        formdata.append("ccolor", ccolor);
        formdata.append("language", country);
        formdata.append("mval", mval);
        formdata.append("rejectMsg", rejectMsg);
        formdata.append("cheadline", cheadline);
        formdata.append("certificate", certificate);
        formdata.append("cflag", cflag);
        formdata.append("status", selStatus);


        $(".wrap_loader").show();
        $.ajax({
            url: videobaseurl + "/ajax/ajaxSaveTutorialsLandingPage.php",
            method: "POST",
            dataType: "json",
            cache: false,
            data: formdata,
            processData: false,
            contentType: false,
        }).done(function (data) {

            if (data.flag == -99) {
                $(".wrap_loader").hide();
                window.location = videobaseurl + "/login.php";
            } 
            else if (data.flag == 1)
            {
                $(".wrap_loader").hide();
                saveFlag = false;
                $('#varData52').val(1);
                $('#varData42').val(data.vc);
                if(data.rurl != ''){
                  window.location = data.rurl;
                }
                $('.alert-success span').html(data.msg);
                $('.alert-success').show();    
                setTimeout(function() {
                  $('.alert-success').hide();
                }, 5000); 
                return false;               
            } else
            {
                $(".wrap_loader").hide();
                $('.alert-danger span').html(data.msg);
                $('.alert-danger').show();    
                setTimeout(function() {
                  $('.alert-danger').hide();
                  }, 5000); 
                return false;

            }
        }).fail(function (data) {
            //console.log(data);
        });
    });
   
    // prerequisites
    $('#divTutorialContent').on("click", '#btnAddPre', function () {
        var str = '<div class="form-group"><input type="text" value="" class="form-control checkbox-r" name="txtPreInput" placeholder="Enter Prerequisite" /><a href="javascript:void(0);" class="btn btn--flat btn--primary btnRemovePre" title="delete prerequisite"><i class="fa fa-trash-alt"></i></a></div>';
        $('#divInputs').append(str);
    });
    $('#divTutorialContent').on("click", '#btnSavePre', function () {
        var vc = $('#varData42').val();
        if (vc == '' || vc == undefined) {
            $('.alert-danger span').html('Invalid tutorial id');
            $('.alert-danger').show();
              setTimeout(function () {
                    $('.alert-danger').hide();
              }, 5000);
            return false;
        }
        if (saveFlag) {
            var preinput = $("input[name*='txtPreInput']");
            var prearray = [];
            $.each(preinput, function (i, item) {
               if($(item).val() != ''){
                prearray.push($(item).val()+'#~');
               }
            });
            var formdata = new FormData();
            formdata.append("vc", vc);
            formdata.append("prearray", prearray);
            if(prearray.length > 0){
                $(".wrap_loader").show();
               $.ajax({
                   url: videobaseurl + "/ajax/ajaxSaveTutorialPre.php",
                   method: "POST",
                   dataType: "json",
                   cache: false,
                   data: formdata,
                   processData: false,
                   contentType: false,
               }).done(function (data) {
                   if (data.flag == -99) {
                       $(".wrap_loader").hide();
                       window.location = videobaseurl + "/login.php";
                   }
                   else if (data.flag == 1)
                   {

                       $(".wrap_loader").hide();
                       $('.alert-success span').html(data.msg);
                       $('.alert-success').show();    
                       setTimeout(function() {
                           $('.alert-success').hide();
                       }, 5000);                       
                       saveFlag = false;                    
                   } else
                   {
                       $(".wrap_loader").hide();
                       $('.alert-danger span').html(data.msg);
                       $('.alert-danger').show();    
                       setTimeout(function() {
                           $('.alert-danger').hide();
                        }, 5000); 
                        return false;
                   }
               });
            }
        } else {
            saveFlag = false;
        }
    });

    $('#divTutorialContent').on("click", '.btnRemovePre', function () {
        $(".wrap_loader").show();
        var preinput = $("input[name*='precheck']");
        /* $.each(preinput, function (index, item) {
            if ($(item).is(':checked')) {
                $(item).parent().remove();
            }
        }); */
        $(this).parent().remove();
        $(".wrap_loader").hide();
        saveFlag = true;
    });

    //goals
    $('#divTutorialContent').on("click", '#btnAddGoal', function () {
        $(".wrap_loader").show();
        var str = '<div class="form-group"><input type="text" value="" class="form-control checkbox-r" name="txtGoalInput" placeholder="Enter Goal" /><a href="javascript:void(0);" class="btn btn--flat btn--primary btnRemoveGoal" title="delete goal"><i class="fa fa-trash-alt"></i></a></div>';
        $('#divInputs').append(str);
        $(".wrap_loader").hide();
    });
    /*
     * Storing the price of the course 
     */
    $('#divTutorialContent').on("click", '#chkPromotionalActivities', function () {     
       saveFlag = true;
    });
    $('#divTutorialContent').on("click", '#btnSaveTutorialPrice', function () {
        if (saveFlag) {
            var vc = $('#varData42').val();
            var basePrice = $("#txtBasePrice").val();
            var discountedPrice = $("#txtDiscountedPrice").val();
            var basePriceInr = $("#txtBasePriceInr").val();
            var discountedPriceInr = $("#txtDiscountedPriceInr").val();
            var currency = 'D';
            var promotionFlag = 'N';

            if(basePrice == ''){
                $('.alert-danger span').html("Invalid base price in USD");
                $('.alert-danger').show();    
                setTimeout(function() {
                  $('.alert-danger').hide();
                }, 5000); 
                return false;
            }
            if(discountedPrice == ''){
                $('.alert-danger span').html("Invalid discount price in USD");
                $('.alert-danger').show();    
                setTimeout(function() {
                  $('.alert-danger').hide();
                }, 5000); 
                return false;
            }
            if(basePriceInr == ''){
                $('.alert-danger span').html("Invalid base price in INR");
                $('.alert-danger').show();    
                setTimeout(function() {
                  $('.alert-danger').hide();
                }, 5000); 
                return false;
            }
            if(discountedPriceInr == ''){
                $('.alert-danger span').html("Invalid discount price in INR");
                $('.alert-danger').show();    
                setTimeout(function() {
                  $('.alert-danger').hide();
                }, 5000); 
                return false;
            }
            
            basePrice = parseFloat(basePrice);
            basePriceInr = parseFloat(basePriceInr);
            discountedPrice = parseFloat(discountedPrice);
            discountedPriceInr = parseFloat(discountedPriceInr);

            if (basePrice < discountedPrice) {               
                $('.alert-danger span').html("Base price cannot be less than discounted price in USD");
                $('.alert-danger').show();    
                setTimeout(function() {
                  $('.alert-danger').hide();
                }, 5000); 
                return false;
            }
            if (basePriceInr < discountedPriceInr) {               
                $('.alert-danger span').html("Base price cannot be less than discounted price in INR");
                $('.alert-danger').show();    
                setTimeout(function() {
                  $('.alert-danger').hide();
                }, 5000); 
                return false;
            }
            if(discountedPrice <= 0 && discountedPriceInr <= 0){
                
            }else{
                if(discountedPrice <= 0 || discountedPriceInr <= 0){
                    $('.alert-danger span').html("All discount price should be zero");
                    $('.alert-danger').show();    
                    setTimeout(function() {
                      $('.alert-danger').hide();
                    }, 5000); 
                    return false;
                }
            }
            if ($('#chkPromotionalActivities').is(':checked'))
            {
                promotionFlag = 'Y';
            }

            var formdata = new FormData();
            formdata.append("vc", vc);
            formdata.append("currency", currency);
            formdata.append("promotionFlag", promotionFlag);
            formdata.append("basePrice", basePrice);
            formdata.append("basePriceInr", basePriceInr);
            formdata.append("discountedPrice", discountedPrice);
            formdata.append("discountedPriceInr", discountedPriceInr);
            
            $(".wrap_loader").show();
            $.ajax({
                url: videobaseurl + "/ajax/ajaxSaveTutorialPrice.php",
                method: 'POST',
                dataType: "json",
                cache: false,
                data: formdata,
                processData: false,
                contentType: false,
                success: function (data) {
                    if (data.flag == -99) {
                        $(".wrap_loader").hide();
                        window.location = videobaseurl + "/login.php";
                    } else if (data.flag == 1) {
                        $(".wrap_loader").hide();                       
                        $('.alert-success span').html(data.msg);
                        $('.alert-success').show();    
                        setTimeout(function() {
                           $('.alert-success').hide();
                        }, 5000); 
                        saveFlag = false;

                    } else {
                        $(".wrap_loader").hide();
                        $('.alert-success span').html(data.msg);
                        $('.alert-success').show();    
                        setTimeout(function() {
                           $('.alert-success').hide();
                        }, 5000); 

                    }
                },
                error: function (data) {
                    //console.log(data);
                }
            });
        } else {
            saveFlag = false;
        }

    });
    $('#divTutorialContent').on("click", '#btnSaveGoal', function () {
        if (saveFlag) {
            var vc = $('#varData42').val();
            var goalinput = $("input[name*='txtGoalInput']");
            var goalarray = [];
            $.each(goalinput, function (i, item) {
               if($(item).val() != ''){
                goalarray.push($(item).val()+'#~');
               }
            });
            var formdata = new FormData();
            formdata.append("vc", vc);
            formdata.append("goalarray", goalarray);
            if(goalarray.length >= 0){
               $(".wrap_loader").show();
               $.ajax({
                   url: videobaseurl + "/ajax/ajaxSaveTutorialGoal.php",
                   method: "POST",
                   dataType: "json",
                   cache: false,
                   data: formdata,
                   processData: false,
                   contentType: false,
               }).done(function (data) {
                   if (data.flag == -99) {
                       $(".wrap_loader").hide();
                       window.location = videobaseurl + "/login.php";
                   } else if (data.flag == 1)
                   {
                       $(".wrap_loader").hide();
                       $('.alert-success span').html(data.msg);
                       $('.alert-success').show();    
                       setTimeout(function() {
                           $('.alert-success').hide();
                       }, 5000); 
                       saveFlag = false;
                   } else
                   {
                       $(".wrap_loader").hide();
                       $('.alert-danger span').html(data.msg);
                       $('.alert-danger').show();    
                       setTimeout(function() {
                           $('.alert-danger').hide();
                       }, 5000); 
                   }
               });
            }
        } else {
            saveFlag = false;
            $('.alert-success span').html('Course goals updated successfully');
            $('.alert-success').show();    
            setTimeout(function() {
               $('.alert-success').hide();
            }, 5000); 
        }
    });
    $('#divTutorialContent').on("click", '.btnRemoveGoal', function () {
        $(".wrap_loader").show();
        var preinput = $("input[name*='pregoal']");
        /* $.each(preinput, function (index, item) {
            if ($(item).is(':checked')) {
                $(item).parent().remove();
            }
        }); */
        $(this).parent().remove();
        $(".wrap_loader").hide();
        saveFlag = true;
    });

    //course authors --add button
    $('#divTutorialContent').on("click", '#btnAddAuthor', function () {
        $(".wrap_loader").btnRemoveGoal();
        var str = '<div class="form-group"><input type="text" value="" class="form-control checkbox-r" name="txtAuthorInput" placeholder="Enter Author Name" /><a href="javascript:void(0);" class="btn btn--flat btn--primary btnRemoveAuthor" title="delete goal"><i class="fa fa-trash-alt"></i></a></div>';
        $('#divInputs').append(str);
        $(".wrap_loader").hide();
    });

    //course authors --remove button
    $('#divTutorialContent').on("click", '.btnRemoveAuthor', function () {
        var preinput = $("input[name*='pregoal']");
        /* $.each(preinput, function (index, item) {
            if ($(item).is(':checked')) {
                $(item).parent().remove();
            }
        }); */
        $(this).parent().remove();
        saveFlag = true;
    });
    //course authors -- save
     $('#divTutorialContent').on("click", '#btnSaveAuthor', function () {
        if (saveFlag) {
            var vc = $('#varData42').val();
            var authorinput = $("input[name*='txtAuthorInput']");
            var authorarray = [];
            $.each(authorinput, function (i, item) {
               if($(item).val() != ''){
                authorarray.push($(item).val()+'#~');
               }
            });
            var formdata = new FormData();
            formdata.append("vc", vc);
            formdata.append("authorarray", authorarray);
            if(authorarray.length > 0){
              $(".wrap_loader").show();
               $.ajax({
                   url: videobaseurl + "/ajax/ajaxSaveTutorialAuthor.php",
                   method: "POST",
                   dataType: "json",
                   cache: false,
                   data: formdata,
                   processData: false,
                   contentType: false,
               }).done(function (data) {
                   if (data.flag == -99) {
                       $(".wrap_loader").show();
                       window.location = videobaseurl + "/login.php";
                   } else if (data.flag == 1)
                   {
                       $(".wrap_loader").show();
                       $('.alert-success span').html(data.msg);
                       $('.alert-success').show();    
                       setTimeout(function() {
                           $('.alert-success').hide();
                       }, 5000); 
                       saveFlag = false;
                   } else
                   {
                       $(".wrap_loader").hide();
                       $('.alert-danger span').html(data.msg);
                       $('.alert-danger').show();    
                       setTimeout(function() {
                           $('.alert-danger').hide();
                       }, 5000); 
                   }
               });
            }
        } else {
            saveFlag = false;
            $('.alert-success span').html('Course author names updated successfully');
            $('.alert-success').show();    
            setTimeout(function() {
               $('.alert-success').hide();
            }, 5000); 
        }
    });


    // sections 
    $('#divTutorialContent').on('click', "#ancAddSection", function () {
        var vc = $('#varData42').val();
        $(".wrap_loader").show();
        $.ajax({
            url: videobaseurl + "/ajax/ajaxAddCourseSectionEditor.php",
            method: "POST",
            data: {"vc": vc}
        }).done(function (data) {
            $('#newSectionDiv').html(data);
            $('#newSectionDiv').show();
            $('.newLectureDiv').hide();
            $('.clsEditLectureDiv').hide();
            $('.clsEditSectionDiv').hide();
            $('.clsDisplaySection').show();
            $('.clsDisplayLecture').show();
            $('#ancAddSection').hide();
            $('#btnPreviewCourseSec').hide();
            $('#buttons_div').hide();
            $(".wrap_loader").hide();
        });
    });
    $('#divTutorialContent,.clsEditSectionDiv').on('click', '#cancelSection', function () {
        $("#newSectionDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });
        $('.clsAddLecture').show();
        $('#ancAddSection').show();
        $('#btnPreviewCourseSec').show();
        $("#newSectionDiv").html('');
        $('.newLectureDiv').hide();
        $('.clsEditLectureDiv').html('');
        $('.clsEditLectureDiv').hide();
        $('.clsEditSectionDiv').html('');
        $('.clsEditSectionDiv').hide();
        $('.clsDisplaySection').show();
        $('.clsDisplayLecture').show();
        $('.txtClass').next().html('');
        $('#buttons_div').show();
         saveFlag = false;
    });
    $('#divTutorialContent').on('click', '#addSection', function () {
        var vu = $('#varData40').val();
        var title = $('#txtSectionTitle').val();
        var stype = $('#selSectionType').val();
        var nextNum = $('#nextSectionNum').val();
        var vc = $('#varData42').val();
        $('#sectionMsg').hide();
        $('#sectionMsg').removeClass('successmsg');
        $('#sectionMsg').removeClass('errormsg');

        $("#newSectionDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });
        
        if (title == '')
        {
            $('#varData40').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#txtSectionTitle').next().html('Please enter section title');
            $('#txtSectionTitle').focus();
            $('#txtSectionTitle').css('border-color', 'red');
            return false;
        }

        $("#newSectionDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });
        $('.txtClass').next().html('');

        var formdata = new FormData();
        formdata.append("vu", vu);
        formdata.append("title", title);
        formdata.append("stype", stype);
        formdata.append("vc", vc);
        formdata.append("orderNum", nextNum);
        $(".wrap_loader").show();
        $.ajax({
            url: videobaseurl + "/ajax/ajaxAddCourseSection.php",
            method: "POST",
            dataType: 'json',
            cache: false,
            data: formdata,
            processData: false,
            contentType: false,
        }).done(function (data) {
            if (data.flag == -99)
            {
                $(".wrap_loader").hide();
                window.location.href = videobaseurl + '/login.php';
            }
            if (data.flag == 1)
            {
                saveFlag = false;
                $('.alert-success span').html(data.msg);
                $(".wrap_loader").hide();
                $('.alert-success').show();    
                setTimeout(function() {
                  $('.alert-success').hide();
                }, 5000); 
                tutorialCurriculum();
            } 
            else
            {
                $('.alert-danger span').html(data.msg);
                $('.alert-danger').show();    
                $(".wrap_loader").hide();
                setTimeout(function() {
                  $('.alert-danger').hide();
                }, 5000); 
                return false;
            }
        });
    });
    $('#divTutorialContent').on('click', '#updateSection', function () {
        var vu = $('#varData40').val();
        var title = $('#txtSectionTitle').val();
        var vc = $('#varData42').val();
        var vs = $('#varData20').val();

        $('#sectionMsg').hide();
        $('#sectionMsg').removeClass('successmsg');
        $('#sectionMsg').removeClass('errormsg');

        $("#newSectionDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });

        if (vu == '')
        {
            $('#courseImg').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#varData40').next().html('Please select author');
            $('#varData40').focus();
            $('#varData40').css('border-color', 'red');
            return false;
        } else if (title == '')
        {
            $('#varData40').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#txtSectionTitle').next().html('Please enter section title');
            $('#txtSectionTitle').focus();
            $('#txtSectionTitle').css('border-color', 'red');
            return false;
        }

        $("#newSectionDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });
        $('.txtClass').next().html('');

        var formdata = new FormData();
        formdata.append("vu", vu);
        formdata.append("title", title);
        formdata.append("vc", vc);
        formdata.append("vs", vs);
        $(".wrap_loader").show();
        $.ajax({
            url: videobaseurl + "/ajax/ajaxUpdateCourseSection.php",
            method: "POST",
            dataType: 'json',
            cache: false,
            data: formdata,
            processData: false,
            contentType: false,
        }).done(function (data) {
            if (data.flag == -99)
            {
                $(".wrap_loader").hide();
                window.location.href = videobaseurl + '/login.php';
            }
            if (data.flag == 1)
            {                
                $(".wrap_loader").hide();
                saveFlag = false;   
                sectionId = data.json_data.vs;
                $('.clsDisplaySection').show();
                $('.clsEditSectionDiv').hide();
                $('#divSectionTitle' + vs).find('.lec_title').html(title);
                $('#divLectureStatus' + vl).find('.lec_s').html(l_status);
                $('#displaySectionDiv' + vs).show();
            } else
            {                
                 $(".wrap_loader").hide();
                 $('.alert-danger span').html(data.msg);
                 $('.alert-danger').show();    
                 setTimeout(function() {
                     $('.alert-danger').hide();
                 }, 5000); 
                 return false;
            }
        });
        $(".wrap_loader").hide();
    });

    $('#divTutorialContent').on('click', '.editSectionCls', function () {
        var vc = $('#varData42').val();
        var str = $(this).attr('id');
        var res = str.split("#");
        var vs = res[1];
        $(".wrap_loader").show();
        $.ajax({
            url: videobaseurl + "/ajax/ajaxAddCourseSectionEditor.php",
            method: "POST",
            data: {"vc": vc, "vs": vs},
        }).done(function (data) {
            $('.clsAddLecture').show();
            $('#ancAddSection').show();
            $('#btnPreviewCourseSec').show();
            $("#newSectionDiv").html('');
            $('.newLectureDiv').hide();
            $('.clsEditLectureDiv').html('');
            $('.clsEditLectureDiv').hide();
            $('.clsEditSectionDiv').html('');
            $('.clsEditSectionDiv').hide();
            $('.clsDisplaySection').show();
            $('.clsDisplayLecture').show();
            $('.txtClass').next().html('');
            $(".wrap_loader").hide();
            $('#editSectionDiv' + vs).html(data);
            $('#displaySectionDiv' + vs).hide();
            $('#editSectionDiv' + vs).show();
        });
    });
    $('#divTutorialContent').on("click", ".removeSectionCls", function () {
        var r = confirm("Are you sure to delete this section and all lectures of this section!");
        if (r == true) {
            var str = $(this).attr('id');
            var res = str.split("#");
            var vs = res[1];
            var nextNum = $('#nextSectionNum').val();
            var vc = $('#varData42').val();
            var vu = $('#varData40').val();
            var access_token = $('#access_token').val();

            var formdata = new FormData();
            formdata.append("vc", vc);
            formdata.append("vs", vs);
            formdata.append("vu", vu);
            formdata.append("access_token", access_token);
            $(".wrap_loader").show();
            $.ajax({
                url: video_server_url + "deleteSection.php",
                method: "POST",
                cache: false,
                dataType: "json",
                data: formdata,
                processData: false,
                contentType: false,
            }).done(function (data) {
                if (data.flag == -99)
                {
                    $(".wrap_loader").hide();
                    window.location.href = videobaseurl + '/login.php';
                }
                if (data.flag === 1)
                {
                    $(".wrap_loader").hide();
                    saveFlag = false; 
                    $('.alert-success span').html(data.msg);
                    $('.alert-success').show();
                    setTimeout(function () {
                        $('.alert-success').hide();
                    }, 5000);
                    tutorialCurriculum();
                    $('#nextSectionNum').val(Number(nextNum) - 1);
                } else
                {
                    $(".wrap_loader").hide();
                    $('.alert-danger span').html(data.msg);
                    $('.alert-danger').show();
                    setTimeout(function () {
                        $('.alert-danger').hide();
                    }, 5000);
                    return false;
                }
            });
        }
    });

    // lecture
    $('#divTutorialContent').on('change', "#lectureVideo", function () {
        $("#addSectionDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
            //$(this).next().html('');
        });
        var exts = ['mp4','mov','avi','ogv','wmv'];
        var ext = $('#lectureVideo')[0].files[0].name.split('.');

        ext = ext.reverse();
        var size = ($('#lectureVideo')[0].files[0].size / (1024 * 1024)).toFixed(2);
        if ($.inArray(ext[0].toLowerCase(), exts) < 0) {
            $('.txtClass').next().html('');
           /*  $('#lectureVideo').next().html('Please select mp4 format files only.');
            $('#lectureVideo').focus();
            $('#lectureVideo').css('border-color', 'red'); */
            $("#lectureVideo").val('');
            $('.alert-danger span').html('Please select mp4/mov/avi/ogv/wmv format files only.');
            $('.alert-danger').show();
            setTimeout(function () {
               $('.alert-danger').hide();
            }, 5000);
            return false;
        } /* else if(size > 5){
         $('.txtClass').next().html('');
         $('#lectureVideo').next().html('Please select file less than 5 MB files only');
         $('#lectureVideo').focus();
         $('#lectureVideo').css('border-color','red');
         $("#lectureVideo").val('');
         return false;
         }   */
        var vc = $('#varData42').val();
        var vs = $('#varData20').val();
        var vu = $('#varData40').val();
        var access_token = $('#access_token').val();
        var u_floderName = $('#u_floderName').val();
        var nextNum = $('#nextLectureNum' + vs).val();
        var formdata = new FormData();
        formdata.append("video_file", $('#lectureVideo')[0].files[0]);
        formdata.append("vc", vc);
        formdata.append("vu", vu);
        formdata.append("lecture_folder", u_floderName);
        formdata.append("access_token", access_token);
        
        $.ajax({

            url: video_server_url + "saveNewVideos.php",
            dataType: 'json',
            method: "POST",
            cache: false,
            data: formdata,
            processData: false,
            contentType: false,
            xhr: function () {
                $(".wrap_loader").show();
                var xhr = new window.XMLHttpRequest();
                xhr.upload.addEventListener("progress", function (evt) {
                    if (evt.lengthComputable) {
                        $('#videoProgress').show();
                        var percentComplete = evt.loaded / evt.total;
                        percentComplete = parseInt(percentComplete * 100);
                        $('.myprogress').text(percentComplete + '%');
                        $('.myprogress').css('width', percentComplete + '%');
                    }
                }, false);
                return xhr;
            },
            success: function (data) {
                $(".wrap_loader").hide();
                $('#videoProgress').hide();
                //$("#lectureVideo").val('');
                if (data.flag == -99) {
                    window.location = videobaseurl + "/login.php";
                } else if (data.flag == 1) { 
                    $('#thumbnailDiv').html('');
                    $("#u_floderName").val(data.json_array.video_folder);
                    $("#uv_dimension").val(data.json_array.video_resolution);
                    $("#uv_duration").val(data.json_array.video_main_duration);
                    $("#uv_extension").val(data.json_array.extension);

                    //$('#lectureVideo').next().html(data.json_array.temp_v_name);
                    var str = '';
                    var video_url = data.json_array.video_base_url + '/' + data.json_array.video_name+'?v=1';
                    str += '<div>';
                   // str += '<div class="player_pre"><h6>Video Preview</h6><div class="player player_edit"><video><source type="video/mp4" src="' + video_url + '"></video></div></div>';
                    str += '<div class="media-parent"><div class="media-child"><video id="player_one" class="video-js vjs-fluid vjs-default-skin" controls preload playsinline webkit-playsinline ><source src="'+video_url+'" type="video/mp4"> </video></div></div>';
                    var i = 1;
                    var selStr = '';
                    str += '<input type="hidden" id="videoHdn" value="' + data.json_array.video_name + '">';
                    str += '</div>';

                    $('#thumbnailDiv').html(str);
                    videojs.options.hls.overrideNative = true;
                    videojs.options.html5.nativeAudioTracks = false;
                    videojs.options.html5.nativeTextTracks = false;
                    var player = videojs('player_one');
                    player.nuevo({
                        relatedMenu: false,
                        shareMenu: false,
                        resume: true                         
                     });
                    $("#video").hide();
                     
                } else {
                    $('.lec_upload_vds').html('<span><i class="fa fa-cloud-upload-alt"></i> Upload or Drag Video here</span>');
                    /* $('#lectureVideo').next().html('Something went wrong! Please try after some time');
                    $('#lectureVideo').focus();
                    $('#lectureVideo').css('border-color', 'red'); */
                    $("#lectureVideo").val('');
                    $('.alert-danger span').html(data.msg);
                    $('.alert-danger').show();
                    setTimeout(function () {
                        $('.alert-danger').hide();
                    }, 5000);

                }
            }
        });
    });
    $('#divTutorialContent').on('change', "#lectureDocument", function () {
      
        $("#addSectionDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
            //$(this).next().html('');
        });
        if (parseInt($('#lectureDocument').get(0).files.length) > 0)
        {
            var exts = ['zip', 'twbx', 'jpeg', 'jpg', 'png', 'doc', 'docx', 'xls', 'xlsx', 'pdf', 'csv', 'odf', 'txt', 'ppt', 'pptx', 'css', 'js', 'php', 'java', 'html', 'htm'];
            for (var i = 0; i < $('#lectureDocument').get(0).files.length; ++i) {

                var ext = $('#lectureDocument').get(0).files[i].name.split('.');
                ext = ext.reverse();
                var size = ($('#lectureDocument').get(0).files[i].size / (1024 * 1024)).toFixed(2);
                if ($.inArray(ext[0].toLowerCase(), exts) < 0) {
                    $('.txtClass').next().html('');
                    $('#lectureDocument').next().html('Please select zip/twbx/jpeg/png/doc/docx/xls/xlsx/pdf/csv/odf/txt/ppt/pptx/css/js/php/java/html/htm format files only.');
                    $('#lectureDocument').focus();
                    $('#lectureDocument').css('border-color', 'red');
                    $("#lectureDocument").val('');
                    return false;
                } /* else if (size > 5) {
                 $('.txtClass').next().html('');
                 $('#lectureDocument').next().html('Please select file less than 5 MB files only');
                 $('#lectureDocument').focus();
                 $('#lectureDocument').css('border-color', 'red');
                 $("#lectureDocument").val('');
                 return false;
                 } */
            }
            if ($('#lectureDocument').get(0).files.length > 10)
            {
                $('.txtClass').next().html('');
                $('#lectureDocument').next().html('Max 10 files are allowed to upload at a time.');
                $('#lectureDocument').focus();
                $('#lectureDocument').css('border-color', 'red');
                $("#lectureDocument").val('');
                return false;
            }
        }
        var vc = $('#varData42').val();
        var vu = $('#varData40').val();
        var access_token = $('#access_token').val();
        var formdata = new FormData();
        formdata.append("vc", vc);
        formdata.append("vu", vu);        
        formdata.append("access_token", access_token);
        
        var file_data = $('#lectureDocument')[0].files;
        for (var i = 0; i < file_data.length; i++) {
            formdata.append("fileDocument[]", file_data[i]);
        }
        $.ajax({
            url: video_server_url + "saveDocuments.php",
            dataType: 'json',
            method: "POST",
            cache: false,
            data: formdata,
            processData: false,
            contentType: false,
            xhr: function () {
                $(".wrap_loader").show();
                var xhr = new window.XMLHttpRequest();
                xhr.upload.addEventListener("progress", function (evt) {
                    if (evt.lengthComputable) {
                        $('#docProgress').show();
                        var percentComplete = evt.loaded / evt.total;
                        percentComplete = parseInt(percentComplete * 100);
                        $('.myprogress').text(percentComplete + '%');
                        $('.myprogress').css('width', percentComplete + '%');
                    }
                }, false);
                return xhr;
            },
            success: function (data) {
                $('#docProgress').hide();
                $(".wrap_loader").hide();
                if (data.flag == -99) {
                    window.location = videobaseurl + "/login.php";
                } else if (data.flag == 1) {
                    var str = '';
                    var docs = '';
                    str += '<ul>';
                    $.each(data.json_array.document_files, function (key, value) {
                        var ext = value.split('.');
                        ext = ext.reverse();
                        str += '<li title="' + value + '">';
                        var doctype = '';
                        switch (ext[0]) {
                            case 'pdf':
                                doctype = "<i class='fa fa-file-pdf'></i> PDF";
                                break;
                            case 'xls':
                            case 'xlsx':
                            case 'csv':
                                doctype = "<i class='fa fa-file-excel'></i> Excel";
                                break;
                            case 'doc':
                            case 'docx':
                                doctype = "<i class='fa fa-file-word'></i> Word";
                                break;
                            case 'ppt':
                            case 'pptx':
                                doctype = "<i class='fa fa-file-powerpoint'></i> PPT";
                                break;
                            case 'jpg':
                            case 'jpeg':
                            case 'png':
                                doctype = "<i class='fa fa-file-image'></i> Image";
                                break;
                            default:
                                doctype = "<i class='fa fa-file-alt'></i> Text";
                        }
                        str += "<span>" + doctype + " <a class='clsRemoveTempDocument' data-doc='" + value + "'  data-dtype='N' title='Remove Lecture Document'><b><i class='fa fa-times'></i></b></a></span>";
                        str += '</li>';
                        docs += value + ',';
                    });
                    str += '</ul>';
                    var docslist = $('#docHdn').val();
                    docslist = docslist + docs;
                    $('#docHdn').val(docslist);
                    $('#lectureDocumentList').append(str);
                    $('.clsItemType').filter('[data-type="A"]').addClass('clsItemHighlight');
                    var selLectureType = $('#selLectureType').val();
                    if(parseInt($('#lectureDocument').get(0).files.length) > 0  && selLectureType.indexOf('A') == -1){
                     selLectureType = selLectureType+'A';
                     $('#selLectureType').val(selLectureType);
                    }
                    // $(".player").flowplayer();
                } else {
                    /* $('#lectureDocument').next().html('Something went wrong! Please try after some time');
                    $('#lectureDocument').focus();
                    $('#lectureDocument').css('border-color', 'red'); */
                    $("#lectureDocument").val('');
                    $('.alert-danger span').html(data.msg);
                    $('.alert-danger').show();
                    setTimeout(function () {
                        $('.alert-danger').hide();
                    }, 5000);
                }
            }
        });
    });
    $('#divTutorialContent').on('click', '.clsRemoveTempDocument', function () {
        var docname = $(this).data('doc');
        var thisObj = $(this);
        if (confirm("Are you sure to delete this document!")) {
            var docs = $('#docHdn').val();
            docs = docs.replace(docname + ",", "");
            $('#docHdn').val(docs);
            thisObj.parent().parent().remove();
            
            var selLectureType = $('#selLectureType').val();
            if($('#lectureDocumentList li').length <=0 ){
              selLectureType = selLectureType.replace('A','');
              $('.clsItemType').filter('[data-type="A"]').removeClass('clsItemHighlight');
              $('#selLectureType').val(selLectureType);
            }
            
            var vc = $('#varData42').val();
            var vu = $('#varData40').val();
            var access_token = $('#access_token').val();
            var docname = $(this).data('doc');
            var thisObj = $(this);
            if (confirm("Are you sure to delete this document!")) {
               $.ajax({
                   url: video_server_url + "deleteDocuments.php",
                   method: "POST",
                   dataType: 'json',
                   data: {"vc": vc, "vu": vu, "document": docname,"access_token":access_token},
               }).done(function (data) {
                   if (data.flag == -99)
                   {
                       window.location.href = videobaseurl + '/login.php';
                   }
                   if (data.flag == 1)
                   {
                       //thisObj.parent().remove();          
                       var docs = $('#docHdn').val();
                       docs = docs.replace(docname + ",", "");
                       $('#docHdn').val(docs);
                   } else
                   {
                       $('.alert-danger span').html(data.msg);
                       $('.alert-danger').show();
                       setTimeout(function () {
                           $('.alert-danger').hide();
                       }, 5000);
                       return false;
                   }
               });
           }
        }
    });
    $('#divTutorialContent').on('click', '.clsAddLecture', function () {
        var vc = $('#varData42').val();
        var vu = $('#varData40').val();
        var vs = $(this).attr('id');
        $("#viewLectureDiv" + vs).hide();
        $(".clsAddLecture").show();
        $(".newLectureDiv").html('');
        $(this).hide();
        if (vu == '')
        {
            $('#courseImg').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#varData40').next().html('Please select author');
            $('#varData40').focus();
            $('#varData40').css('border-color', 'red');
            return false;
        }
        $(".wrap_loader").show(); 
        $.ajax({
            url: videobaseurl + "/ajax/ajaxAddCourseLectureEditor.php",
            method: "POST",
            data: {"vc": vc, "vs": vs, "vu": vu},
        }).done(function (data) {
            $('#ancAddSection').show();
            $('#btnPreviewCourseSec').show();
            $("#newSectionDiv").html('');
            $('.newLectureDiv').show();
            $('.clsEditLectureDiv').html('');
            $('.clsEditLectureDiv').hide();
            $('.clsEditSectionDiv').html('');
            $('.clsEditSectionDiv').hide();
            $('.clsDisplaySection').show();
            $('.clsDisplayLecture').show();
            $('#buttons_div').hide();
            $('.txtClass').next().html('');
            $('#newLectureDiv' + vs).html(data);
            $(".wrap_loader").hide();
        });
    });
    $('#divTutorialContent').on('click', '#cancelLecture', function () {
        $("#viewSectionDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });
        $('.clsAddLecture').show();
        $('#ancAddSection').show();
        $('#btnPreviewCourseSec').show();
        $("#newSectionDiv").html('');
        $('.newLectureDiv').html('');
        $('.newLectureDiv').hide();
        $('.clsEditLectureDiv').html('');
        $('.clsEditLectureDiv').hide();
        $('.clsEditSectionDiv').html('');
        $('.clsEditSectionDiv').hide();
        $('.clsDisplaySection').show();
        $('.clsDisplayLecture').show();
        $('.txtClass').next().html('');
        $('#buttons_div').show();
        $(".clsViewLectureDiv").show();
        tutorialCurriculum();
        saveFlag = false; 
    });

    $('#divTutorialContent').on('click', '#addLecture', function () {
        var vu = $('#varData40').val();
        var lecture_status = $('#selLectureStatus').val();
        var selLectureType = $('#selLectureType').val();
        var title = $('#txtLectureTitle').val();
        var vc = $('#varData42').val();
        var vs = $('#varData20').val();
        var u_floderName = $('#u_floderName').val();
        var uv_duration = $('#uv_duration').val();
        var uv_dimension = $('#uv_dimension').val();
        var uv_extension = $('#uv_extension').val();
        var access_token = $('#access_token').val();
        var nextNum = $('#nextLectureNum' + vs).val();
        let editor = new FroalaEditor('div#lectureEditor');
        var lecture_desp = editor.html.get();
        if ($('.previewcheck').is(':checked'))
        {
            var preview_check = '1';
        } else {
            var preview_check = '0';
        }
        $('#lectureMsg').hide();
        $('#lectureMsg').removeClass('successmsg');
        $('#lectureMsg').removeClass('errormsg');

        $("#viewSectionDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });
        $('div#lectureEditor').css('border-color', '#ccc');
        $('div#lectureEditor').next().html('');

        if (vu == '')
        {
            $('#courseImg').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#varData40').next().html('Please select author');
            $('#varData40').focus();
            $('#varData40').css('border-color', 'red');
            return false;
        } else if (title == '')
        {
            $('#varData40').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#txtLectureTitle').next().html('Please enter lecture title');
            $('#txtLectureTitle').focus();
            $('#txtLectureTitle').css('border-color', 'red');
            return false;
        } 
        
        if (parseInt($('#lectureDocument').get(0).files.length) > 0)
        {
            var exts = ['zip', 'twbx', 'jpeg', 'jpg', 'png', 'doc', 'docx', 'xls', 'xlsx', 'pdf', 'csv', 'odf', 'txt', 'ppt', 'pptx', 'css', 'js', 'php', 'java', 'html', 'htm'];
            for (var i = 0; i < $('#lectureDocument').get(0).files.length; ++i) {

                var ext = $('#lectureDocument').get(0).files[i].name.split('.');
                ext = ext.reverse();
                var size = ($('#lectureDocument').get(0).files[i].size / (1024 * 1024)).toFixed(2);
                if ($.inArray(ext[0].toLowerCase(), exts) < 0) {
                    $('.txtClass').next().html('');
                    $('#lectureDocument').next().html('Please select zip/twbx/jpeg/png/doc/docx/xls/xlsx/pdf/csv/odf/txt/ppt/pptx/css/js/php/java/html/htm format files only.');
                    $('#lectureDocument').focus();
                    $('#lectureDocument').css('border-color', 'red');
                    $("#lectureDocument").val('');
                    return false;
                } 
            }
            if ($('#lectureDocument').get(0).files.length > 10)
            {
                $('.txtClass').next().html('');
                $('#lectureDocument').next().html('Max 10 files are allowed to upload at a time.');
                $('#lectureDocument').focus();
                $('#lectureDocument').css('border-color', 'red');
                $("#lectureDocument").val('');
                return false;
            }
        }

        $("#viewSectionDiv,.newLectureDiv input,textarea,file").each(function () {
            $(this).css('border-color', '#ccc');
        });
        $('.txtClass').next().html('');       
        
        if($('#lectureVideo').val() != ''){
         selLectureType = selLectureType+'U';
        }
        if(lecture_desp != ''){
         selLectureType = selLectureType+'T';
        } else {        
         selLectureType = selLectureType.replace('T','');
        }
        if(parseInt($('#lectureDocument').get(0).files.length) > 0){
         selLectureType = selLectureType+'A';
        }
        
        if (selLectureType == '')
        {            
            $('#itemError').html('Please upload content');
            return false;
        }
        
       
        var formdata = new FormData();
        formdata.append("vu", vu);
        formdata.append("lecture_type", selLectureType);
        formdata.append("title", title);
        formdata.append("vc", vc);
        formdata.append("vs", vs);
        formdata.append("lecture_folder", u_floderName);
        formdata.append("uv_duration", uv_duration);
        formdata.append("uv_dimension", uv_dimension);
        formdata.append("lecture_desp", lecture_desp);
        formdata.append("order_num", nextNum);
        formdata.append("lecture_status", lecture_status);
        formdata.append("preview_check", preview_check);
        formdata.append("access_token", access_token);
        formdata.append("uv_extension", uv_extension);
        
        if (parseInt($('#lectureDocument').get(0).files.length) > 0)
        {
            /* var file_data = $('#lectureDocument')[0].files; 
             for(var i = 0;i<file_data.length;i++){
             formdata.append("fileDocument[]", file_data[i]);
             } */
            var docslist = $('#docHdn').val();
            formdata.append("documents", docslist);
        }
        $(".wrap_loader").show();
        $.ajax({
            url: video_server_url + "saveNewLecture.php",
            method: "POST",
            dataType: 'json',
            cache: false,
            data: formdata,
            processData: false,
            contentType: false,
        }).done(function (data) {
            if (data.flag == -99)
            {
                window.location.href = videobaseurl + '/login.php';
            }
            else if (data.flag == 1)
            {
                saveFlag = false;
                $('.alert-success span').html(data.msg);
                $('.alert-success').show();    
                setTimeout(function() {
                  $('.alert-success').hide();
                }, 5000);
                tutorialCurriculum();
                $(".wrap_loader").hide();
            }
            else if (data.flag == -2)
            {
                  $(".wrap_loader").hide();
                  $('.txtClass').next().html('');
                  $('.alert-success span').html(data.msg);
                  $('.alert-success').show();
                  setTimeout(function () {
                     $('.alert-success').hide();
                  }, 5000);
                  return false;
            }
            else
            {
                  $(".wrap_loader").hide();
                  $('.alert-danger span').html(data.msg);
                  $('.alert-danger').show();
                  setTimeout(function () {
                     $('.alert-danger').hide();
                  }, 5000);
                  return false;
            }
        });
    });

    $('#divTutorialContent').on('click', '.editLectureCls', function () {
        var vu = $('#varData40').val();
        var vc = $('#varData42').val();
        var str = $(this).attr('id');
        var res = str.split("#");
        var sid = res[1];
        var vs = $('#txtEditLectureSection' + sid).val();
        var vl = $('#txtEditLectureId' + sid).val();
        if (vu == '')
        {
            $('#courseImg').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#varData40').next().html('Please select author');
            $('#varData40').focus();
            $('#varData40').css('border-color', 'red');
            return false;
        }
        $(".wrap_loader").show();
        $.ajax({
            url: videobaseurl + "/ajax/ajaxAddCourseLectureEditor.php",
            method: "POST",
            data: {"vc": vc, "vs": vs, "vl": vl, "vu": vu},
        }).done(function (data) {
            $('.clsAddLecture').show();
            $('#ancAddSection').show();
            $('#btnPreviewCourseSec').show();
            $("#newSectionDiv").html('');
            $('.newLectureDiv').html('');
            $('.newLectureDiv').hide();
            $('.clsEditLectureDiv').html('');
            $('.clsEditLectureDiv').hide();
            $('.clsEditSectionDiv').html('');
            $('.clsEditSectionDiv').hide();
            $('.clsDisplaySection').show();
            $('.clsDisplayLecture').show();
            $('.txtClass').next().html('');

            $('#editLectureDiv' + sid).html(data);
            $('#displayLectureDiv' + vl).hide();
            $('#buttons_div').hide();
            $('#editLectureDiv' + sid).show();
            $(".wrap_loader").hide();
        });
    });

    $('#divTutorialContent').on('click', '#updateLectureTitle', function () {
        var title = $('#txtLectureTitle').val();
        var vc = $('#varData42').val();
        var lecture_status = $('#selLectureStatus').val();
        var vs = $('#varData20').val();
        var vl = $('#varData30').val();
        var selLectureType = $('#selLectureType').val();
        var access_token = $('#access_token').val();
        var vu = $('#varData40').val();
        
        $('#lectureMsg').hide();
        $('#lectureMsg').removeClass('successmsg');
        $('#lectureMsg').removeClass('errormsg');

        $("#viewSectionDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });

        if (title == '')
        {
            $('.txtClass').next().html('');
            $('#txtLectureTitle').next().html('Please enter lecture title');
            $('#txtLectureTitle').focus();
            $('#txtLectureTitle').css('border-color', 'red');
            return false;
        }

        $("#viewSectionDiv,.newLectureDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });
        $('.txtClass').next().html('');
      
        var formdata = new FormData();
        formdata.append("title", title);
        formdata.append("vu", vu);
        formdata.append("vc", vc);
        formdata.append("vs", vs);
        formdata.append("vl", vl);       
        formdata.append("lecture_status", lecture_status);
        formdata.append("access_token", access_token);
        
        $(".wrap_loader").show();
        $.ajax({
            url: video_server_url + "updateLecture.php",
            method: "POST",
            dataType: 'json',
            cache: false,
            data: formdata,
            processData: false,
            contentType: false,
        }).done(function (data) {
            if (data.flag == -99)
            {
                window.location.href = videobaseurl + '/login.php';
            }
            else if (data.flag == 1)
            {
                saveFlag = false;
                $('.alert-success span').html(data.msg);
                $('.alert-success').show();    
                setTimeout(function() {
                  $('.alert-success').hide();
                }, 5000); 
                tutorialCurriculum();
                $(".wrap_loader").hide();
            }
            else if (data.flag == -2)
            {
                $(".wrap_loader").hide();
                $('.txtClass').next().html('');
                $('.alert-success span').html(data.msg);
                $('.alert-success').show();    
                setTimeout(function() {
                  $('.alert-success').hide();
                }, 5000); 
                return false;
            } else
            {
                $(".wrap_loader").hide();
                $('.alert-danger span').html(data.msg);
                $('.alert-danger').show();    
                setTimeout(function() {
                  $('.alert-danger').hide();
                }, 5000); 
                return false;
            }
        });
    });

    $('#divTutorialContent').on('click', '#updateLecture', function () {
        var title = $('#txtLectureTitle').val();
        var vc = $('#varData42').val();
        var vu = $('#varData40').val();
        var u_floderName = $('#u_floderName').val();
        var uv_duration = $('#uv_duration').val();
        var uv_dimension = $('#uv_dimension').val();
        var uv_extension = $('#uv_extension').val();
        var lecture_status = $('#selLectureStatus').val();
        //var rejectMsg = $('#txtLectureRejectMsg').val();
        var vs = $('#varData20').val();
        var vl = $('#varData30').val();
        var selLectureType = $('#selLectureType').val();       
        let editor = new FroalaEditor('div#lectureEditor');
        var lecture_desp = editor.html.get();
        
        var access_token = $('#access_token').val();

        if ($("input[name='previewcheck']").prop('checked'))
        {
            var preview_check = '1';
        } else {
            var preview_check = '0';
        }
        $('#lectureMsg').hide();
        $('#lectureMsg').removeClass('successmsg');
        $('#lectureMsg').removeClass('errormsg');

        $("#viewSectionDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });
        $('div#lectureEditor').css('border-color', '#ccc');
        $('div#lectureEditor').next().html('');
        if (vu == '')
        {
            $('#courseImg').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#varData40').next().html('Please select author');
            $('#varData40').focus();
            $('#varData40').css('border-color', 'red');
            return false;
        } else if (title == '')
        {
            $('.txtClass').next().html('');
            $('#txtLectureTitle').next().html('Please enter lecture title');
            $('#txtLectureTitle').focus();
            $('#txtLectureTitle').css('border-color', 'red');
            return false;
        } 
        if (parseInt($('#lectureDocument').get(0).files.length) > 0)
        {
            var exts = ['zip', 'twbx', 'jpeg', 'jpg', 'png', 'doc', 'docx', 'xls', 'xlsx', 'pdf', 'csv', 'odf', 'txt', 'ppt', 'pptx', 'css', 'js', 'php', 'java', 'html', 'htm'];
            for (var i = 0; i < $('#lectureDocument').get(0).files.length; ++i) {

                var ext = $('#lectureDocument').get(0).files[i].name.split('.');
                ext = ext.reverse();
                var size = ($('#lectureDocument').get(0).files[i].size / (1024 * 1024)).toFixed(2);
                if ($.inArray(ext[0].toLowerCase(), exts) < 0) {
                    $('.txtClass').next().html('');
                    $('#lectureDocument').next().html('Please select zip/twbx/jpeg/png/doc/docx/xls/xlsx/pdf/csv/odf/txt/ppt/pptx/css/js/php/java/html/htm format files only.');
                    $('#lectureDocument').focus();
                    $('#lectureDocument').css('border-color', 'red');
                    $("#lectureDocument").val('');
                    return false;
                } /* else if (size > 5) {
                 $('.txtClass').next().html('');
                 $('#lectureDocument').next().html('Please select file less than 5 MB files only');
                 $('#lectureDocument').focus();
                 $('#lectureDocument').css('border-color', 'red');
                 $("#lectureDocument").val('');
                 return false;
                 } */
            }
            if ($('#lectureDocument').get(0).files.length > 10)
            {
                $('.txtClass').next().html('');
                $('#lectureDocument').next().html('Max 10 files are allowed to upload at a time.');
                $('#lectureDocument').focus();
                $('#lectureDocument').css('border-color', 'red');
                $("#lectureDocument").val('');
                return false;
            }
        }
       
        $("#viewSectionDiv,.newLectureDiv input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });
        $('.txtClass').next().html('');
         
        //selLectureType = '';
        
        if($('#lectureVideo').val() != '' && selLectureType.indexOf('U') == -1){
         selLectureType = selLectureType+'U';
        }
        if($('#lectureVideo').val() == '' && selLectureType.indexOf('U') == -1){
         selLectureType = selLectureType.replace('U','');
        }
        if(lecture_desp != '' && selLectureType.indexOf('T') == -1){
         selLectureType = selLectureType+'T';
        }
        if(lecture_desp == ''){
         selLectureType = selLectureType.replace('T','');
        }
        if(parseInt($('#lectureDocument').get(0).files.length) > 0  && selLectureType.indexOf('A') == -1){
         selLectureType = selLectureType+'A';
        }
        if($('#lectureDocumentList li').length <=0 ){
           selLectureType = selLectureType.replace('A','');
        }
        
        if (selLectureType == '')
        {            
            $('#itemError').html('Please upload content');
            return false;
        }         
        
        var formdata = new FormData();
        formdata.append("title", title);
        formdata.append("vc", vc);
        formdata.append("vu", vu);
        formdata.append("lecture_folder", u_floderName);
        formdata.append("uv_duration", uv_duration);
        formdata.append("uv_dimension", uv_dimension);
        formdata.append("vs", vs);
        formdata.append("vl", vl);
        formdata.append("lecture_type", selLectureType);
        formdata.append("lecture_desp", lecture_desp);
        formdata.append("lecture_status", lecture_status);
        formdata.append("preview_check", preview_check);
        formdata.append("access_token", access_token);
        formdata.append("uv_extension", uv_extension);      
        
        var docslist = $('#docHdn').val();
        formdata.append("documents", docslist);
         
        $(".wrap_loader").show();
        $.ajax({
            url: video_server_url + "updateNewLecture.php",
            method: "POST",
            dataType: 'json',
            cache: false,
            data: formdata,
            processData: false,
            contentType: false,
        }).done(function (data) {
            if (data.flag == -99)
            {
                window.location.href = videobaseurl + '/login.php';
            }
            else if (data.flag == 1)
            {
                $(".wrap_loader").hide();
                saveFlag = false;
                $('.alert-success span').html(data.msg);
                $('.alert-success').show();    
                setTimeout(function() {
                  $('.alert-success').hide();
                }, 5000); 
                tutorialCurriculum();
            }
            else if (data.flag == -2)
            {
                $(".wrap_loader").hide();
                $('.txtClass').next().html('');
                $('.alert-success span').html(data.msg);
                $('.alert-success').show();    
                setTimeout(function() {
                  $('.alert-success').hide();
                }, 5000); 
                return false;
            } else
            {
                $(".wrap_loader").hide();
                $('.alert-danger span').html(data.msg);
                $('.alert-danger').show();    
                setTimeout(function() {
                  $('.alert-danger').hide();
                }, 5000); 
                return false;
            }
        });
    });


    $('#divTutorialContent').on('click', '.removeLectureCls', function () {
        if (confirm("Are you sure to delete this lecture!")) {
            var vc = $('#varData42').val();
            var vu = $('#varData40').val();
            var access_token = $('#access_token').val();
            var str = $(this).attr('id');
            var res = str.split("#");
            var sid = res[1];
            var vs = $('#txtEditLectureSection' + sid).val();
            var vl = $('#txtEditLectureId' + sid).val();
            var nextNum = $('#nextLectureNum' + vs).val();
            
            var formdata = new FormData();
            formdata.append("vc", vc);
            formdata.append("vs", vs); 
            formdata.append("vl", vl);
            formdata.append("vu", vu);
            formdata.append("access_token", access_token);
            $(".wrap_loader").show();
            $.ajax({
                url: video_server_url + "deleteLecture.php",
                method: "POST",
                cache: false,
                dataType: "json",
                data: formdata,
                processData: false,
                contentType: false,
            }).done(function (data) {
                if (data.flag == -99)
                {
                    window.location.href = videobaseurl + '/login.php';
                }
                if (data.flag == 1)
                {
                    saveFlag = false;
                    $(".wrap_loader").hide();                    
                    $('.alert-success span').html(data.msg);
                    $('.alert-success').show();
                    setTimeout(function () {
                        $('.alert-success').hide();
                    }, 5000);
                    tutorialCurriculum();
                    $('#nextLectureNum' + vl).val(Number(nextNum) - 1);
                } else
                {
                    $(".wrap_loader").hide();
                    $('.alert-danger span').html(data.msg);
                    $('.alert-danger').show();
                    setTimeout(function () {
                        $('.alert-danger').hide();
                    }, 5000);
                    return false;
                }
            });
        }
    });
    $('#divTutorialContent').on('click', '.clsRemoveDocumentLecture', function () {
        var vc = $('#varData42').val();
        var vl = $(this).data('lid');
        var vc = $('#varData42').val();
        var vu = $('#varData40').val();
        var access_token = $('#access_token').val();
        var docname = $(this).data('doc');
        var dtype = $(this).data('dtype');
        var thisObj = $(this);
        if (confirm("Are you sure to delete this document!")) {
            $.ajax({
                url: video_server_url + "deleteDocuments.php",
                method: "POST",
                dataType: 'json',
                data: {"vc": vc,"vu": vu, "document": docname,"access_token":access_token},
            }).done(function (data) {
                if (data.flag == -99)
                {
                    window.location.href = videobaseurl + '/login.php';
                }
                if (data.flag == 1)
                {
                    thisObj.parent().remove();
                    var docs = $('#docHdn').val();
                    docs = docs.replace(docname + ",", "");
                    $('#docHdn').val(docs);
                } else
                {
                   $('.alert-danger span').html(data.msg);
                   $('.alert-danger').show();    
                   setTimeout(function() {
                     $('.alert-danger').hide();
                   }, 5000); 
                   return false;
                }
            });
        }
    });

    $('#divTutorialContent').on('click', '.ancDivVideo', function () {
        var lid = $(this).data('lid');
        var vc = $('#varData42').val();
        $.ajax({
            url: videobaseurl + "/ajax/ajaxPlayLectureVideo.php",
            method: "POST",
            data: {'vl': lid, "vc": vc}
        }).done(function (returnData) {
            $('#popupDivContent').html(returnData);
            $('#popupDiv').show();
        });
    });

    // Delete Course
    $('#divUserProfile').on('click', '.clsDeleteCourse', function () {
        var r = confirm("Are you sure to delete this course and all sections,lectures of this course!");
        if (r == true) {
            var vc = $(this).data('course');
            var vu = $('#varData40').val();
            var access_token = $('#access_token').val();
            var formdata = new FormData();
            formdata.append("vc", vc);
            formdata.append("vu", vu);
            formdata.append("access_token", access_token);
            $.ajax({
                url: video_server_url + "deleteCourse.php",
                method: "POST",
                cache: false,
                dataType: "json",
                data: formdata,
                processData: false,
                contentType: false,
            }).done(function (data) {
                if (data.flag == -99)
                {
                    window.location.href = videobaseurl + '/login.php';
                }
                if (data.flag === 1)
                {
                     $('#divCourse' + vc).remove();
                     $('.alert-success span').html(data.msg);
                     $('.alert-success').show(); 
                     setTimeout(function() {
                        $('.alert-success').hide();
                     }, 5000);
                     /* if(data.utype == 'U'){
                        window.location.href = videobaseurl + '/user_view_courses.php';
                     }else{
                        window.location.href = videobaseurl + '/admin_view_courses.php';
                     } */
                } else
                {
                    $('.alert-danger span').html(data.msg);
                    $('.alert-danger').show();    
                    setTimeout(function() {
                        $('.alert-danger').hide();
                    }, 5000); 
                    return false;
                }
            });
        }
    });

    
    $(document).click(function () {
        var $el = $(".clsSectionMenuDiv");
        var $el1 = $(".clsLectureMenuDiv");
        if ($el.is(":visible")) {
            $el.hide();
        }
        if ($el1.is(":visible")) {
            $el1.hide();
        }
    });
   
    $('#upload-hide').click(function (e) {
        e.stopPropagation();
        var $el = $("#upload-view");
        if ($el.is(":visible")) {
            $('#upload-view').hide();
        } else {
            $('#upload-view').show();
        }
    });
    $(document).on('click', function (e) {
        var $el = $("#upload-view");
        if ($el.is(":visible")) {
            $el.hide();
        }
    });

    $("#divAccount input,textarea").keyup(function () {
        $(this).css('border-color', '#ccc');
        $('.txtClass').next().html('');
    });
   
    //add and edit bank details - India
    $('#btnIndiaBankDetails').click(function () {
        var ptype =  $(this).data('ptype');
        var userName = $('#userName').val();
        var accountNumber = $('#accountNumber').val();
        var bankName = $('#bankName').val();
        var branchName = $('#branchName').val();
        var ifscCode = $('#ifscCode').val();
		var panNumber = $('#panNumber').val();									  
        var accountId = $('#accountId').val();
        var paypal_email_id = $('#paypal_email_id').val();
        var country_code = $("#payment_country_code").val();
        var formdata = new FormData();

        //Validate IFSC Code
        var regex = /^[a-zA-Z0-9]*$/;      
        var isValid = regex.test(ifscCode);
        

        if (userName == '')
        {
            $('.txtClass').next().html('');
            $('#userName').next().html('Please Enter User Name');
            $('#userName').focus();
            $('#userName').css('border-color', 'red');
            return false;
        } else if (accountNumber == '')
        {
            $('.txtClass').next().html('');
            $('#accountNumber').next().html('Please Enter Account Number');
            $('#accountNumber').focus();
            $('#accountNumber').css('border-color', 'red');
            return false;
        } else if (isNaN(accountNumber)) {
            $('.txtClass').next().html('');
            $('#accountNumber').next().html('Account Number Should Be Numeric');
            $('#accountNumber').focus();
            $('#accountNumber').css('border-color', 'red');
            return false;
        } else if (bankName == '')
        {
            $('.txtClass').next().html('');
            $('#bankName').next().html('Please Enter Bank Name');
            $('#bankName').focus();
            $('#bankName').css('border-color', 'red');
            return false;
        } else if (branchName == '')
        {
            $('.txtClass').next().html('');
            $('#branchName').next().html('Please Enter Bank Branch Name');
            $('#branchName').focus();
            $('#branchName').css('border-color', 'red');
            return false;

        } else if (ifscCode == '')
        {
            $('.txtClass').next().html('');
            $('#ifscCode').next().html('Please Enter Bank IFSC Code');
            $('#ifscCode').focus();
            $('#ifscCode').css('border-color', 'red');
            return false;
		}else if (panNumber == '')
        {
            $('.txtClass').next().html('');
            $('#panNumber').next().html('Please Pan Number');
            $('#panNumber').focus();
            $('#panNumber').css('border-color', 'red');
            return false;						  
        }else if (!isValid) {
            $('.txtClass').next().html('');
            $('#ifscCode').next().html("Invalid IFSC format (Ex: HDFC0034345).");
            $('#ifscCode').focus();
            $('#ifscCode').css('border-color', 'red');
            return false;
        } 

        formdata.append('userName', userName);
        formdata.append('accountNumber', accountNumber);
        formdata.append('bankName', bankName);
        formdata.append("branchName", branchName);
        formdata.append("ifscCode", ifscCode);
		formdata.append("panNumber", panNumber);										
        formdata.append("accountId", accountId);
        formdata.append("btntype", ptype);
        formdata.append("country_code", country_code);

        $.ajax({
            url: videobaseurl + "/ajax/ajaxEditUserBankDetails.php",
            method: "POST",
            dataType: 'json',
            cache: false,
            data: formdata,
            processData: false,
            contentType: false
        }).done(function (data) {
            if (data.flag == -99) {
                window.location = videobaseurl + "/login.php";
            } else if (data.flag == 1) {
                $('.alert-success span').html(data.msg);
                $('.alert-success').show();
                setTimeout(function () {
                    $('.alert-success').hide();
                }, 5000);
            } else if (data.flag == 0) {
                $('.alert-danger span').html(data.msg);
                $('.alert-danger').show();
                setTimeout(function () {
                    $('.alert-danger').hide();
                }, 5000);
                return false;
            }
        });
    });
    $('#btnUpadatePaypal').click(function () {
        var ptype =  $(this).data('ptype');
        var paypal_email_id = $('#paypal_email_id').val();
        var accountId = $('#accountId').val();        
        var country_code = $("#payment_country_code").val();

        if (paypal_email_id == '' || !emailPattern.test(paypal_email_id))
        {
            $('.txtClass').next().html('');
            $('#paypal_email_id').next().html('Please Enter Paypal email id');
            $('#paypal_email_id').focus();
            $('#paypal_email_id').css('border-color', 'red');
            return false;
        } 
        var formdata = new FormData();
        formdata.append("paypal_email_id", paypal_email_id);
        formdata.append("btntype", ptype);
        formdata.append("country_code", country_code);
        $.ajax({
            url: videobaseurl + "/ajax/ajaxEditUserBankDetails.php",
            method: "POST",
            dataType: 'json',
            cache: false,
            data: formdata,
            processData: false,
            contentType: false
        }).done(function (data) {
            if (data.flag == -99) {
                window.location = videobaseurl + "/login.php";
            } else if (data.flag == 1) {
                $('.alert-success span').html(data.msg);
                $('.alert-success').show(); 
                $('#accountId').val(data.id);
                setTimeout(function() {
                $('.alert-success').hide();
                 }, 5000);
                return true; 
            } else  if (data.flag == 0){
                $('.alert-danger span').html(data.msg);
                $('.alert-danger').show();    
                setTimeout(function() {
                $('.alert-danger').hide();
                 }, 5000);  
                return false;
            }
        });
    });

    //adding  and editing coupon details
    $('#btnSaveCouponCodeDetails').click(function () {
        saveFlag = false;
        var couponCode = $('#couponCode').val();
        var coponType = $('#coponType').val();
        var INR_value = $('#INR_value').val();
        var USD_value = $('#USD_value').val();
        var couponStartDate = $('#couponStartDate').val();
        var couponEndDate = $('#couponEndDate').val();
        var couponStatus = $('#couponStatus').val();
        var coupon_id = $('#coupon_id').val();
        var user_id = $('#varData40').val();

        $('#basicMsg').hide();
        $('#basicMsg').removeClass('successmsg');
        $('#basicMsg').removeClass('errormsg');

        $("#divAccount input").each(function () {
            $(this).css('border-color', '#ccc');
        });
        var formdata = new FormData();

        if (user_id == '')
        {
            $('#courseImg').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#txtUserName').next().html('Please select user name');
            $('#txtUserName').focus();
            $('#txtUserName').css('border-color', 'red');
            return false;
        } else if (couponCode == '')
        {
            $('.txtClass').next().html('');
            $('#couponCode').next().html('Please Enter Coupon Code');
            $('#couponCode').focus();
            $('#couponCode').css('border-color', 'red');
            return false;
        } else if (coponType == '')
        {
            $('#couponCode').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#coponType').next().html('Please select Coupon Type');
            $('#coponType').focus();
            $('#coponType').css('border-color', 'red');
            return false;
        } else if (isNaN(INR_value)) {
            $('#couponCode').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#INR_value').next().html('INR Value Should Be Numeric');
            $('#INR_value').focus();
            $('#INR_value').css('border-color', 'red');
            return false;
        } else if (INR_value == '')
        {
            $('#couponCode').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#INR_value').next().html('Please Enter INR Value ');
            $('#INR_value').focus();
            $('#INR_value').css('border-color', 'red');
            return false;
        } else if (isNaN(USD_value)) {
            $('#couponCode').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#USD_value').next().html('USD Value Should Be Numeric');
            $('#USD_value').focus();
            $('#USD_value').css('border-color', 'red');
            return false;
        } else if (USD_value == '')
        {
            $('#couponCode').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#USD_value').next().html('Please Enter USD Value ');
            $('#USD_value').focus();
            $('#USD_value').css('border-color', 'red');
            return false;
        } else if (couponStartDate == '')
        {
            $('#couponCode').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#couponStartDate').next().html('Please Enter Coupon Start Date');
            $('#couponStartDate').focus();
            $('#couponStartDate').css('border-color', 'red');
            return false;

        } else if (couponEndDate == '')
        {
            $('#couponCode').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#couponEndDate').next().html('Please Enter Coupon End Date');
            $('#couponEndDate').focus();
            $('#couponEndDate').css('border-color', 'red');
            return false;
        } else if (couponStatus == '')
        {
            $('#couponCode').css('border-color', '#ccc');
            $('.txtClass').next().html('');
            $('#couponStatus').next().html('Please Enter Coupon Status');
            $('#couponStatus').focus();
            $('#couponStatus').css('border-color', 'red');
            return false;
        }


        $('.txtClass').next().html('');
        $("#divAccount input,textarea").each(function () {
            $(this).css('border-color', '#ccc');
        });

        formdata.append('couponCode', couponCode);
        formdata.append('coponType', coponType);
        formdata.append('INR_value', INR_value);
        formdata.append("USD_value", USD_value);
        formdata.append("couponStartDate", couponStartDate);
        formdata.append("couponEndDate", couponEndDate);
        formdata.append("couponStatus", couponStatus);
        formdata.append("coupon_id", coupon_id);
        formdata.append("user_id", user_id);

        $.ajax({
            url: videobaseurl + "/ajax/ajaxAddCouponCode.php",
            method: "POST",
            dataType: 'json',
            cache: false,
            data: formdata,
            processData: false,
            contentType: false
        }).done(function (data) {
            if (data.flag == -99) {
                window.location = videobaseurl + "/login.php";
            } else if (data.flag == 1) {
                $('.alert-success span').html(data.msg);
                $('.alert-success').show();
                setTimeout(function () {
                    $('.alert-success').hide();
                }, 5000);
                window.location = videobaseurl + "/coupon_details.php";
            } else if (data.flag == 0) {
                $('.alert-danger span').html(data.msg);
                $('.alert-danger').show();
                setTimeout(function () {
                    $('.alert-danger').hide();
                }, 5000);
            }
        });
    });

    //detele coupon details
    $('.clsDeleteCouponCode').click(function () {
        var r = confirm("Are you sure to delete this Coupon Code details");
        if (r == true) {
            var coupon_id = $(this).data('coupon');
            var formdata = new FormData();
            formdata.append("coupon_id", coupon_id);
            $.ajax({
                url: videobaseurl + "/ajax/ajaxDeleteCouponDetails.php",
                method: "POST",
                cache: false,
                dataType: "json",
                data: formdata,
                processData: false,
                contentType: false,
            }).done(function (data) {
                if (data.flag == -99)
                {
                    window.location.href = videobaseurl + '/login.php';
                }
                if (data.flag === 1)
                {
                    $('.alert-success span').html(data.msg);
                    $('.alert-success').show();
                    setTimeout(function () {
                        $('.alert-success').hide();
                    }, 5000);
                    location.reload();
                } else
                {
                    $('.alert-danger span').html(data.msg);
                    $('.alert-danger').show();
                    setTimeout(function () {
                        $('.alert-danger').hide();
                    }, 5000);
                    return false;
                }
            });
        }
    });
    //Apply coupon details
    $('.apply_coupon').click(function () {

        var course_id = $(this).data('course');
        var coupon_code = $('#couponCode' + course_id).val();
        var fcpinr = $("#fcpinr").val();
        var fcpusd = $("#fcpusd").val();
        if (coupon_code == '' || coupon_code == undefined) {
          $('.alert-danger span').html('Please enter coupon code');
          $('.alert-danger').show();
          setTimeout(function () {
                $('.alert-danger').hide();
          }, 5000);
          return false;
        }
        var formdata = new FormData();
        formdata.append("coupon_code", coupon_code);
        formdata.append("course_id", course_id);
        formdata.append("fcpinr", fcpinr);
        formdata.append("fcpusd", fcpusd);

        $.ajax({
            url: videobaseurl + "/ajax/ajaxApplyCoupon.php",
            method: "POST",
            cache: false,
            dataType: "json",
            data: formdata,
            processData: false,
            contentType: false,
        }).done(function (data) {
            if (data.flag === 1)
            {

                $('#couponCode' + course_id).attr('disabled', 'disabled');
                $('#apply_coupon' + course_id).attr('disabled', 'disabled');
                $("#span_message" + course_id).html('<div class="coupn-aplied-sucess"><i class="fa fa-check"></i> <b> ' + coupon_code + ' </b> coupon applied successfully </div>').css("color", "green");
                $("#course_price_inr" + course_id).html("<i class='fa fa-rupee-sign'></i>" + data.final_price_inr);
                $("#course_price_usd" + course_id).html("<i class='fa fa-dollar-sign'></i>" + data.final_price_usd);
                $("#final_checkout_price_inr").html("<i class='fa fa-rupee-sign'></i> " + data.total_inr);
                $("#final_checkout_price_usd").html("<i class='fa fa-dollar-sign'></i> " + data.total_usd);
                $("#fcpusd").val(data.total_usd_en);
                $("#fcpinr").val(data.total_inr_en);
                $("#clear_coupon" + course_id).css("display", 'block');

            } else
            {
                $("#span_message" + course_id).html(data.msg).css("color", "red");
                setTimeout(function () {
                    $('#span_message' + course_id).hide();
                    $('#couponCode' + course_id).val('');
                }, 5000);

                return false;
            }
        });


    });

    //detele coupon details
    $('.clear_coupon').click(function () {

        var course_id = $(this).data('course');
        var coupon_code = $('#couponCode' + course_id).val();
        var fcpinr = $("#fcpinr").val();
        var fcpusd = $("#fcpusd").val();
        if (coupon_code == '') {
            $('.alert-danger span').html('Please enter coupon code');
            $('.alert-danger').show();
            setTimeout(function () {
                  $('.alert-danger').hide();
            }, 5000);
            return false;
        }
        var formdata = new FormData();
        formdata.append("coupon_code", coupon_code);
        formdata.append("course_id", course_id);
        formdata.append("fcpinr", fcpinr);
        formdata.append("fcpusd", fcpusd);
        $.ajax({
            url: videobaseurl + "/ajax/ajaxRemoveCoupon.php",
            method: "POST",
            cache: false,
            dataType: "json",
            data: formdata,
            processData: false,
            contentType: false,
        }).done(function (data) {
            if (data.flag === 1)
            {

                $('#couponCode' + course_id).attr('disabled', false);
                $('#apply_coupon' + course_id).attr('disabled', false);
                $('#couponCode' + course_id).val("");
                $("#course_price_inr" + course_id).html("<i class='fa fa-rupee-sign'></i>" + data.final_price_inr);
                $("#course_price_usd" + course_id).html("<i class='fa fa-dollar-sign'></i>" + data.final_price_usd);
                $("#final_checkout_price_inr").html("<i class='fa fa-rupee-sign'></i>" + data.total_inr);
                $("#final_checkout_price_usd").html("<i class='fa fa-dollar-sign'></i>" + data.total_usd);
                $("#fcpusd").val(data.total_usd_en);
                $("#fcpinr").val(data.total_inr_en);
                $("#clear_coupon" + course_id).css("display", 'block');
                $("#clear_coupon" + course_id).css("display", 'none');
                $("#span_message" + course_id).html("");

            } else
            {
                $("#span_message" + course_id).html(data.msg).css("color", "red");
                return false;
            }
        });


    });

 //user submit for review 
    $('#divTutorialContent').on('click', '#btnSubmitForReview', function () {

        var status = $(this).data('stat');
        var msg = $(this).data('msg');
        if (msg == 'yes') {
            var r = confirm("If you sumbit for review you can not edit the course!");
        } else {
            var r = confirm("Are you sure to approve this course!");
        }
        if (r == true) {
            $.ajax({
                url: videobaseurl + "/ajax/ajaxTutorialSubmitForReview.php",
                method: "POST",
                data: {'vc': $('#varData42').val(), "status": status},
                dataType: "json",
            }).done(function (data) {
                if (data == -99) {
                    window.location = videobaseurl + "/login.php";
                }
                if (data.flag == 1)
                {
                    $(".wrap_loader").hide();
                    $('.alert-success span').html(data.msg);
                    $('.alert-success').show();    
                    if (data.ut == 'U') {
                        window.location = videobaseurl + "/user_view_courses.php";
                    } else {
                        window.location = videobaseurl + "/admin_view_courses.php";
                    } 
                    return false;                    
                } else
                {
                    $(".wrap_loader").hide();
                    $('.alert-danger span').html(data.msg);
                    $('.alert-danger').show();    
                    setTimeout(function() {
                     $('.alert-danger').hide();
                     }, 5000); 
                    return false;
                }
            });
        }
    });
   //user submit for review from side tab
    $('#btnSubmitForReviewTab').click(function () {
        var status = $(this).data('stat');
        var msg = $(this).data('msg');
        if (msg == 'yes') {
            var r = confirm("If you sumbit for review you can not edit the course!");
        } 
        if (r == true) {
            $.ajax({
                url: videobaseurl + "/ajax/ajaxTutorialSubmitForReview.php",
                method: "POST",
                data: {'vc': $('#varData42').val(), "status": status},
                dataType: "json",
            }).done(function (data) {
                if (data == -99) {
                    window.location = videobaseurl + "/login.php";
                }
                if (data.flag == 1)
                {
                    $(".wrap_loader").hide();
                    $('.alert-success span').html(data.msg);
                    $('.alert-success').show();    
                    if (data.ut == 'U') {
                        window.location = videobaseurl + "/user_view_courses.php";
                    } else {
                        window.location = videobaseurl + "/admin_view_courses.php";
                    } 
                    return false;                    
                } else
                {
                    $(".wrap_loader").hide();
                    $('.alert-danger span').html(data.msg);
                    $('.alert-danger').show();    
                    setTimeout(function() {
                     $('.alert-danger').hide();
                     }, 5000); 
                    return false;
                }
            });
        }
    });


});
