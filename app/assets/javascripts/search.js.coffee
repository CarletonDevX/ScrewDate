# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
    $('select#dorm_name').change ->
        if ($(this).val() == '')
            $('span#floor_option').addClass('hide')
        else
            $('span#floor_option').removeClass('hide')
