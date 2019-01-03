<style>
	.code {margin-bottom: 5px;}
	.fa:before {margin-right: 3px}
</style>

<section>
	<header>
		<h1>{@module.title} - {@title.icons}</h1>
	</header>

	<article class="row">
		<header>
			<h2>{@iconfa.sample}</h2>
		</header>
		<div class="table-responsive">
			<table class="table">
				<caption>{@iconfa.social}</caption>
				<thead>
					<tr>
						<th>{@iconfa.icon}</th>
						<th>{@iconfa.name}</th>
						<th>{@iconfa.code}</th>
					</tr>
				</thead>
				<tbody>
					# START social #
					<tr>
						<td><i class="fa fa-{social.FA} fa-lg"></i></td>
						<td><span>{social.FA}</span></td>
						<td>{social.BEFORE}</td>
					</tr>
					# END web #
				</tbody>
			</table>

			<table class="table">
				<caption>{@iconfa.screen}</caption>
				<thead>
					<tr>
						<th>{@iconfa.icon}</th>
						<th>{@iconfa.name}</th>
						<th>{@iconfa.code}</th>
					</tr>
				</thead>
				<tbody>
					# START responsive #
					<tr>
						<td><i class="fa fa-{responsive.FA} fa-lg"></i></td>
						<td><span>{responsive.FA}</span></td>
						<td>{responsive.BEFORE}</td>
					</tr>
					# END responsive #
				</tbody>
			</table>
		</div>
		<footer>{@iconfa.list}<a class="basic-button" href="https://fortawesome.github.io/Font-Awesome/cheatsheet/" title="Font-Awesome">Cheatsheet Font-Awesome</a></footer>
	</article>

	<article>
		<header>
			<h2>{@iconfa.howto}</h2>
		</header>
		<div class="row">
			<p>{@iconfa.howto.explain}</p>
			<p>{@iconfa.howto.update}</p>

			<br />
			<h3>{@iconfa.howto.html}</h3>
			<p>{@iconfa.howto.html.class}</p>
			<div class="code">
				<pre><span><</span><span>i class="fa fa-edit"><</span>/i> Edition</pre>
			</div>
			<p>{@iconfa.howto.html.class.result.i}<i class="fa fa-edit"></i> Edition</p>
			<div class="code">
				<pre><span><</span>a class="fa fa-globe" href="http://www.phpboost.com">PHPBoost<<span>/a></span></pre>
			</div>
			<p>{@iconfa.howto.html.class.result.a}<a class="fa fa-globe" href="http://www.phpboost.com">PHPBoost</a></p>
			<p>{@iconfa.howto.html.class.result.all}</p>

			<br />
			<h3>{@iconfa.howto.css}</h3>
			<p>{@iconfa.howto.css.class}</p>
			<span class="formatter-code">{@iconfa.howto.css.css.code}</span>
			<div class="code">
				<pre>.success { ... }<br /><br />.success::before {<br /> content: "\f00c";<br /> font-family: FontAwesome; <br />}</pre>
			</div>
			<span class="formatter-code">{@iconfa.howto.css.html.code}</span>
			<div class="code">
				<pre><<span>div class="success">{@css.message.success}<<span>/div></span></pre>
			</div>
			<div class="success">{@css.message.success}</div>

			<br />
			<h3>{@iconfa.howto.bbcode}</h3>
			<p>{@iconfa.howto.bbcode.some.icons} <i class="fa fa-flag-o"></i></p>
			<p>{@iconfa.howto.bbcode.tag}</p>
			<p>{@iconfa.howto.bbcode.icon.name}</p>
			<p>{@iconfa.howto.bbcode.icon.test} <i class="fa fa-cubes"></i></p>
			<p>{@iconfa.howto.bbcode.icon.variants}</p>

			<br />
			<h3>{@iconfa.howto.variants}</h3>
			<p>{@iconfa.howto.variants.explain}</p>
			<p>{@iconfa.howto.variants.list}<a class="basic-button" href="https://fortawesome.github.io/Font-Awesome/examples/">Font-Awesome/examples</a></p>
			<div class="code">
				<pre><<span>i class="fa fa-spinner fa-spin fa-2x><</span>/i></pre>
			</div>
			<p>{@iconfa.howto.variants.spinner}<i class="fa fa-spinner fa-spin fa-2x"></i></p>
		</div>
	</article>

	<footer></footer>
</section>
