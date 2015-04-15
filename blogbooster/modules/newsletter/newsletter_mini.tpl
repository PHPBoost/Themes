
<div class="module_mini_container" style="text-align:center;">
			<div class="module_mini_top">
				<h5 class="sub_title">{L_NEWSLETTER}</h5>
			</div>
			<div class="module_mini_contents">
				<form action="{PATH_TO_ROOT}/newsletter/?url=/subscribe/" method="post">
                <input type="text" name="mail_newsletter" maxlength="50" class="text newsletter_text" value="{USER_MAIL}" />
                <input type="submit" class="newsletter_img" value="" />
                <input type="hidden" name="subscribe" value="subscribe" />
				</form>
    		</div>
</div>
