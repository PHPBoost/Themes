# IF C_VERTICAL_BLOCK #
<div class="module-mini-container color-main">
	<div class="module-mini-top color-sub">
		<h5 class="sub-title">
			<a href="{U_LINK}" class="fa fa-syndication"></a>
			# IF C_NAME #{NAME}# ELSE #{TITLE}# ENDIF #
		</h5>
	</div>
	<div class="module-mini-contents">
		<ul class="feed-list">
			# START item #
            <li style="# IF item.C_IMG #background:url({PATH_TO_ROOT}{item.U_IMG}) no-repeat center center; background-size:cover; min-height:80px;# ELSE ##ffffff# ENDIF #;">
			<a href="{item.U_LINK}">{item.TITLE}</a> <p class="smaller">{L_POSTED_ON} {item.DATE_RFC822}</p>
    		
            </li>
			<!--<li><span class="smaller">{item.DATE}</span> <a href="{item.U_LINK} ">{item.TITLE} </a></li>-->
			# END item #
		</ul>
	</div>
	<div class="module-mini-bottom">
	</div>
</div>
# ELSE #
<div class="block-container color-main">
	<div class="block-contents">
		<h5 class="sub-title color-sub">
			<a href="{U_LINK}" class="fa fa-syndication"></a>
			# IF C_NAME #{NAME}# ELSE #{TITLE}# ENDIF #
		</h5>
		<ul class="list" style="margin-top:8px;">
			# START item #
			<li style="# IF item.C_IMG #background:url({PATH_TO_ROOT}{item.U_IMG}) no-repeat center center; background-size:cover; min-height:80px;# ELSE ##ffffff# ENDIF #;"><span class="smaller">{item.DATE}</span> <a href="{item.U_LINK} ">{item.TITLE}</a></li>
			# END item #
		</ul>
	</div>
</div>
# ENDIF #
