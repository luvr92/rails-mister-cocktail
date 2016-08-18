$(document).ready(function() {
  $('#new-dose').click(function() {
    if ($('#dose-form').hasClass('hidden')) {
    $('#dose-form').removeClass('hidden');
    } else {
    $('#dose-form').addClass('hidden');
    }
  });
});
