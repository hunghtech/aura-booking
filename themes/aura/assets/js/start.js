
$(document).ready(function () {
    $(document).ready(function() {
        $(window).on('load', function () {
            // alert(1);
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

            $('.accordion--sanpham').on('shown.bs.collapse', function (e) {
                // do something...
                console.log($(e.target).attr("data-carouse"), e.target)
                var crs = "#" + $(e.target).attr("data-carouse");
                $('.active_show').removeClass('active_show');
                $(crs).addClass('active_show');
            })

        })
    })
});



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

