$(document).on('ready page:load', function () {
  $("form").find("div").addClass("simple-form-children");
  $(".simple-form-children").children().addClass("form-items");
  $("input").last().css("width","50px");


});
