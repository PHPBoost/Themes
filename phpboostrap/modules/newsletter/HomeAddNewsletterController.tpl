<div class="table-responsive">
	<table class="table">
		<thead>
			<tr>
				<th colspan="3">{@newsletter.types.choice}</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<label>
						<input type="radio" id="type" name="type" checked="checked" value="text">
						<strong>{@newsletter.types.text}</strong>
					</label>
				</td>
				<td>
					<label>
						<input type="radio" id="type" name="type" value="bbcode">
						<strong>{@newsletter.types.bbcode}</strong>
					</label>
				</td>
				<td>
					<label>
						<input type="radio" id="type" name="type" value="html">
						<strong>{@newsletter.types.html}</strong>
					</label>
				</td>
			</tr>
			<tr>
				<td><span class="newsletter-type color-available">${html(@newsletter.types.forall)}</span></td>
				<td><span class="newsletter-type color-available">${html(@newsletter.types.forall)}</span></td>
				<td><span class="newsletter-type color-alert">${html(@newsletter.types.forexpert)}</span></td>
			</tr>
			<tr>
				<td>${html(@newsletter.types.text_explain)}</td>
				<td>${html(@newsletter.types.bbcode_explain)}</td>
				<td>${html(@newsletter.types.html_explain)}</td>
			</tr>
		</tbody>
	</table>
</div>
