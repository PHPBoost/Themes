<script>
	// PHPBoost Variables
	var PATH_TO_ROOT = "{PATH_TO_ROOT}";
	var TOKEN        = "{TOKEN}";
	var THEME        = "{THEME}";
	var LANG         = "{LANG}";
	var COPIED_TO_CLIPBOARD = ${escapejs(@common.copied.to.clipboard)}

	// BBCode Variables
	var L_HIDE_MESSAGE    = ${escapejs(@common.hidden.text)};
	var L_HIDE_HIDEBLOCK  = ${escapejs(@common.hide.text)};
	var L_COPYTOCLIPBOARD = ${escapejs(@common.copy.to.clipboard)};

	// CookieBar Variables
	# IF C_COOKIEBAR_ENABLED #
		var COOKIEBAR_DURATION        = {COOKIEBAR_DURATION};
		var COOKIEBAR_TRACKING_MODE   = '{COOKIEBAR_TRACKING_MODE}';
		var L_COOKIEBAR_CONTENT       = {COOKIEBAR_CONTENT};
		var L_COOKIEBAR_UNDERSTAND    = ${escapejs(@user.cookiebar.understand)};
		var L_COOKIEBAR_ALLOWED       = ${escapejs(@user.cookiebar.allowed)};
		var L_COOKIEBAR_DECLINED      = ${escapejs(@user.cookiebar.declined)};
		var L_COOKIEBAR_MORE_TITLE    = ${escapejs(@user.cookiebar.more.title)};
		var L_COOKIEBAR_MORE          = ${escapejs(@user.cookiebar.more)};
		var L_COOKIEBAR_CHANGE_CHOICE = ${escapejs(@user.cookiebar.change.choice)};
		var U_COOKIEBAR_ABOUTCOOKIE   = '${relative_url(UserUrlBuilder::aboutcookie())}';
	# ENDIF #
</script>

<script src="{PATH_TO_ROOT}/kernel/lib/js/jquery/jquery.js"></script>
<script src="{PATH_TO_ROOT}/kernel/lib/js/prism/prism.js"></script>

# IF C_CSS_CACHE_ENABLED #
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/@phpboost.min.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/list_order.min.js"></script>
<!-- gaming blue -->
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/unslider.min.js"></script>
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/gaming-blue.min.js"></script>
# ELSE #
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/@global.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/autocomplete.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/autobox.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/basictable.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/dndfiles.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/lightcase.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/linedtextarea.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/menumaker.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/multitabs.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/owl.carousel.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/list_order.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/pushmenu.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/selectimg.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/selectimg.multi.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/sortable.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/tooltip.js"></script>
	<script src="{PATH_TO_ROOT}/templates/__default__/plugins/wizard.js"></script>
<!-- gaming blue -->
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/unslider.js"></script>
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/gaming-blue.js"></script>

# ENDIF #
