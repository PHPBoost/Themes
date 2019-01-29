<div id="module-poll-mini">
	# START question #
	<form method="post" action="{PATH_TO_ROOT}/poll/poll{question.ID}" class="form-horizontal">
		{question.QUESTION}
		<hr />

		<ul class="list-group">
			# START question.radio #
			<li class="list-group-item">
				<input type="radio" name="radio" value="{question.radio.NAME}"> {question.radio.ANSWERS}
			</li>
			# END question.radio #

			# START question.checkbox #
			<li class="list-group-item">
				<input type="checkbox" name="{question.checkbox.NAME}" value="{question.checkbox.NAME}"> {question.checkbox.ANSWERS}
			</li>
			# END question.checkbox #
		</ul>

		<p class="text-center">
			<span class="btn-group">
				<button type="submit" name="valid_poll" value="true" class="btn btn-primary">{L_VOTE}</button>
				<a class="btn btn-info" href="{PATH_TO_ROOT}/poll/poll{U_POLL_RESULT}">{L_POLL_RESULT}</a>
			</span>
			<input type="hidden" name="token" value="{TOKEN}">
		</p>

	</form>
	# END question #

	# START result #
		{result.QUESTION}
		<hr />
		# START result.answers #
		<div class="mb15">
			<span>{result.answers.ANSWERS} : {result.answers.PERCENT}%</span>
			<div class="progress" title="{result.answers.WIDTH}%">
				<div class="progress-bar" role="progressbar" aria-valuenow="{result.answers.WIDTH}" aria-valuemin="0" aria-valuemax="100" style="width: {result.answers.WIDTH}%;">
					{result.answers.WIDTH}%
				</div>
			</div>
		</div>
		# END result.answers #
		<p class="text-center">{result.VOTES} {L_VOTE}</p>
	# END result #

	<p class="text-center">
		<a class="btn btn-pbt" href="{PATH_TO_ROOT}/poll/">${LangLoader::get_message('mini_poll', 'poll_french', 'poll')}</a>
	</p>
</div>
