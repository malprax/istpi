// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery_nested_form
//= require chosen-jquery
//= require jquery-ui

//= require ckeditor/override
//= require ckeditor/init
//= require bootstrap-wysihtml5
//= require bootstrap-datepicker
//= require message_flash
//= require_tree .

$(document).ready(function(){
  $('body').scrollspy({ target: '#navbar-example' });

});
