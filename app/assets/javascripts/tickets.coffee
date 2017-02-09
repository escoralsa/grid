# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  ready = ->
  $(document).ready()
  $(document).on('page:load',ready)
  $('#ticket_contact_id').parent().hide()
  contacts = $('#ticket_contact_id').html()
  $('#ticket_customer_id').change ->
    customer = $('#ticket_customer_id :selected').text()
    options = $(contacts).filter("optgroup[label='#{customer}']").html()
    if options
      $('#ticket_contact_id').html(options)
      $('#ticket_contact_id').parent().show()
    else
      $('#ticket_contact_id').empty()
      $('#ticket_contact_id').parent().hide()