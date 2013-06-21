        <script type="text/javascript">
        <!--
        	function Confirm()
			{
				return confirm("{L_ALERT_DELETE_NEWS}");
        	}
        -->
        </script>

		<div class="news_container">
            <div class="news_top_l"></div>
            <div class="news_top_r"></div>
            <div class="news_top">
               <span style="float: left; padding-left: 5px; margin-top:2px;">
                    <a class="news_title" href="#" title="{TITLE}"  >{TITLE}</a>
                </span>
                <span style="float:right; margin-top:5px;">
					<a href="{U_SYNDICATION}" title="{L_SYNDICATION}" class="img_link"><img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/rss.png" alt="{L_SYNDICATION}"/></a>
				</span>
				<div class="spacer"></div>	
            </div>
            <div class="news_content">
               	# IF C_IMG #<img src="{IMG}" alt="{IMG_DESC}" title="{IMG_DESC}" class="img_right" /># ENDIF #
				# IF C_ICON #<a href="{U_CAT}"><img class="valign_middle" src="{ICON}" alt="" /></a># ENDIF #
				{CONTENTS}
				<br /><br />
               	{EXTEND_CONTENTS}
				<br /><br />
				# IF C_SOURCES #
				<div style="float:right">
					<div class="text_small"> # START sources # <strong>{L_SOURCES} </strong>: {sources.COMMA}<a href="{sources.URL}" class="small_link">{sources.NAME}</a># END sources #</div>
					<br />
				</div>
				# ENDIF #
				<div class="spacer"></div>
           	</div>
            <div class="news_bottom_l"></div>
            <div class="news_bottom_r"></div>
           	<div class="news_bottom">
               	<div style="float:left"># IF PSEUDO #<a class="small_link{LEVEL}" href="{U_USER_ID}">{PSEUDO}</a>, # ENDIF # {DATE}</div>
               	<div style="float:right">
					# IF U_COM #
						<img src="{PATH_TO_ROOT}/templates/{THEME}/images/com_mini.png" alt="" class="valign_middle" />
						{U_COM}
					# ENDIF #
					# IF C_EDIT #
					<a href="{PATH_TO_ROOT}/news/management.php?edit={ID}" title="{L_EDIT}" class="img_link">
						<img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/{LANG}/edit.png" alt="{L_EDIT}" />
					</a>
					# ENDIF #
					# IF C_DELETE #
					<a href="{PATH_TO_ROOT}/news/management.php?del={ID}&amp;token={TOKEN}" title="{L_DELETE}" onclick="javascript:return Confirm();">
						<img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/{LANG}/delete.png" alt="{L_DELETE}" />
					</a>
					# ENDIF #
				</div>				
				<div class="spacer"></div>
			</div>
		</div>
		
			# IF C_NEWS_SUGGESTED #
			<div class="news_container">
				<div id="news_suggested">
					<b>{L_NEWS_SUGGESTED}</b><br />
					<ul class="bb_ul">
						# START suggested #
							<li class="bb_li"><a href="{suggested.URL}">{suggested.TITLE}</a></li>
						# END suggested #
					</ul>
				</div>
			</div>
			# ENDIF #

			# IF C_NEWS_NAVIGATION_LINKS #
			<div class="navigation_link">
				# IF C_PREVIOUS_NEWS #
				<span style="float:left">
					<a href="{U_PREVIOUS_NEWS}"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/left.png" alt="" class="valign_middle" /></a>
					<a href="{U_PREVIOUS_NEWS}">{PREVIOUS_NEWS}</a>
				</span>
				# ENDIF #
				# IF C_NEXT_NEWS #
				<span style="float:right">
					<a href="{U_NEXT_NEWS}">{NEXT_NEWS}</a>
					<a href="{U_NEXT_NEWS}"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/right.png" alt="" class="valign_middle" /></a>
				</span>
				# ENDIF #
			<div class="spacer"></div>
			</div>
			# ENDIF #

			{COMMENTS}