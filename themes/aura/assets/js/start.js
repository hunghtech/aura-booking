var AURA = AURA || {};
$(document).ready(function () {
    $(window).on('load', function () {
        var nowTemp = new Date();
        var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

        $('.datepicker').datepicker({
            onRender: function (date) {
                return date.valueOf() < now.valueOf() ? 'disabled' : '';
            }
        });
        new WOW().init();
        AURA.openNav();
        AURA.closeNav();

        // parallax
        // Accepts any class name
        var rellax = new Rellax('.rellax');


        $('body').addClass('loaded');
        $("#carouselExampleIndicators1").on('slide.bs.carousel', function (data) {
            // do something...
            // console.log(data.to)
            $("#carouselExampleIndicators1-1").carousel(data.to);
            console.log($(this).attr("id"))
        })
        $("#carouselExampleIndicators2").on('slide.bs.carousel', function (data) {
            // do something...
            // console.log(data.to)
            $("#carouselExampleIndicators2-2").carousel(data.to);
        })
        /*$('.link_tab_direct').on('click', function () {
         var tab = $(this).data('href')
         $('.nav-tabs a[href="#'+tab+'"]').tab('show')
         // $('.link_tab_direct').siblings().removeClass('active');
         // $(this).addClass('active');
         })*/
        $('.nav-tab-product[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            // e.target // newly activated tab
            // e.relatedTarget // previous active tab
            var crs = "#" + $(e.target).attr("data-carousel");
            $("#carousel-event").find($('.carousel-even.carousel-even--active')).removeClass('carousel-even--active');
            $(crs).addClass('carousel-even--active');
        });

        $('.nav-tab-working[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            // e.target // newly activated tab
            // e.relatedTarget // previous active tab
            var crs = "#" + $(e.target).attr("data-carousel");
            $("#carousel-working").find($('.carousel-even.carousel-even--active')).removeClass('carousel-even--active');
            $(crs).addClass('carousel-even--active');
        });

        $('.accordion--sanpham').on('shown.bs.collapse', function (e) {
            // do something...
            console.log($(e.target).attr("data-carouse"), e.target)
            var crs = "#" + $(e.target).attr("data-carouse");
            $('.active_show').removeClass('active_show');
            $(crs).addClass('active_show');
        });
        $('.collapse_mobile').on('shown.bs.collapse', function (e) {
            $('.carousel_content').addClass('carousel_content_full');
        });
        $('.collapse_mobile').on('hidden.bs.collapse', function (e) {
            $('.carousel_content').removeClass('carousel_content_full');
        });

        $("body").delegate(".nav-menu", "click", function () {
            var type = $(this).attr('data-type');
            $('.nav-menu').removeClass('active');
            $(this).addClass('active');
            $('.tab').addClass('hidden');
            $('.' + type).removeClass('hidden');
        });
        var offset=200;
        var duration=500;
        $(window).scroll(function() {
                if($(this).scrollTop()>offset) {
                    $('.back-to-top').fadeIn(400);
                }
                else {
                    $('.back-to-top').fadeOut(400);
                }
            }
        );
        $('.back-to-top').click(function(event) {
            event.preventDefault();
            $('html, body').animate( {
                    scrollTop: 0
                }
                , 600);
            return false;
        })
    })
});

AURA.bookRoomSuccess = function () {
    swal({
        title: "Thông báo!",
        text: "Đặt phòng thành công! Cảm ơn bạn đã tin tưởng và sử dụng dịch vụ của Aura!",
        type: "success"
    });
}

AURA.errorSignin = function (jqXHR)
{
    $('.error-signin').show();
}
AURA.errorRegister = function (jqXHR)
{
    $('.error-register').show();
}

AURA.registerSuccess = function () {
    swal({
        title: "Thông báo!",
        text: "Đăng ký thành công!",
        type: "success"
    });
}
AURA.openNav = function () {
    $("body").delegate(".navbar-toggler-icon", "click", function () {
        $("#mySidenav").fadeIn(500);
       //document.getElementById("mySidenav").style.width = "100%";
    });
}

AURA.closeNav = function () {
    $("body").delegate(".closebtn", "click", function () {
        $("#mySidenav").fadeOut(500);
       //document.getElementById("mySidenav").style.width = "0";
    });
}

var isMobile = {
    Android: function () {
        return navigator.userAgent.match(/Android/i);
    },
    BlackBerry: function () {
        return navigator.userAgent.match(/BlackBerry/i);
    },
    iOS: function () {
        return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    },
    Opera: function () {
        return navigator.userAgent.match(/Opera Mini/i);
    },
    Windows: function () {
        return navigator.userAgent.match(/IEMobile/i) || navigator.userAgent.match(/WPDesktop/i);
    },
    any: function () {
        return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
    }
};
$(window).load(function() {
    $("body").addClass('loaded');
});

