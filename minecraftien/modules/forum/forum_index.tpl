# INCLUDE forum_top #
# START forums_list #
# START forums_list.endcats #
</tbody>
</table>
</div>
</article>
# END forums_list.endcats #
# START forums_list.cats #
<script>
<!--
jQuery('#table-{forums_list.cats.IDCAT}').basictable();
-->
</script>
<article itemscope="itemscope" itemtype="http://schema.org/Creativework" id="article-forum-{forums_list.cats.IDCAT}">
<header>
<h2>
<span class="forum-cat-title">
<a href="${relative_url(SyndicationUrlBuilder::rss('forum',forums_list.cats.IDCAT))}" class="fa fa-syndication" title="${LangLoader::get_message('syndication', 'common')}"></a>
&nbsp;&nbsp;<a href="{forums_list.cats.U_FORUM_VARS}" class="forum-link-cat" title="{forums_list.cats.NAME}">{forums_list.cats.NAME}</a>
</span>
# IF C_DISPLAY_UNREAD_DETAILS #
<span class="float-right">
<a href="{PATH_TO_ROOT}/forum/unread.php?cat={forums_list.cats.IDCAT}" title="{L_DISPLAY_UNREAD_MSG}"><i class="fa fa-notread"></i></a>
</span>
# ENDIF #
</h2>
</header>
<div class="module-contents forum-contents">
<table id="table-{forums_list.cats.IDCAT}" class="forum-table">
<tbody>
# END forums_list.cats #
# START forums_list.subcats #
# IF forums_list.subcats.U_FORUM_URL #
<div class="forum-topic-link small-block">
<i class="fa fa-globe"></i>
<a href="{forums_list.subcats.U_FORUM_URL}" title="{forums_list.subcats.NAME}">{forums_list.subcats.NAME}</a>
<br />
<span class="smaller">{forums_list.subcats.DESC}</span>
</div>
# ELSE #
<div class="forum-topic-index small-block">
<br />
<a href="{forums_list.subcats.U_FORUM_VARS}" title="{forums_list.subcats.NAME}">{forums_list.subcats.NAME}</a>
<br />
<span class="smaller">{forums_list.subcats.DESC}</span>
<span class="small">{forums_list.subcats.SUBFORUMS}</span>
<br/>
<i class="fa-msg fa # IF forums_list.subcats.C_BLINK #blink # ENDIF #{forums_list.subcats.IMG_ANNOUNCE}">&nbsp;{forums_list.subcats.NBR_TOPIC} {L_TOPIC}</i>
<i class="fa-msg fa fa-commenting-o" aria-hidden="true">&nbsp;{forums_list.subcats.NBR_MSG} {L_MESSAGE}</i>
<br />
{L_LAST_MESSAGE} : {forums_list.subcats.U_LAST_TOPIC}
</div>
# ENDIF #
# END forums_list.subcats #
# END forums_list #
# INCLUDE forum_bottom #