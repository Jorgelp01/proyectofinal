$(function(){
  validate();
  $('input[type="text"]').keyup(validate); //you can use your multiple id selector instead of the attribute selector that i am using
});

function validate() {
  var inputvalue = $('input[type="text"]').filter(function (n) {
     return this.value.length > 0;
  })

  if (inputvalue.length == $('input[type="text"]').length) {
     $("input[type=submit]").prop("disabled", false);
  } else {
     $("input[type=submit]").prop("disabled", true);
  }
}