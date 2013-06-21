		<script type="text/javascript">
		<!--
			function Confirm()
			{
				return confirm("{L_ALERT_DELETE_NEWS}");
			}
		-->
		</script>
		
		# IF C_ADD_OR_WRITER #
		<div class="module_actions">
			# IF C_ADD #
			<a href="{U_ADD}" title="{L_ADD}" class="img_link">
				<img src="{PATH_TO_ROOT}/templates/{THEME}/images/{LANG}/add.png" class="valign_middle" alt="{L_ADD}" />
			</a>
			# ENDIF #
			&nbsp;
			# IF C_WRITER #
			<a href="{PATH_TO_ROOT}/news/news.php?user=1" title="{L_NEWS_WAITING}">
				<img src="{PATH_TO_ROOT}/news/news_mini.png" class="valign_middle" alt="{L_NEWS_WAITING}" />
			</a>
			# ENDIF #
			<br />
		</div>
		<div class="spacer"></div>
		# ENDIF #

		# IF C_EDITO #
		<div class="news_container">
			<div class="news_top_l"></div>
			<div class="news_top_r"></div>
			<div class="news_top">
        		<span style="float: left; padding-left: 5px; margin-top:2px;">
					<a class="news_title" href="#" title="{EDITO_NAME}">{EDITO_NAME}</a>
				</span>
        		<span style="float:right; margin-top:5px;">
				<a href="{U_SYNDICATION}" title="{L_SYNDICATION}" class="img_link"><img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/rss.png" alt="{L_SYNDICATION}" /></a>
				</span>
				<div class="spacer"></div>
    		</div>
			# IF EDITO_CONTENTS #
    		<div class="news_content">
        		{EDITO_CONTENTS}
    		</div>
			# ENDIF #
			<div class="news_bottom_l"></div>
           	<div class="news_bottom_r"></div>
           	<div class="news_bottom">
				<span style="float:left;"></span>
				<span style="float:right;">
					# IF C_ADMIN #
					<a href="{U_ADMIN}" title="{L_ADMIN}">
						<img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/{LANG}/edit.png" alt="{L_ADMIN}" />
					</a>
					# ENDIF #
				</span>
			</div>
		</div>
		# ENDIF #

		# IF C_NEWS_NO_AVAILABLE #
		<div class="news_container">
			<div class="news_top_l"></div>
			<div class="news_top_r"></div>
			<div class="news_top">
               	<span style="float:left;">
				<a class="news_title" href="#" title="{L_LAST_NEWS}">{L_LAST_NEWS}</a>
				</span>
				<span style="float:right;">
					<a href="{U_SYNDICATION}" title="{L_SYNDICATION}" class="img_link">
						<img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/rss.png" alt="{L_SYNDICATION}" />
					</a>
				</span>
				<div class="spacer"></div>
    		</div>
    		<div class="news_content" style="text-align:center;">
        		{L_NO_NEWS_AVAILABLE}
    		</div>
    		<div class="news_bottom_l"></div>
           	<div class="news_bottom_r"></div>
			<div class="news_bottom">
				<span style="float:left;"></span>
				<span style="float:right;">
					# IF C_ADMIN #
					<a href="{U_ADMIN}" title="{L_ADMIN}">
						<img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/{LANG}/edit.png" alt="{L_ADMIN}" />
					</a>
					# ENDIF #
				</span>
			</div>
		</div>
		# ELSE #
		<div style="overflow:hidden;">
			# START news #
			# IF news.C_NEWS_ROW #
				<div class="spacer"></div>
			# ENDIF #
			# IF C_NEWS_BLOCK_COLUMN #
			<div class="news_container" style="float:left;width:{COLUMN_WIDTH}%"># ELSE #<div class="news_container">
			# ENDIF #
				<div class="news_top_l"></div>
				<div class="news_top_r"></div>
				<div class="news_top">
				   <div style="float: left; padding-left: 5px; margin-top:2px;">		   
						<a class="news_title" href="{news.U_LINK}" title="{news.TITLE}" >{news.TITLE}</a> 
					</div>
					<span style="float:right; margin-top:5px;">
						<a href="{U_SYNDICATION}" title="{L_SYNDICATION}" class="img_link">
							<img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/rss.png" alt="{L_SYNDICATION}"/>
						</a>
					</span>
					<div class="spacer"></div>	
				</div>
	    		<div class="news_content">
	        		# IF news.C_IMG #<img src="{news.IMG}" alt="{news.IMG_DESC}" title="{news.IMG_DESC}" class="img_right" /># ENDIF #
					# IF news.C_ICON #<a href="{news.U_CAT}"><img class="valign_middle" src="{news.ICON}" alt="" /></a># ENDIF #
					{news.CONTENTS}
					<br /><br />
	        		{news.EXTEND_CONTENTS}
					<br /><br />
					<div class="spacer"></div>
	    		</div>
				<div class="news_bottom_l"></div>
				<div class="news_bottom_r"></div>
				<div class="news_bottom">
					<span style="float:left"># IF news.PSEUDO # {news.DATE} par <a class="small_link{news.LEVEL}" href="{news.U_USER_ID}">{news.PSEUDO}</a> # ENDIF #</span>
					<div style="float:right">
						# IF news.C_COM #
						<img src="{PATH_TO_ROOT}/templates/{THEME}/images/com_mini.png" alt="" class="valign_middle" /> <a href="{news.U_COM}">{news.COM}</a>
						# ENDIF #
						# IF news.C_EDIT #
						<a href="{PATH_TO_ROOT}/news/management.php?edit={news.ID}" title="{L_EDIT}" class="img_link">
							<img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/{LANG}/edit.png" alt="{L_EDIT}" />
						</a>
						# ENDIF #
						# IF news.C_DELETE #
						<a href="{PATH_TO_ROOT}/news/management.php?del={news.ID}&amp;token={TOKEN}" title="{L_DELETE}" onclick="javascript:return Confirm();">
							<img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/{LANG}/delete.png" alt="{L_DELETE}" />
						</a>
						# ENDIF #
					</div>				
					<div class="spacer"></div>
				</div>
			</div>
			# END news #
			</div>
			# IF PAGINATION #<div class="text_center">{PAGINATION}</div># ENDIF #
		# ENDIF #