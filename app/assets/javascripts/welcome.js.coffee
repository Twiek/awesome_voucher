# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  voucherRegex = /^[a-zA-Z\d*\-*]{0,8}$/
  $("#voucher_code").keyup ->
    userInput = $("#voucher_code").val()
    if !voucherRegex.test(userInput)
      $(".form-group").addClass "control-group error"
      $("#warning-icon").show();
      $("#approval-icon").hide();
      $("#warning_text").show();
      $('.btn').attr("disabled", true);
    else
      $(".form-group").removeClass "control-group error"
      $("#approval-icon").show();
      $("#warning-icon").hide();
      $("#warning_text").hide();
      $('.btn').attr("disabled", false);
    return

  return

