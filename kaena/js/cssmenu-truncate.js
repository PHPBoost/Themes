/**
 * Truncate cssmenu horizontal menu
 * based on jquery.cut-list.js
 * @copyright   &copy; 2005-2022 PHPBoost - 2020 Vladimir Ivanin from insales.com
 * @license     https://www.opensource.org/licenses/mit-license.php
 * @author      Vladimir Ivanin
 * @link        https://github.com/insales/jquery.cut-list
 * @version     PHPBoost 6.0 - last update: 2022 01 06
 * @since       PHPBoost 6.0 - 2022 01 06
 * @contributor Sebastien LARTIGUE <babsolune@phpboost.com>
*/

(function(jQuery) {
    jQuery.fn.truncateList = function() {
        var defaults = {
            truncatedTitle: 'More',
            resizeDelay: 50
        };

        var options = extend(defaults, arguments[0]);

        function extend(defaults, options ) {
            var extended = {};
            var prop;

            for (prop in defaults) {
                if (Object.prototype.hasOwnProperty.call(defaults, prop)) {
                    extended[prop] = defaults[prop];
                }
            }
            for (prop in options) {
                if (Object.prototype.hasOwnProperty.call(options, prop)) {
                    extended[prop] = options[prop];
                }
            }

            return extended;
        }

        if (window.matchMedia("(min-width: 769px)").matches)
        {
            return this.each(function() {
                var $this = jQuery(this),
                    $clone = jQuery(this).clone(),
                    limit,
                    position,
                    areaWidth,
                    listWidth,
                    resizeTimeout;

                setup($this);

                function resizeHandle() {
                    clearTimeout(resizeTimeout);
                    resizeTimeout = setTimeout(function(){
                        reset($this);
                    }, options.resizeDelay);
                }

                function setup(obj) {
                    $this.closest('.cssmenu-horizontal').addClass('cssmenu-truncate');
                    if (!obj.find(".has-more-sub").length) {
                        obj.append('<li class="has-sub truncated-item has-more-sub" style="display: none"><span class="cssmenu-title">' + options.truncatedTitle + '</span></li>')
                            .find(".has-more-sub")
                            .append('<ul class="truncated-list truncated-list-content"></ul>');
                    }

                    obj.children().each(function(index) {
                        jQuery(this).attr("data-index", index).addClass("truncated-item");
                    });

                    limit = obj.find(".truncated-item").length;
                    index = limit - 1;

                    create(obj);

                    jQuery(window).on('resize', resizeHandle);
                }

                function reset(obj) {
                    position = limit;

                    jQuery.when(backToStartingPlace(obj)).done(function() {
                        create(obj);
                    });
                }

                function backToStartingPlace(obj) {
                    var more_elems = obj.find(".truncated-list .truncated-item");

                    more_elems.each(function() {
                        var elem_index = jQuery(this).data("index");

                        if (elem_index == 0)
                            jQuery(this).prependTo(obj);
                        else
                            jQuery(this).insertAfter( obj.find('.truncated-item[data-index="' + (elem_index - 1) + '"]'));
                    });
                }

                function create(obj) {
                    areaWidth = obj.closest('.cssmenu-horizontal').parent().innerWidth();
                    listWidth = obj.find(".has-more-sub").outerWidth(true);

                    var find_elems = '.truncated-item:not(".has-more-sub")';

                    obj.find(find_elems).each(function(index) {
                        listWidth += jQuery(this).outerWidth(true);

                        if (listWidth >= areaWidth) {
                            position = index;

                            move(obj, position);
                            obj.find(".has-more-sub").show();

                            return false;
                        }
                        else {
                            obj.find(".has-more-sub").hide();
                        }
                    });
                }

                function move(obj, position) {
                    var find_elems = '.truncated-item:not(".has-more-sub")';

                    for (x = position; x <= limit; x++) {
                        obj.find(find_elems + '[data-index="' + x + '"]').appendTo(obj.find(".truncated-list-content"));
                    }
                }

            });
        }
    };
})(jQuery);
