
$(document).on('turbolinks:load', function() {
  $(".simple_form").find("div").addClass("simple-form-children");
  $(".simple-form-children").children().addClass("form-items");
  $("input").last().addClass("submit-button");



});
