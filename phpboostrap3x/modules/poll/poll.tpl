	# IF C_POLL_MAIN #
		<section id="module-poll-main">
			<header>
				<div class="pull-right text-right">
					<div class="btn-group btn-group-xs">
						<span class="btn btn-info">
							{EDIT}
						</span>
					</div>
				</div>
				<h1>{L_POLL}</h1>
			</header>

			<div class="">
				<p>{L_POLL_MAIN}</p>
				# START list #
				<div class="media mtb15">
					<div class="media-left">
						<img class="media-object" src="{PATH_TO_ROOT}/poll/poll.png" alt="{list.QUESTION}" title="{list.QUESTION}"/>
					</div>
					<div class="media-body">
						<h4 class="media-heading">
							<a id="poll-question-{list.U_POLL_ID}" href="{PATH_TO_ROOT}/poll/poll{list.U_POLL_ID}">
								{list.QUESTION}
							</a>
						</h4>
					</div>
				</div>
				# END list #
				<p class="text-center">
					<span class="btn btn-pbt">{U_ARCHIVE}</span>
				</p>
			</div>
			<footer></footer>
		</section>
	# ENDIF #


	# IF C_POLL_VIEW #
		<form method="post" action="{PATH_TO_ROOT}/poll/poll{U_POLL_ACTION}" class="form-horizontal">
			<section id="module-poll">
				<header>
					# IF C_IS_ADMIN #
					<div class="pull-right text-right">
						<div class="btn-group btn-group-xs">
							<a href="{PATH_TO_ROOT}/poll/admin_poll.php?id={IDPOLL}" title="{L_EDIT}" title="${LangLoader::get_message('edit', 'common')}" class="btn btn-info">
								<i class="fa fa-edit"></i>
							</a>
							<a href="{PATH_TO_ROOT}/poll/admin_poll.php?delete=1&amp;id={IDPOLL}&amp;token={TOKEN}" title="${LangLoader::get_message('delete', 'common')}" class="btn btn-danger" data-confirmation="delete-element">
								<i class="fa fa-delete"></i>
							</a>
						</div>
					</div>
					# ENDIF #
					<h2>
						{QUESTION}
					</h2>
				</header>

				# INCLUDE message_helper #

				<article id="article-poll-{IDPOLL}" class="article-poll block">
					# IF C_POLL_QUESTION #
					<ul class="list-group">
						# START radio #
						<li class="list-group-item">
							<input type="{radio.TYPE}" name="radio" value="{radio.NAME}"> {radio.ANSWERS}
						</li>
						# END radio #

						# START checkbox #
						<li class="list-group-item">
							<input type="{checkbox.TYPE}" name="{checkbox.NAME}" value="{checkbox.NAME}"> {checkbox.ANSWERS}
						</li>
						# END checkbox #
					</ul>

					<p class="text-center">
						<span class="btn-group">
							<button class="btn btn-primary" name="valid_poll" type="submit" value="{L_VOTE}">{L_VOTE}</button>
							<a class="btn btn-info" href="{PATH_TO_ROOT}/poll/poll{U_POLL_RESULT}">{L_RESULT}</a>
						</span>
						<input type="hidden" name="token" value="{TOKEN}">
					</p>
					# ENDIF #

					# IF C_POLL_RESULTS #
						# IF C_DISPLAY_RESULTS #
							# START result #
							<div>
								<span>{result.ANSWERS} - ({result.NBRVOTE} {L_VOTE})</span>
								<div class="progress" title="{result.PERCENT}%">
									<div class="progress-bar" role="progressbar" aria-valuenow="{result.PERCENT}" aria-valuemin="0" aria-valuemax="100" style="width: {result.PERCENT}%;">
										{result.PERCENT}%
									</div>
								</div>
							</div>
							# END result #
							<div class="text-center">
									<span>{VOTES} {L_VOTE}</span> -
									<span>{L_ON} : {DATE} </span>
							</div>

						# ELSE #
							<div class="alert alert-notice"># IF C_NO_VOTE #{L_NO_VOTE}# ELSE #{L_RESULTS_NOT_DISPLAYED_YET}# ENDIF #</div>
						# ENDIF #
					# ENDIF #
					<footer></footer>
				</article>
				<footer></footer>
			</section>
		</form>
	# ENDIF #


	# IF C_POLL_ARCHIVES #
		<section id="module-poll-archives">
			<header>
				<h1>{L_ARCHIVE}</h1>
				# IF C_PAGINATION #<span class="text-right"># INCLUDE PAGINATION #</span># ENDIF #
			</header>
				# START list #
				<article id="article-poll-{list.ID}" class="article-poll article-several block">
					<header>
						# IF C_IS_ADMIN #
						<div class="pull-right text-right">
							<div class="btn-group btn-group-xs">
								<a href="{PATH_TO_ROOT}/poll/admin_poll.php?id={list.ID}" title="{L_EDIT}" title="${LangLoader::get_message('edit', 'common')}" class="btn btn-info">
									<i class="fa fa-edit"></i>
								</a>
								<a href="{PATH_TO_ROOT}/poll/admin_poll.php?delete=1&amp;id={list.ID}&amp;token={TOKEN}" title="${LangLoader::get_message('delete', 'common')}" class="btn btn-danger" data-confirmation="delete-element">
									<i class="fa fa-delete"></i>
								</a>
							</div>
						</div>
						# ENDIF #
						<h2>
							{list.QUESTION}
						</h2>
					</header>

					# START list.result #
						<div>
							<span>{list.result.ANSWERS} - ({list.result.NBRVOTE} {list.L_VOTE})</span>
							<div class="progress" title="{list.result.PERCENT}%">
								<div class="progress-bar" role="progressbar" aria-valuenow="{list.result.PERCENT}" aria-valuemin="0" aria-valuemax="100" style="width: {list.result.PERCENT}%;">
									{list.result.PERCENT}%
								</div>
							</div>
						</div>
					# END list.result #
					<div class="text-center">
						<span>{list.VOTE} {list.L_VOTE}</span> -
						<span>{L_ON} : {list.DATE} </span>
						&nbsp;
					</div>

				</article>
				# END list #
			<footer># IF C_PAGINATION #<span class="text-right"># INCLUDE PAGINATION #</span># ENDIF #</footer>
		</section>
	# ENDIF #
