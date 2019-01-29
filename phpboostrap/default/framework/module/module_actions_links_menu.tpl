

# IF C_DISPLAY #
<nav class="dropdown actionslinks mr15">
    <button id="module-actionslinks" class="btn btn-pbt dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" title="${LangLoader::get_message('content.menus.actions', 'admin-links-common')} {MODULE_NAME}">
        <small class="visible-xs">${LangLoader::get_message('content.menus.actions', 'admin-links-common')} {MODULE_NAME}</small>
        <i class="fa fa-bars"></i>
    </button>
	<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="module-actionslinks">
        # START element #
			# INCLUDE element.ELEMENT #
		# END element #
	</ul>
</nav>
# ENDIF #

<script>
    <!--
    $(document).ready(function() {
        $('.actionslinks a.dropdown-toggle').on('click', function(e) {
            var $el = $(this);
            var $parent = $(this).offsetParent(".dropdown-menu");
            $(this).parent("li").toggleClass('open');

            if (window.matchMedia("(min-width: 767px)").matches) {
                if(!$parent.parent().hasClass('actionslinks')) {
                    $el.next().css({"top": $el[0].offsetTop, "right": $parent.outerWidth(), "left": "auto"});
                }
            } else {
                if(!$parent.parent().hasClass('actionslinks')) {
                    $el.next().css({"top": "100%", "right": 0, "left": 0});
                }
            }

            $('.actionslinks li.open').not($(this).parents("li")).removeClass("open");

            return false;
        });
    });
    -->
</script>
