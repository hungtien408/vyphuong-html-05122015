function pageLoad() {
}
(function ($) {
    $(window).load(function () {
    });
    $(function () {
        myfunload();
        mypageload();
    });
})(jQuery);
//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    if ($('#slider').size() == 1) {
        var $banner = $('#slider').imagesLoaded(function () {
            $banner.nivoSlider({
                pauseOnHover: false,
                directionNav: true,
                controlNav: false
            });
        });
    }
    $(".fullbox-img").bgsizebox({
        fimg: true,
        imgcss: "hideo",
        attrname: "data-src"
    });
    menusroll();
    if ($('.slider-four').size() > 0) {
        $('.slider-four').bxSlider({
            auto: true,
            pager: false,
            autoHover: true,
            slideWidth: 260,
            minSlides: 1,
            maxSlides: 4,
            moveSlides: 1,
            slideMargin: 0
        });
    }
    if ($('#listProduct').size() == 1) {
        var profour = $('#listProduct').bxSlider({
            auto: true,
            pager: false,
            autoHover: true,
            slideWidth: 225,
            minSlides: 1,
            maxSlides: 4,
            moveSlides: 1,
            slideMargin: 0
        });
        $(".product-list .bx-controls-direction a, .product-list .bx-pager.bx-default-pager").click(function () {
            profour.startAuto();
        });
    }
    if ($("#sliderProduct").size() == 1) {
        var sliderpro = $("#sliderProduct").bxSlider({
            mode: 'fade',
            auto: true,
            pager: true,
            autoHover: false
        });
        $(".banner-pro .bx-controls-direction a, .banner-pro .bx-pager.bx-default-pager").click(function () {
            sliderpro.startAuto();
        });
    }
}
/*=========================================================================*/
function mypageload() {
    $(".selectb").uniform();
    $('#mainContent').imagesLoaded(function () {
        myListTb();
    });
}
/*========================================================================*/
function myListTb() {
    if ($('#isotopelist').size() == 1) {
        $('#isotopelist').isotope({
            itemSelector: '.element-item',
            layoutMode: 'fitRows'
        });
    }
    if ($('.product-tb').size() > 0) {
        $('.product-tb').textHeight({
            activetit: true,
            listcss: [{ cssname: ".product-img" }, { cssname: ".product-name" }],
            wpointb: false,
            widthpont: 479,
            desbool: true,
            listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
            max: true
        }).isotope({
            itemSelector: '.element-item',
            layoutMode: 'fitRows'
        });
    }
}
/*===============================*/
function myfunsroll() {
    menusroll();
    mysroll();
    $("#sroltop a").click(function () {
        $("html, body").stop(true, true).animate({ scrollTop: 0 }, 500);
        return false;
    });
}
function mysroll() {
    mysrol();
    $(window).scroll(function () {
        mysrol();
    });
}
function mysrol() {
    var topsroll = $(window).scrollTop();
    if (topsroll > 100) {
        $("#sroltop").animate({ "opacity": 1 }, 500);
    } else {
        $("#sroltop").animate({ "opacity": 0 }, 500);
    }
}
function menusroll() {
    var htop = $("#header").height();
    srollmenu(htop);
    $(window).scroll(function () {
        srollmenu(htop);
    });
}
function srollmenu(htop) {
    if ($(window).scrollTop() > htop) {
        $("#header").addClass("header-sroll");
    } else {
        $("#header").removeClass("header-sroll");
    }
}