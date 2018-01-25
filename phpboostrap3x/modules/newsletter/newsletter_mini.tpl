# IF C_VERTICAL #
<form class="form-group" action="{PATH_TO_ROOT}/newsletter/?url=/subscribe/" method="post">
	<div class="input-group">
		<input class="form-control" type="text" name="mail_newsletter" value="{USER_MAIL}" placeholder="${LangLoader::get_message('email', 'user-common')}">
		<input type="hidden" name="token" value="{TOKEN}">
		<span class="input-group-btn">
			<button class="btn btn-pbt" type="submit" value="true"><i class="fa fa-envelope-o"></i></button>
		</span>
	</div>
	<label><input type="radio" name="subscribe" value="subscribe" checked="checked"> {@newsletter.subscribe_newsletters}</label>
	<label><input type="radio" name="subscribe" value="unsubscribe"> {@newsletter.unsubscribe_newsletters}</label>
	<p class="text-center">
		<a href="${relative_url(NewsletterUrlBuilder::archives())}" class="btn btn-pbt">{@newsletter.archives}</a>
	</p>
</form>
# ELSE #
<div id="newsletter"# IF C_HIDDEN_WITH_SMALL_SCREENS # class="hidden-xs"# ENDIF #>
	<form class="form-group" action="{PATH_TO_ROOT}/newsletter/?url=/subscribe/" method="post">
		<div class="input-group">
			<span class="input-group-addon">{@newsletter}</span>
			<input class="form-control" type="text" name="mail_newsletter" value="{USER_MAIL}" placeholder="${LangLoader::get_message('email', 'user-common')}">
			<input type="hidden" name="subscribe" value="subscribe">
			<input type="hidden" name="token" value="{TOKEN}">
			<span class="input-group-btn">
				<button type="submit" class="btn btn-pbt"><i class="fa fa-envelope-o"></i></button>
			</span>
		</div>
	</form>
</div>
# ENDIF #
