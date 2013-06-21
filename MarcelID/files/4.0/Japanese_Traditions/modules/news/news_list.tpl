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
					# IF C_ADMIN #
					<a href="{U_ADMIN}" title="{L_ADMIN}" class="img_link">
						<img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/{LANG}/edit.png" alt="{L_ADMIN}" />
					</a>
					# ENDIF #
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
           	<div class="news_bottom"></div>
		</div>
		# ENDIF #

		# IF C_NEWS_NO_AVAILABLE #
		<div class="news_container">
			<div class="news_top_l"></div>
			<div class="news_top_r"></div>
            <div class="news_top">
               <span style="float: left; padding-left: 5px; margin-top:2px;">
					{L_LAST_NEWS}
					# IF C_CAT # : {EDITO_NAME}# ENDIF #
                </span>
                <span style="float:right; margin-top:5px;">
					<a href="{U_SYNDICATION}" title="{L_SYNDICATION}" class="img_link"><img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/rss.png" alt="{L_SYNDICATION}"/></a>
					# IF C_ADMIN #
					<a href="{U_ADMIN}" title="{L_ADMIN}" class="img_link">
						<img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/{LANG}/edit.png" alt="{L_ADMIN}" />
					</a>
					# ENDIF #
				</span>
				<div class="spacer"></div>	
            </div>
			
			<div class="news_top">
               	<div class="news_top_title"></div>
				<div class="news_top_com"></div>
				<div class="spacer"></div>
			</div>
			
			<div class="news_content" style="text-align:center;">
				{L_NO_NEWS_AVAILABLE}
			</div>
			<div class="news_bottom_l"></div>
           	<div class="news_bottom_r"></div>
           	<div class="news_bottom"></div>
		</div>
		# ELSE #
		<div class="news_container">
			<div class="news_top_l"></div>
			<div class="news_top_r"></div>	
            <div class="news_top">
               <span style="float: left; padding-left: 5px; margin-top:2px;">
                    <a class="news_title" title="{L_LAST_NEWS}" >{L_LAST_NEWS} # IF C_CAT # : {EDITO_NAME}# ENDIF #</a>
                </span>
                <span style="float:right; margin-top:5px;">
					<a href="{U_SYNDICATION}" title="{L_SYNDICATION}" class="img_link"><img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/rss.png" alt="{L_SYNDICATION}"/></a>
					# IF C_ADMIN #
					<a href="{U_ADMIN}" title="{L_ADMIN}" class="img_link"><img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/{LANG}/edit.png" alt="{L_ADMIN}" /></a>
					# ENDIF #					
				</span>
				<div class="spacer"></div>	
            </div>
			
			<div class="netentws_con">
				# START news #
				# IF news.C_NEWS_ROW #<div class="spacer"></div># ENDIF #
				# IF C_NEWS_LINK_COLUMN #<div style="float:left;width:{COLUMN_WIDTH}%"># ELSE #<div># ENDIF #
					<ul style="margin:0;padding:0;list-style-type:none;">
						<li>
							<img src="{PATH_TO_ROOT}/templates/{THEME}/images/li.png" alt="" />
							# IF news.C_ICON # <a href="{news.U_CAT}"><img class="valign_middle" src="{news.ICON}" alt="" /></a> # ENDIF #
							# IF news.C_DATE #<span class="text_small">{news.DATE} : </span># ENDIF #
							<a href="{news.U_LINK}">{news.TITLE}</a>
							# IF news.C_COM #({news.NUMBER_COM})# ENDIF #
						</li>
					</ul>
				</div>
				# END news #
				<div class="spacer"></div>
				# IF PAGINATION #<div class="text_center">{PAGINATION}</div># ENDIF #
			</div>
			<div class="news_bottom_l"></div>
           	<div class="news_bottom_r"></div>
           	<div class="news_bottom"></div>
		</div>
		# ENDIF #