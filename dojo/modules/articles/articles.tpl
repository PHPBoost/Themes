# IF C_DISPLAY_ARTICLE #		
	<script type="text/javascript">
	<!--
		function Confirm_del_article() {
			return confirm("{L_ALERT_DELETE_ARTICLE}");
		}
	-->
	</script>	
	# INCLUDE message_helper #
	
	<div class="module_position" style="margin-bottom:-30px;">					
		<div class="module_top_l"></div>		
		<div class="module_top_r"></div>
		<div class="module_top">
			<div class="module_top_title">
				<a href="{PATH_TO_ROOT}/syndication/?url=/rss/articles/{IDCAT}" title="Rss" class="img_link">
					<img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/rss.png" alt="Rss" title="Rss" />
				</a>
				{NAME}
			</div>
			<div class="module_top_com">
				<img src="{PATH_TO_ROOT}/templates/{THEME}/images/com_mini.png" alt="" class="valign_middle" />
				{COM}
				# IF C_IS_MODERATE #
				<a href="{U_ARTICLES_EDIT}" title="{L_EDIT}" class="img_link">
					<img src="../templates/{THEME}/images/{LANG}/edit.png" class="valign_middle" alt="{L_EDIT}" />
				</a>
				<a href="{U_ARTICLES_DEL}" title="{L_DELETE}" onclick="javascript:return Confirm_del_article();" class="img_link">
					<img src="../templates/{THEME}/images/{LANG}/delete.png" class="valign_middle" alt="{L_DELETE}" />
				</a>
				# ENDIF #
				<a href="{U_PRINT_ARTICLE}" title="{L_PRINTABLE_VERSION}" class="img_link">
					<img src="../templates/{THEME}/images/print_mini.png" alt="{L_PRINTABLE_VERSION}" class="valign_middle" />
				</a>
			</div>
		</div>
		<div class="module_contents">
				# IF PAGINATION_ARTICLES #
				<div style="float:right;margin-right:35px;width:250px;">
					<form action="" method="post">
						<p class="row2 text_strong" style="padding:2px;text-indent:4px;">{L_SUMMARY}:</p>
						<p class="row1" style="padding:2px;padding-bottom:15px">
							<select name="page_list" style="display:block;width:100%;margin:auto;font-size:12px;" onchange="document.location = {U_ONCHANGE_ARTICLE}">
								{PAGES_LIST}
							</select>
							<input type="submit" name="valid" id="articles_page_list" value="{L_SUBMIT}" class="submit" />
							<script type="text/javascript">
							<!--				
							document.getElementById('articles_page_list').style.display = 'none';
							-->
							</script>
						</p>
					</form>
				</div>
				<div class="spacer">&nbsp;</div>
				# ENDIF #					
				# IF PAGE_NAME #
				<h2 class="title" style="text-indent:35px;">{PAGE_NAME}</h2>
				# ENDIF #	
				{CONTENTS}
				<div class="spacer" style="margin-top:35px;">&nbsp;</div>
				# IF PAGINATION_ARTICLES #
				<div style="float:left;width:33%;text-align:right">&nbsp;{PAGE_PREVIOUS_ARTICLES}</div>
				<div style="float:left;width:33%" class="text_center">{PAGINATION_ARTICLES}</div>
				<div style="float:left;width:33%;">{PAGE_NEXT_ARTICLES}&nbsp;</div>
				# ENDIF #		
			<div class="spacer">&nbsp;</div>
		</div>
		<div class="module_bottom_l"></div>		
		<div class="module_bottom_r"></div>
		<div class="module_bottom" style="height:30px;">
			# IF C_SOURCES #
			<div><b> {L_SOURCE} : </b># START sources # <a href="{sources.URL}"> {sources.SOURCE}</a>&nbsp;{sources.INDENT} # END sources #</div>
			# ENDIF #
			<div class="spacer">&nbsp;</div>
			<div style="float:left" class="text_small">
				{KERNEL_NOTATION}
			</div>
			<div style="float:right; margin-right:5px;" class="text_small">
				{L_WRITTEN}: <a href="{U_PROFILE}" class="{LEVEL_CLASS}" # IF C_GROUP_COLOR # style="color:{GROUP_COLOR}" # ENDIF #>{PSEUDO}</a>
				{L_ON}: {DATE}
			</div>
			<div class="spacer"></div>
		</div>
	</div>
	<br /><br />
	{COMMENTS}
# ENDIF #