
$(document).on('turbolinks:load', function() {
  $('.new_project').find('label').css("margin-right", "30px");
     $('.modal').modal();
     var artwork = $('.collection_radio_buttons').eq(0);
     var arch = $('.collection_radio_buttons').eq(1);
     var furniture = $('.collection_radio_buttons').eq(2);
     var craft = $('.collection_radio_buttons').eq(3);
     var app = $('.collection_radio_buttons').eq(4);

     artwork.addClass('art-image');
     arch.addClass('arch-image');
     furniture.addClass('furn-image');
     craft.addClass('craft-image');
     app.addClass('app-image');

    $('#category-container .collection_radio_buttons').click(function(){
      $('.collection_radio_buttons').removeClass('selected-up');
      $(this).addClass('selected-up');
    });

    $('#edit-form-container .collection_radio_buttons').click(function(){
      $('.collection_radio_buttons').removeClass('selected-left');
      $(this).addClass('selected-left');
    });

  












});
