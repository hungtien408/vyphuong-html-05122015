(function ($) {
    $.fn.extend({

        addcordionListv: function (options) {

            // Đặt các giá trị mặc định

            var defaults = {
                csshead: ".accordion-head",
                currentshow: 1,
                iconshow: true,
                icondown: "icon-angle-down",
                iconup: "icon-angle-right"
            };

            var options = $.extend(defaults, options);
            return this.each(function () {

                var opts = options;

                // Đặt tên biến cho element (ul)

                var obj = $(this);

                // Lấy tất cả thẻ li trong ul

                var items = $(opts.csshead, obj);

                // Thêm sự kiện mouseover và mouseout vào thẻ a
                if (opts.iconshow) {
                    items.append('<span class="a-icon ' + opts.iconup + '"><span/>');
                }
                items.click(function () {
                    $(this).toggleClass("open");
                    var idp = $(this).attr("data-id");
                    if ($(this).hasClass("open")) {
                        if (opts.iconshow) {
                            $(this).find(".a-icon").addClass(opts.icondown).removeClass(opts.iconup);
                        }
                        $(idp).slideDown();
                    } else {
                        if (opts.iconshow) {
                            $(this).find(".a-icon").addClass(opts.iconup).removeClass(opts.icondown);
                        }
                        $(idp).slideUp();
                    }
                    return false;
                });
                items.filter(':lt(' + opts.currentshow + ')').addClass("open");
                if (opts.iconshow) {
                    items.filter(':lt(' + opts.currentshow + ')').find(".a-icon").addClass(opts.icondown).removeClass(opts.iconup);
                }
                items.each(function () {
                    var idp = $(this).attr("data-id");
                    if ($(this).hasClass("open")) {
                        if (opts.iconshow) {
                            $(this).find(".a-icon").addClass(opts.icondown).removeClass(opts.iconup);
                        }
                        $(idp).slideDown();
                    } else {
                        if (opts.iconshow) {
                            $(this).find(".a-icon").addClass(opts.iconup).removeClass(opts.icondown);
                        }
                        $(idp).slideUp();
                    }
                });
            });

        }

    });

})(jQuery);