
$(document).ready(function () {
    $(document).ready(function() {
        $(window).on('load', function () {
            // alert(1);
            $('body').addClass('loaded');
            var wow = new WOW(
                {
                    boxClass:     'wow',      // animated element css class (default is wow)
                    animateClass: 'animated', // animation css class (default is animated)
                    offset:       0,          // distance to the element when triggering the animation (default is 0)
                    mobile:       true,       // trigger animations on mobile devices (default is true)
                    live:         true,       // act on asynchronously loaded content (default is true)
                    callback:     function(box) {
                        // the callback is fired every time an animation is started
                        // the argument that is passed in is the DOM node being animated
                    },
                    scrollContainer: null,    // optional scroll container selector, otherwise use window,
                    resetAnimation: true,     // reset animation on end (default is true)
                }
            );
            wow.init();

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
                $('.carousel-even.carousel-even--active').removeClass('carousel-even--active');
                $(crs).addClass('carousel-even--active');
            });

            $('.accordion--sanpham').on('shown.bs.collapse', function (e) {
                // do something...
                console.log($(e.target).attr("data-carouse"), e.target)
                var crs = "#" + $(e.target).attr("data-carouse");
                $('.active_show').removeClass('active_show');
                $(crs).addClass('active_show');
            })

            // parallax
            // Accepts any class name
            var rellax = new Rellax('.rellax');
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

