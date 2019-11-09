$(function(){
  $(window).bind('load', function() {
    let path = location.pathname

    if (path == "/signup/sms_confirmation"){
      $('.signup_header_list').removeClass('signup_active');
      $('.signup_header__bar__group li:first').addClass('signup_through');
      $('.signup_header__bar__group li:nth-child(2)').addClass('signup_active');
    };
    if (path == "/signup/new_address"){
      $('.signup_header_list').removeClass('signup_active');
      $('.signup_header__bar__group li:first').addClass('signup_through');
      $('.signup_header__bar__group li:nth-child(2)').addClass('signup_through');
      $('.signup_header__bar__group li:nth-child(3)').addClass('signup_active');
    };
    if (path == "/signup/new_card"){
      $('.signup_header_list').removeClass('signup_active');
      $('.signup_header__bar__group li:first').addClass('signup_through');
      $('.signup_header__bar__group li:nth-child(2)').addClass('signup_through');
      $('.signup_header__bar__group li:nth-child(3)').addClass('signup_through');
      $('.signup_header__bar__group li:nth-child(4)').addClass('signup_active');
    };
    if (path == "/signup/complete"){
      $('.signup_header_list').removeClass('signup_active');
      $('.signup_header__bar__group li:first').addClass('signup_through');
      $('.signup_header__bar__group li:nth-child(2)').addClass('signup_through');
      $('.signup_header__bar__group li:nth-child(3)').addClass('signup_through');
      $('.signup_header__bar__group li:nth-child(4)').addClass('signup_through');
      $('.signup_header__bar__group li:last').addClass('signup_active');
    };
  });
})