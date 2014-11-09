# IF HAS_TIME #
<meta http-equiv="refresh" content="{TIME};url=${U_LINK}">
# ENDIF #
<section>
	<header><h1>${escape(TITLE)}</h1></header>
	<div class="content">
		<center><img src="http://localhost:8000/developpement/phpboost-4/templates/fantasy/theme/images/error.jpg" alt="erreur 404"></center>
		<div style="color:red;background:rgba(255,255,255, 0.5); padding:10px;">{MESSAGE}</div>
	    # IF HAS_LINK #
		<div style="padding:30px;text-align:center;">
			<strong><a href="{U_LINK}" title="${escape(LINK_NAME)}">${escape(LINK_NAME)}</a></strong>
		</div>
	    # ENDIF #
	</div>
	<footer></footer>	
</section>