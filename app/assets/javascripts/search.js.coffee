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
