
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

    $('#edit-category-container .collection_radio_buttons').click(function(){
      $('.collection_radio_buttons').removeClass('selected-up');
      $(this).addClass('selected-up');
    });

    $('input.radio_buttons').each(function(){
      if($(this).is(':checked')){
        $(this).next().addClass("selected-up");
      }
    });


    $('.tooltipped').tooltip({delay: 50});

    $('.art-image').addClass('.tooltipped').tooltip({tooltip:"Artwork"});
    $('.arch-image').addClass('.tooltipped').tooltip({tooltip:"Architecture"});
    $('.furn-image').addClass('.tooltipped').tooltip({tooltip:"Furniture"});
    $('.craft-image').addClass('.tooltipped').tooltip({tooltip:"Craft"});
    $('.app-image').addClass('.tooltipped').tooltip({tooltip:"App"});

     $(".button-collapse").sideNav();
















});
