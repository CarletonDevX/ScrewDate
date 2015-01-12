# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('select#dorm_id').change ->
    hideFloors()

  # check if floors dropdown should already be hidden on load
  # need this for when user goes back in browser
  hideFloors()

hideFloors = () ->
  if ($('select#dorm_id').val() == '')
    $('span#floor_option').addClass('hide')
  else
    $('span#floor_option').removeClass('hide')
