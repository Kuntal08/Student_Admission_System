# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  schools = $('#seeker_school_id').html()
  $('#seeker_board_id').change ->
    board = $('#seeker_board_id :selected').text()
    options = $(schools).filter("optgroup[label='#{board}']").html()
    if options
      $('#seeker_school_id').html(options)
    else
      $('#seeker_school_id').empty()
