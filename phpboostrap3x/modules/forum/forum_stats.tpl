		# INCLUDE forum_top #

		<article itemscope="itemscope" itemtype="http://schema.org/Creativework" id="article-forum-stats">
			<header>
				<h2>{L_STATS}</h2>
			</header>
			<div class="panel panel-default">
				<div class="panel-heading">
					{L_STATS}
				</div>
				<ul class="list-group">
					<li class="list-group-item">
						{L_NBR_TOPICS}: <strong>{NBR_TOPICS}</strong>
					</li>
					<li class="list-group-item">
						{L_NBR_MSG}: <strong>{NBR_MSG}</strong>
					</li>
					<li class="list-group-item">
						{L_NBR_TOPICS_DAY}: <strong>{NBR_TOPICS_DAY}</strong>
					</li>
					<li class="list-group-item">
						{L_NBR_MSG_DAY}: <strong>{NBR_MSG_DAY}</strong>
					</li>
					<li class="list-group-item">
						{L_NBR_TOPICS_TODAY}: <strong>{NBR_TOPICS_TODAY}</strong>
					</li>
					<li class="list-group-item">
						{L_NBR_MSG_TODAY}: <strong>{NBR_MSG_TODAY}</strong>
					</li>
				</ul>
			</div>				

			<div class="panel panel-default">
				<div class="panel-heading">
					{L_LAST_MSG}
				</div>
				<ul class="list-group">
					# START last_msg #
					<li class="list-group-item">
						<a href="{PATH_TO_ROOT}/forum/topic{last_msg.U_TOPIC_ID}">{last_msg.TITLE}</a>
					</li>
					# END last_msg #
				</ul>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					{L_POPULAR}
				</div>
				<ul class="list-group">
					# START popular #
					<li class="list-group-item">
						<a href="{PATH_TO_ROOT}/forum/topic{popular.U_TOPIC_ID}">{popular.TITLE}</a>
					</li>
					# END popular #
				</ul>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					{L_ANSWERS}
				</div>
				<ul class="list-group">
					# START answers #
					<li class="list-group-item">
						<a href="{PATH_TO_ROOT}/forum/topic{answers.U_TOPIC_ID}">{answers.TITLE}</a>
					</li>
					# END answers #
				</ul>
			</div>

			<footer>{L_STATS}</footer>
		</article>

		# INCLUDE forum_bottom #
