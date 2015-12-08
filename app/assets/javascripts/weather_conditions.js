# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
    $('.js-generate-weather-conditions').click(function() {
      $.ajax("/weather_conditions/generate_sample_conditions")
    });
});