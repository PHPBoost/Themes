<script>
<!--
	//Variables PHPBoost
	var PATH_TO_ROOT = "{PATH_TO_ROOT}";
	var TOKEN        = "{TOKEN}";
	var THEME        = "{THEME}";
	var LANG         = "{LANG}";

	//Variables BBCode
	var L_HIDE_MESSAGE    = ${escapejs(LangLoader::get_message('tag_hide_message', 'editor-common'))};
	var L_HIDE_HIDEBLOCK  = ${escapejs(LangLoader::get_message('tag_hide_hideblock', 'editor-common'))};
	var L_COPYTOCLIPBOARD = ${escapejs(LangLoader::get_message('tag_copytoclipboard', 'editor-common'))};

	//Variables CookieBar
	# IF C_COOKIEBAR_ENABLED #
	var COOKIEBAR_DURATION        = {COOKIEBAR_DURATION};
	var COOKIEBAR_TRACKING_MODE   = '{COOKIEBAR_TRACKING_MODE}';
	var L_COOKIEBAR_CONTENT       = {COOKIEBAR_CONTENT};
	var L_COOKIEBAR_UNDERSTAND    = ${escapejs(LangLoader::get_message('cookiebar.understand', 'user-common'))};
	var L_COOKIEBAR_ALLOWED       = ${escapejs(LangLoader::get_message('cookiebar.allowed', 'user-common'))};
	var L_COOKIEBAR_DECLINED      = ${escapejs(LangLoader::get_message('cookiebar.declined', 'user-common'))};
	var L_COOKIEBAR_MORE          = ${escapejs(LangLoader::get_message('cookiebar.more', 'user-common'))};
	var L_COOKIEBAR_CHANGE_CHOICE = ${escapejs(LangLoader::get_message('cookiebar.change-choice', 'user-common'))};
	var U_COOKIEBAR_ABOUTCOOKIE   = '${relative_url(UserUrlBuilder::aboutcookie())}';
	# ENDIF #
-->
</script>

<script src="{PATH_TO_ROOT}/kernel/lib/js/jquery/jquery.js"></script>
<script src="{PATH_TO_ROOT}/kernel/lib/js/global.js"></script>
