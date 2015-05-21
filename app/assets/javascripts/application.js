// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/2/jquery.dataTables.bootstrap
//= require dataTables/jquery.dataTables
//= require bootstrap-sprockets
//= require jquery.metisMenu
//= require custom-scripts
//= requrie jquery.Jcrop
//= requrie jquery.Jcrop.min
//= requrie jquery.easing.1.3.min
//= requrie jquery.sticky
//= require main
//= require owl.carousel.min
//= requrie leanModal-modified-for-onload
//= requrie jquery.leanModal.min
//= require piggybak/piggybak-application
//= require raphael
//= require morris
//= require jquery.validate.min
//= require turbolinks
//= require_tree .





$(document).ready(function(){

  var v = jQuery("#basicform").validate({
      rules: {
        uname: {
          required: true,
          minlength: 2,
          maxlength: 16
        },
        uemail: {
          required: true,
          minlength: 2,
          email: true,
          maxlength: 100,
        },
        upass1: {
          required: true,
          minlength: 6,
          maxlength: 15,
        },
        upass2: {
          required: true,
          minlength: 6,
          equalTo: "#upass1",
        }
 
      },
      errorElement: "span",
      errorClass: "help-inline",
    });




  // Binding next button on first step
  $(".open1").click(function() {
      // if (v.form()) {
        $(".frm").hide("fast");
        $("#sf2").show("slow");
      // }
   });
 
   // Binding next button on second step
   $(".open2").click(function() {
      // if (v.form()) {
        $(".frm").hide("fast");
        $("#sf3").show("slow");
      // }
    });
 
     // Binding back button on second step
    $(".back2").click(function() {
      $(".frm").hide("fast");
      $("#sf1").show("slow");
    });
 
     // Binding back button on third step
     $(".back3").click(function() {
      $(".frm").hide("fast");
      $("#sf2").show("slow");
    });
 
    $(".open3").click(function() {
      // if (v.form()) {
        // optional
        // used delay form submission for a seccond and show a loader image
        $("#loader").show();
         setTimeout(function(){
           $("#basicform").html('<h2>Thanks for your time.</h2>');
         }, 1000);
        // Remove this if you are not using ajax method for submitting values
        return false;
      // }
    });


});

