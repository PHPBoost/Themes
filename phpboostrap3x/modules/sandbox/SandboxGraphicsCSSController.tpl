<section id="sandbox-css">
	<header>
		<h1>
			{@module.title} - {@title.css}
		</h1>
	</header>
	<div class="sandbox-summary">
      <div class="close-summary">
        <i class="fa fa-arrow-circle-left"></i>
      </div>
      <ul>
        <li>
			<a class="summary-link" href="#framework">{@css.title.framework}</a>
			<ul>
				<li><a href="#page-title" class="summary-link">{@css.page.title}</a></li>
				<li><a href="#options" class="summary-link">{@css.options}</a></li>
				<li><a href="#options-infos" class="summary-link">{@css.options}.infos</a></li>
			</ul>
		</li>
        <li>
			<a class="summary-link" href="#typography">{@css.title.typography}</a>
			<ul>
				<li><a href="#titles" class="summary-link">{@css.titles}</a></li>
				<li><a href="#sizes" class="summary-link">{@css.title.sizes}</a></li>
				<li><a href="#styles" class="summary-link">{@css.styles}</a></li>
				<li><a href="#rank-colors" class="summary-link">{@css.rank_color}</a></li>
			</ul>
		</li>
        <li>
			<a class="summary-link" href="#miscellaneous">{@css.miscellaneous}</a>
			<ul>
				<li><a href="#progress-bar" class="summary-link">{@css.progress_bar}</a></li>
				<li><a href="#icons" class="summary-link">{@css.main_actions_icons}</a></li>
				<li><a href="#explorer" class="summary-link">{@css.explorer}</a></li>
				<li><a href="#lists" class="summary-link">{@css.lists}</a></li>
				<li><a href="#buttons" class="summary-link">{@css.button}</a></li>
				<li><a href="#notation" class="summary-link">{@css.notation}</a></li>
				<li><a href="#pagination" class="summary-link">{@css.pagination}</a></li>
				<li><a href="#sortable" class="summary-link">{@css.sortable}</a></li>
				<li><a href="#css-table" class="summary-link">{@css.table}</a></li>
				<li><a href="#messages" class="summary-link">{@css.messages.and.coms}</a></li>
				<li><a href="#alerts" class="summary-link">{@css.alert.messages}</a></li>
			</ul>
		</li>
        <li>
			<a class="summary-link" href="#blocks">{@css.blocks}</a>
		</li>
      </ul>
    </div>
	<div class="open-summary btn-pbt">
        <i class="fa fa-arrow-circle-right"></i> {@sandbox.summary}
    </div>
	<script>jQuery("#cssmenu-sandbox").menumaker({ title: "Sandbox", format: "multitoggle", breakpoint: 768 }); </script>

	<div id="framework" class="sandbox-title">
		<h2>{@css.title.framework}</h2>
	</div>

	<div class="row">
		<article id="page-title" class="col-md-12">
			<header class="page-header">
				<div class="pull-right text-right">
					<div class="btn-group btn-group-xs">
						<a href="#" class="btn btn-info" title="{@css.edit}"><i class="fa fa-edit"></i></a>
						<a href="#" class="btn btn-warning" title="{@css.delete}"><i class="fa fa-trash"></i></a>
					</div>
				</div>
				<h2>
					<span>{@css.page.title}</span>
				</h2>
				<div>{@css.more}</div>
			</header>
			<div>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no_avatar.png" alt="{@css.picture}" class="pull-left" />
				<div>{@framework.lorem.large}</div>
			</div>
		</article>
	</div>
	<!-- Source code -->
	<!-- <div class="formatter-container formatter-hide no-js tpl" onclick="bb_hide(this)">
		<span class="formatter-title title-perso">{@sandbox.source.code} :</span>
		<div class="formatter-content">
			{PAGE}
		</div>
	</div> -->

	<div class="row">
		<article id="options" class="col-md-12">
			<header>
				<h5>{@css.form}</h5>
			</header>
			<div>
				<div class="items-filters">
					<form class="form-horizontal options">
						<div class="form-group">
						    <div class="col-sm-12">{@css.options.sort_by}</div>
						    <div class="col-sm-6">
								<div class="form-group">
									<div class="form-field form-field-select picture-status-constraint">
										<select class="form-control">
											<option value="{@css.options.sort_by.alphabetical}">{@css.options.sort_by.alphabetical}</option>
											<option value="{@css.options.sort_by.size}">{@css.options.sort_by.size}</option>
											<option value="{@css.options.sort_by.date}">{@css.options.sort_by.date}</option>
											<option value="{@css.options.sort_by.popularity}">{@css.options.sort_by.popularity}</option>
											<option value="{@css.options.sort_by.note}">{@css.options.sort_by.note}</option>
										</select>
										<span class="text-status-constraint" style="display: none;"></span>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<div class="form-field form-field-select picture-status-constraint">
										<select class="form-control">
											<option value="{@css.modules_menus.direction.up}">{@css.modules_menus.direction.up}</option>
											<option value="{@css.modules_menus.direction.down}">{@css.modules_menus.direction.down}</option>
										</select>
										<span class="text-status-constraint" style="display: none;"></span>
									</div>
								</div>
							</div>
					    </div>
					</form>
				</div>
				<div class="clearfix"></div>
				{@framework.lorem.large}
			</div>
		</article>
	</div>
	<!-- Source code -->
	<!-- <div class="formatter-container formatter-hide no-js tpl" onclick="bb_hide(this)">
		<span class="formatter-title title-perso">{@sandbox.source.code} :</span>
		<div class="formatter-content">
			{FORM_OPTION}
		</div>
	</div> -->

	<div class="row">
		<article id="options-infos" class="col-md-12">
			<header>
				<h5>{@css.class} .panel</h5>
			</header>
			<div>
				<div class="col-sm-5 pull-right">
					<div class="panel panel-default">
						<div class="panel-heading">{@css.options.file.title}</div>
						<ul class="list-group">
							<li class="list-group-item text-center">
								<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no_avatar.png" alt="PHPBoost" itemprop="image">
							</li>
							<li class="list-group-item">
								<div class="btn-group">
									<div class="input-group-btn">
										<a href="#" class="btn btn-info"><i class="fa fa-globe"></i> {@css.options.link}</a>
									</div>
									<span class="input-group-addon" title="{@css.options.link}"><i class="fa fa-unlink"></i></span>
								</div>
							</li>
							<li class="list-group-item"><span class="text-strong">{@css.options.option.title} : </span><span>0</span></li>
							<li class="list-group-item"><span class="text-strong">{@css.options.option.title} : </span><span><a itemprop="about" href="#">{@css.options.link}</a></span></li>
							<li class="list-group-item">{@css.options.option.com}</li>
							<li class="list-group-item">
								<div class="notation" id="notation-1">
									<span class="stars">
										<a href="" onclick="return false;" class="fa star star-hover fa-star-o" id="star-1-1"></a>
										<a href="" onclick="return false;" class="fa star star-hover fa-star-o" id="star-1-2"></a>
										<a href="" onclick="return false;" class="fa star star-hover fa-star-o" id="star-1-3"></a>
										<a href="" onclick="return false;" class="fa star star-hover fa-star-o" id="star-1-4"></a>
										<a href="" onclick="return false;" class="fa star star-hover fa-star-o" id="star-1-5"></a>
									</span>
									<span class="notes">
										<span class="number-notes">0</span>
										<span title="0 {@css.options.sort_by.note}">{@css.options.sort_by.note}</span>
									</span>
								</div>
							</li>
						</ul>
					</div>
				</div>
				{@framework.lorem.large}
			</div>
			<div class="clearfix"></div>
		</article>
	</div>
	<!-- Source code -->
	<!-- <div class="formatter-container formatter-hide no-js tpl" onclick="bb_hide(this)">
		<span class="formatter-title title-perso">{@sandbox.source.code} :</span>
		<div class="formatter-content">
			{DIV_OPTION}
		</div>
	</div> -->

	<div id="typography" class="sandbox-title">
		<h2>{@css.title.typography}</h2>
	</div>

	<div class="row">
		<article id="titles" class="col-md-12">
			<header>
				<h5>{@css.titles}</h5>
			</header>
			<div>
				<h1>h1. {@css.title} 1</h1>
				<h2>h2. {@css.title} 2</h2>
				<h3>h3. {@css.title} 3</h3>
				<h4>h4. {@css.title} 4</h4>
				<h5>h5. {@css.title} 5</h5>
				<h6>h6. {@css.title} 6</h6>
			</div>
		</article>
	</div>

	<div class="row">
		<article id="styles" class="col-sm-6">
			<header>
				<h5>{@css.styles}</h5>
			</header>
			<div>
				<strong>{@css.text_bold}</strong><br />
				<em>{@css.text_italic}</em><br />
				<span class="small">{@css.text.small}</span><br />
				<span style="text-decoration: underline;">{@css.text_underline}</span><br />
				<strike>{@css.text_strike}</strike><br />
				<a href="#" title="{@css.link}">{@css.link}</a>
			</div>
		</article>
		<article id="rank-colors" class="col-sm-6">
			<header>
				<h5>{@css.rank_color}</h5>
			</header>
			<div>
				<a href="#" class="admin" title="{@css.admin}">{@css.admin}</a> <br />
				<a href="#" class="modo" title="{@css.modo}">{@css.modo}</a> <br />
				<a href="#" class="member" title="{@css.member}">{@css.member}</a> <br />
			</div>
		</article>
	</div>

	<div id="miscellaneous" class="sandbox-title">
		<h2>{@css.miscellaneous}</h2>
	</div>

	<div class="row">
		<article id="progress-bar" class="col-md-6">
			<header>
				<h5>{@css.progress_bar}</h5>
			</header>
			<h6>25%</h6>
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;">
				25%
				</div>
			</div>

			<h6>50%</h6>
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
				50%
				</div>
			</div>

			<h6>75%</h6>
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
				75%
				</div>
			</div>

			<h6>100%</h6>
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
				100%
				</div>
			</div>
		</article>

		<article id="icons" class="col-md-6">
			<header>
				<h5>{@css.main_actions_icons}</h5>
			</header>
			<div>
				<ul>
					<li>{@css.rss_feed} : <a href="#" class="fa fa-syndication" title="{@css.rss_feed}"></a></li>
					<li>{@css.edit} : <a href="#" class="fa fa-edit" title="{@css.edit}"></a></li>
					<li>{@css.delete} : <a href="#" class="fa fa-delete" title="{@css.delete}"></a></li>
					<li>{@css.delete.confirm} : <a href="#" class="fa fa-delete" data-confirmation="delete-element" title="{@css.delete.confirm}"></a></li>
					<li>{@css.delete.confirm.custom} : <a href="#" class="fa fa-delete" data-confirmation="{@css.delete.custom_message}" title="{@css.delete.confirm.custom}"></a></li>
				</ul>
			</div>
		</article>
	</div>
	<!-- Source code -->
	<!-- <div class="formatter-container formatter-hide no-js tpl" onclick="bb_hide(this)">
		<span class="formatter-title title-perso">{@sandbox.source.code} :</span>
		<div class="formatter-content">
			{PROGRESS_BAR}
		</div>
	</div> -->

	<div class="row">
		<article id="explorer" class="col-md-12">
			<header>
				<h5>{@css.explorer}</h5>
			</header>
			<div>
				<div class="explorer">
					<div class="cats">
							<h2>{@css.explorer}</h2>
						<div>
							<ul>
								<li><a id="class_0" href="#" title="{@css.root}"><i class="fa fa-folder"></i>{@css.root}</a>
									<ul>
										<li class="sub"><a id="class_1" href="#" title="{@css.cat} 1"><i class="fa fa-folder"></i>{@css.cat} 1</a><span id="cat_1"></span></li>
										<li class="sub">
											<a class="parent" href="javascript:show_cat_contents(2, 0);" title="{@css.cat} 2">
												<span class="fa fa-minus-square-o" id="img2_2"></span><span class="fa fa-folder-open" id ="img_2"></span>
											</a>
											<a class="selected" id="class_2" href="#" title="{@css.cat} 2">{@css.cat} 2</a>
											<span id="cat_2">
												<ul>
													<li class="sub"><a href="#"><i class="fa fa-folder" title="{@css.cat} 3"></i>{@css.cat} 3</a></li>
													<li class="sub"><a href="#"><i class="fa fa-folder" title="{@css.cat} 4"></i>{@css.cat} 4</a></li>
												</ul>
											</span>
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
					<div class="files">
							<h2>{@css.tree}</h2>
						<div id="cat_contents">
							<ul>
								<li><a href="#" title="{@css.cat} 3"><i class="fa fa-folder"></i>{@css.cat} 3</a></li>
								<li><a href="javascript:open_cat(2); show_cat_contents(0, 0);" title="{@css.cat} 4"><i class="fa fa-folder"></i>{@css.cat} 4</a></li>
								<li><a href="#" title="{@css.file} 1"><i class="fa fa-file"></i>{@css.file} 1</a></li>
								<li><a href="#" title="{@css.file} 2"><i class="fa fa-file"></i>{@css.file} 2</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- Source code -->
	<!-- <div class="formatter-container formatter-hide no-js tpl" onclick="bb_hide(this)">
		<span class="formatter-title title-perso">{@sandbox.source.code} :</span>
		<div class="formatter-content">
			{EXPLORER}
		</div>
	</div> -->

	<div class="row">
		<article id="lists" class="col-md-6">
			<header>
				<h5>{@css.lists}</h5>
			</header>
			<div>
				<ul>
					<li>{@css.element} 1
						<ul>
							<li>{@css.element}</li>
							<li>{@css.element}</li>
						</ul>
					</li>
					<li>{@css.element} 2</li>
					<li>{@css.element} 3</li>
				</ul>

				<ol>
					<li>{@css.element} 1
						<ol>
							<li>{@css.element}</li>
							<li>{@css.element}</li>
						</ol>
					</li>
					<li>{@css.element} 2</li>
					<li>{@css.element} 3</li>
				</ol>
			</div>
		</article>
		<article id="buttons" class="col-md-6">
			<header>
				<h5>{@css.button}</h5>
			</header>
			<div>
				<button type="submit" class="btn btn-default">btn-default</button>
				<button type="submit" class="btn btn-primary">btn-primary</button>
				<button type="submit" class="btn btn-info">btn-info</button>
				<button type="submit" class="btn btn-success">btn-success</button>
				<button type="submit" class="btn btn-warning">btn-warning</button>
				<button type="submit" class="btn btn-danger">btn-danger</button>
				<button type="submit" class="btn btn-pbt">btn-pbt</button>
				<button type="submit" class="btn btn-link">btn-link</button>
			</div>
		</article>
	</div>
	<!-- Source code -->
	<!-- <div class="formatter-container formatter-hide no-js tpl" onclick="bb_hide(this)">
		<span class="formatter-title title-perso">{@sandbox.source.code} :</span>
		<div class="formatter-content">
			{BUTTON}
		</div>
	</div> -->

	<div class="row">
		<article id="notation" class="col-md-12">
			<header>
				<h5>{@css.notation}</h5>
			</header>
			<div>
				<div class="notation">
					<a href="" onclick="return false;" class="fa star fa-star"></a>
					<a href="" onclick="return false;" class="fa star fa-star"></a>
					<a href="" onclick="return false;" class="fa star fa-star-half-o"></a>
					<a href="" onclick="return false;" class="fa star fa-star-o"></a>
					<a href="" onclick="return false;" class="fa star fa-star-o"></a>
				</div>
			</div>
		</article>
		<article id="pagination" class="col-md-12">
			<header>
				<h5>{@css.pagination}</h5>
			</header>
			<div>
				# INCLUDE PAGINATION #
			</div>
		</article>
	</div>

	<div class="row">
		<article id="sortable" class="col-md-12">
			<header>
				<h5>{@css.sortable}</h5>
			</header>
			<div>
				<ul class="sortable-block">
					<li class="sortable-element">
						<div class="sortable-selector" title="{@css.sortable.move}"></div>
						<div class="sortable-title">
							<span><a>{@css.static.sortable}</a></span>
						</div>
					</li>
					<li class="sortable-element dragged" style="position: relative;">
						<div class="sortable-selector" title="{@css.sortable.move}"></div>
						<div class="sortable-title">
							<span><a>{@css.moving.sortable}</a></span>
						</div>
					</li>
					<li>
						<div class="dropzone">{@css.dropzone}</div>
					</li>
				</ul>
			</div>
		</article>
	</div>
	<!-- Source code -->
	<!-- <div class="formatter-container formatter-hide no-js tpl" onclick="bb_hide(this)">
		<span class="formatter-title title-perso">{@sandbox.source.code} :</span>
		<div class="formatter-content">
			{SORTABLE}
		</div>
	</div> -->

	<div class="row">
		<article id="css-table" class="col-md-12">
			<header>
				<h5>{@css.table}</h5>
			</header>
			<div class="table-responsive">
				<table class="table">
					<caption>
						{@css.table.description}
					</caption>
					<thead>
						<tr>
							<th>
								<a href="#" class="fa fa-table-sort-up" title="{@css.table.sort.up}"></a>
								{@css.table.name}
								<a href="#" class="fa fa-table-sort-down" title="{@css.table.sort.down}"></a>
							</th>
							<th>{@css.table.description}</th>
							<th>{@css.table.author}</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<td colspan="5"># INCLUDE PAGINATION #</td>
						</tr>
					</tfoot>
					<tbody>
						<tr>
							<td>{@css.table.test}</td>
							<td>{@css.table.description}</td>
							<td>{@css.table.author}</td>
						</tr>
						<tr>
							<td>{@css.table.test}</td>
							<td>{@css.table.description}</td>
							<td>{@css.table.author}</td>
						</tr>
						<tr>
							<td>{@css.table.test}</td>
							<td>{@css.table.description}</td>
							<td>{@css.table.author}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</article>
	</div>
	<!-- Source code -->
	<!-- <div class="formatter-container formatter-hide no-js tpl" onclick="bb_hide(this)">
		<span class="formatter-title title-perso">{@sandbox.source.code} :</span>
		<div class="formatter-content">
			{TABLE}
		</div>
	</div> -->

	<div class="row">
		<article id="messages" class="col-md-12">
			<header>
				<h5>{@css.messages.and.coms}</h5>
			</header>
			<div id="com2" class="panel panel-default" itemscope="itemscope" itemtype="http://schema.org/Comment">
				<div class="panel-heading">
					<div class="row">
						<div class="col-sm-4">
							<a itemprop="author" href="{PATH_TO_ROOT}/user/?url=/profile/1" class="admin" title="{@css.messages.login}">{@css.messages.login}</a>

						</div>
						<div class="col-sm-8">
							<div class="pull-right text-right">
								<div class="btn-group btn-group-xs">
									<a href="#" class="btn btn-info" title="{@css.edit}"><i class="fa fa-edit"></i></a>
									<a href="#" class="btn btn-danger" data-confirmation="delete-element" title="{@css.delete.confirm}"><i class="fa fa-delete"></i></a>
								</div>
							</div>
							<div class="btn-group btn-group-xs">
								<a itemprop="url" href="#com2" class="btn btn-info" title="#2">#2</a>
								<time class="btn btn-default" itemprop="datePublished" content="2013-09-05T15:37:01+00:00">{@css.messages.date}</time>
							</div>
						</div>

					</div>

				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-4">
							<p class="text-center">
								{@css.messages.level}
							</p>
							<p class="text-center">
								<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no_avatar.png" class="message-avatar" alt="${LangLoader::get_message('avatar', 'user-common')}" />
							</p>
						</div>
						<div class="col-sm-8">
							<div itemprop="text" class="message-content">{@css.messages.content}</div>
						</div>
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- Source code -->
	<!-- <div class="formatter-container formatter-hide no-js tpl" onclick="bb_hide(this)">
		<span class="formatter-title title-perso">{@sandbox.source.code} :</span>
		<div class="formatter-content">
			{MESSAGE}
		</div>
	</div> -->

	<div id="alerts" class="row">
		<article class="col-md-12">
			<header>
				<h5>{@css.alert.messages}</h5>
			</header>
			<div>
				# START messages # # INCLUDE messages.VIEW # # END messages #
			</div>
		</article>
	</div>
	<!-- Source code -->
	<!-- <div class="formatter-container formatter-hide no-js tpl" onclick="bb_hide(this)">
		<span class="formatter-title title-perso">{@sandbox.source.code} :</span>
		<div class="formatter-content">
			{ALERT}
		</div>
	</div> -->

	<div id="blocks" class="sandbox-title">
		<h2>{@css.blocks}</h2>
	</div>

	<div>1 {@css.blocks.per.line}</div>
	<div class="row">
		<article class="col-md-12">
			<header>
				<h2>{@css.block.title}</h2>
			</header>
			<div>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no_avatar.png" alt="{@css.picture}" class="thumbnail-item" />
				{@framework.lorem.medium}
			</div>
		</article>
	</div>

	<div>2 {@css.blocks.per.line}</div>
	<div class="row grid-columns">
		<article class="col-md-6">
			<header>
				<h2>{@css.block.title}</h2>
			</header>
			<div>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no_avatar.png" alt="{@css.picture}" class="thumbnail-item" />
				{@framework.lorem.mini}
			</div>
		</article>
		<article class="col-md-6">
			<header>
				<h2>{@css.block.title}</h2>
			</header>
			<div>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no_avatar.png" alt="{@css.picture}" class="thumbnail-item" />
				{@framework.lorem.mini}
			</div>
		</article>
	</div>

	<div>3 {@css.blocks.per.line}</div>
	<div class="row grid-columns">
		<article class="col-md-4">
			<header>
				<h2>{@css.block.title}</h2>
			</header>
			<div>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no_avatar.png" alt="{@css.picture}" class="thumbnail-item" />
				{@framework.lorem.mini}
			</div>
		</article>
		<article class="col-md-4">
			<header>
				<h2>{@css.block.title}</h2>
			</header>
			<div>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no_avatar.png" alt="{@css.picture}" class="thumbnail-item" />
				{@framework.lorem.mini}
			</div>
		</article>
		<article class="col-md-4">
			<header>
				<h2>{@css.block.title}</h2>
			</header>
			<div>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no_avatar.png" alt="{@css.picture}" class="thumbnail-item" />
				{@framework.lorem.mini}
			</div>
		</article>
	</div>
	<!-- Source code -->
	<!-- <div class="formatter-container formatter-hide no-js tpl" onclick="bb_hide(this)">
		<span class="formatter-title title-perso">{@sandbox.source.code} :</span>
		<div class="formatter-content">
			{BLOCK}
		</div>
	</div> -->
	<footer></footer>
</section>
<script src="{PATH_TO_ROOT}/sandbox/templates/js/sandbox.js"></script>
