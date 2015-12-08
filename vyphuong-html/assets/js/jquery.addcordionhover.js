(function ($) {
    $.fn.extend({

        addcordionHover: function (options) {

            // Đặt các giá trị mặc định

            var defaults = {
                cssbox: ".box-accordion",
                csscontent: ".accordion-content",
                cssactive: "current",
                current: false,
                currentshow: 0,
                iconshow: false,
                icondown: "icon-angle-down",
                iconup: "icon-angle-right"
            };

            var options = $.extend(defaults, options);
            return this.each(function () {

                var opts = options;

                // Đặt tên biến cho element (ul)

                var obj = $(this);

                // Lấy tất cả thẻ li trong ul

                var items = $(opts.cssbox, obj);

                // Thêm sự kiện mouseover và mouseout vào thẻ a
                if (opts.iconshow) {
                    items.append('<span class="a-icon ' + opts.iconup + '"><span/>');
                }
                items.mouseenter(function () {
                    items.removeClass(opts.cssactive);
                    $(this).addClass(opts.cssactive);
                    myiteams();
                    return false;
                });
                obj.mouseleave(function () {
                    items.removeClass(opts.cssactive);
                    items.find(opts.csscontent).slideUp();
                    return false;
                });
                if (opts.current) {
                    items.eq(opts.currentshow).addClass("open " + opts.cssactive);
                    if (opts.iconshow) {
                        items.eq(opts.currentshow).find(".a-icon").addClass(opts.icondown);
                    }
                }
                myiteams();
                function myiteams() {
                    items.each(function () {
                        if ($(this).hasClass(opts.cssactive)) {
                            if (opts.iconshow) {
                                $(this).find(".a-icon").addClass(opts.icondown).removeClass(opts.iconup);
                            }
                            $(this).find(opts.csscontent).slideDown();
                        } else {
                            if (opts.iconshow) {
                                $(this).find(".a-icon").addClass(opts.iconup).removeClass(opts.icondown);
                            }
                            $(this).find(opts.csscontent).slideUp();
                        }
                    });
                }
            });

        }

    });

})(jQuery);