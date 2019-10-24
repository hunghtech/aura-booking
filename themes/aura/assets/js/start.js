var AURA = AURA || {};
var showMenu = false;
$(document).ready(function () {
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
    AURA.owlCarousel();

    // parallax
    // Accepts any class name
    new Rellax('.rellax');


    $('body').addClass('loaded');
    $("#carouselExampleIndicators1").on('slide.bs.carousel', function (data) {
        $("#carouselExampleIndicators1-1").carousel(data.to);
    })
    $("#carouselExampleIndicators2").on('slide.bs.carousel', function (data) {
        $("#carouselExampleIndicators2-2").carousel(data.to);
    })
    $('.nav-tab-product[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        var crs = "#" + $(e.target).attr("data-carousel");
        $("#carousel-event").find($('.carousel-even.carousel-even--active')).removeClass('carousel-even--active');
        $(crs).addClass('carousel-even--active');
        var id_current = $(e.target).attr("id");
        $(".nav-item").find('.nav-link.nav-tab-product').removeClass('active show');
        $("#" + id_current).addClass('active show');
    });

    $('.nav-tab-working[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        var crs = "#" + $(e.target).attr("data-carousel");
        $("#carousel-working").find($('.carousel-even.carousel-even--active')).removeClass('carousel-even--active');
        $(crs).addClass('carousel-even--active');
        var id_current = $(e.target).attr("id");
        $(".nav-item").find('.nav-link.nav-tab-working').removeClass('active show');
        $("#" + id_current).addClass('active show');
    });

    $('.accordion--sanpham').on('shown.bs.collapse', function (e) {
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
    
    $("body").delegate(".play-video", "click", function () {
        $('.video-intro').show();
        $('.banner').hide();
    });



    var offset = 200;
    $(window).scroll(function () {
        if ($(this).scrollTop() > offset) {
            if (!showMenu)
                $('.back-to-top').fadeIn(400);
        } else {
            $('.back-to-top').fadeOut(400);
        }
    }
    );
    $('.back-to-top').click(function (event) {
        event.preventDefault();
        $('html, body').animate({
            scrollTop: 0
        }
        , 600);
        return false;
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
        showMenu = true;
    });
}

AURA.closeNav = function () {
    $("body").delegate(".closebtn", "click", function () {
        $("#mySidenav").fadeOut(500);
        //document.getElementById("mySidenav").style.width = "0";
        showMenu = false;
    });
}
AURA.owlCarousel = function () {
    $('#user_about .owl-carousel').owlCarousel({
        stagePadding: 50,
        loop: true,
        margin: 10,
        pagination: false,
        navigation: true,
        mouseDrag: false,
        touchDrag: true,
        navigationText: [
            '<div class="prev"></div>',
            '<div class="next"></div>'
        ],
        autoPlay: 5000,
        items: 3,
        itemsTablet: 32,
        margin: 90,
        stagePadding: 90,
        smartSpeed: 450,
        itemsDesktop: [1199, 3],
        itemsDesktopSmall: [980, 2],
        itemsTablet: [768, 1],
        itemsTabletSmall: [480, 1],
        itemsMobile: [479, 1]
    });
    $('.nav-tabs-aura').owlCarousel({
        autoPlay: false,
        loop: true,
        pagination: false,
        navigation: true,
        mouseDrag: false,
        touchDrag: true,
        navigationText: [
            '<div class="prev"></div>',
            '<div class="next"></div>'
        ],
        items: 3,
        itemsTablet: 3,
        itemsDesktop: [1199, 3],
        itemsDesktopSmall: [980, 2],
        itemsTablet: [768, 2],
        itemsTabletSmall: [480, 2],
        itemsMobile: [479, 2]
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
$(window).load(function () {
    $("body").addClass('loaded');
});

