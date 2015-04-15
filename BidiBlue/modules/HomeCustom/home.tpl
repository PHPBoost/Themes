		<div class="spacer"></div>
<div id="Home">

    <div id="Gauche">
<div class="Homecontent">
<div class="forum_top_cat"><a href="/syndication/rss/news" title="Syndication"> <img alt="Syndication" style="float:left; margin:4px 0 10px 10px;" src="/templates/base/images/rss.png" /></a><a href="news" title="Dernieres News"><b>Actualit&eacute;s</b></a></div>
<br />
${Feed::get_parsed('news', 'master', 0, false, 4)}
</div>
<br />

<div class="Homecontent">
<div class="forum_top_cat"><a href="/syndication/rss/articles" title="Syndication"> <img alt="Syndication" style="float:left; margin:4px 0 10px 10px;" src="/templates/base/images/rss.png" /></a><a href="articles" title="Derniers Articles"><b>Articles</b></a></div><br />
${Feed::get_parsed('articles', 'master', 0, false, 4)}
</div>
<br />

<div class="Files"><a href="/syndication/rss/download" title="Syndication"> <img alt="Syndication" style="float:left; margin:4px 0 10px 10px;" src="/templates/base/images/rss.png" /></a><a href="download" title="Derniers Fichiers"><b>Fichiers</b></a></div><br />
<div class="HomeFiles">
${Feed::get_parsed('download', 'master', 0, false, 7)}
</div>
<br />
</div>

    <div id="Droit">
<div class="Homecontent">
<div class="Chat"><a href="shoutbox" title="Mini Chat"><b>Discussions</b></a></div>
<?php $shoutbox_menu = new ShoutboxModuleMiniMenu();
echo $shoutbox_menu->display(); ?>
</div>
<br />

<div class="Homecontent">
<div class="forum_top_cat"><a href="/syndication/rss/forum" title="Syndication"> <img alt="Syndication" style="float:left; margin:4px 0 10px 10px;" src="/templates/base/images/rss.png" /></a><a href="forum" title="Derniers Messages"><b>Forum</b></a></div><br />
${Feed::get_parsed('forum', 'master', 0, false, 4)}
</div>
<br />

<div class="Homecontent">
<div class="forum_top_cat"><a href="/syndication/rss/pages" title="Syndication"> <img alt="Syndication" style="float:left; margin:4px 0 10px 10px;" src="/templates/base/images/rss.png" /></a><a href="pages/explorer.php" title="Dernieres Astuces"><b>Astuces</b></a></div><br />
${Feed::get_parsed('pages', 'master', 0, false, 4)}
</div>
<br />

<div class="Homecontent">
<div class="forum_top_cat"><a href="/syndication/rss/faq" title="Syndication"> <img alt="Syndication" style="float:left; margin:4px 0 10px 10px;" src="/templates/base/images/rss.png" /></a><a href="faq" title="Dernieres D&eacute;finitions"><b>D&eacute;finitions</b></a></div><br />
${Feed::get_parsed('faq', 'master', 0, false, 4)}
</div>
</div>