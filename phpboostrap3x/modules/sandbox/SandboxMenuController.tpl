	<header id="header">
		<div id="top-header" class="container-fluid">
			<div class="container">
				<div id="site-infos" class="row">
					<div id="site-name-container">
						<div id="site-logo" # IF C_HEADER_LOGO #style="background-image: url({HEADER_LOGO});"# ENDIF #></div>
						<a id="site-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
						<p id="site-slogan">{SITE_SLOGAN}</p>
					</div>
				</div>
				<div id="top-header-content" class="row">
					<div class="col-sm-12">
						<nav class="navbar navbar-default dropdown-horizontal dropdown-with-submenu">
							<div class="navbar-header">
			                	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".hor-top">
			                        <span class="sr-only">{@cssmenu.horizontal.top}</span>
									<i class="fa fa-bars"></i>
			                    </button>
			                    <a class="navbar-brand visible-xs" href="#">{@cssmenu.horizontal.top}</a>
			            	</div>
							<div class="collapse navbar-collapse hor-top">
								<ul class="nav navbar-nav">
									<li>
										<a href="#">
											<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
										</a>
									</li>
									<li class="has-sub">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
										<ul class="dropdown-menu level-1" aria-labelledby="cssmenu-hor-top-1">
											<li>
												<a href="#">
													<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" />{@cssmenu.element}
												</a>
											</li>
											<li class="has-sub">
												<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
												<ul class="dropdown-menu level-2" aria-labelledby="cssmenu-hor-top-2">
													<li>
														<a href="#">
															<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" />{@cssmenu.element}
														</a>
													</li>
													<li class="has-sub">
														<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
														<ul class="dropdown-menu level-3" aria-labelledby="cssmenu-hor-top-3">
															<li>
																<a href="#">
																	<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" />{@cssmenu.element}
																</a>
															</li>
															<li>
																<a href="#">
																	<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" />{@cssmenu.element}
																</a>
															</li>
															<li>
																<a href="#">
																	<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" />{@cssmenu.element}
																</a>
															</li>
														</ul>
													</li>
												</ul>
											</li>
										</ul>
									</li>
									<li class="has-sub">
										<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
										<ul class="dropdown-menu level-1">
											<li>
												<a href="#">{@cssmenu.element}</a>
											</li>
											<li>
												<a href="#">{@cssmenu.element}</a>
											</li>
											<li>
												<a href="#">{@cssmenu.element}</a>
											</li>
											<li>
												<a href="#">{@cssmenu.element}</a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</nav>

					</div>
				</div>
			</div>
		</div>
		<div id="sub-header">
			<div id="sub-header-content" class="container">
				<nav class="navbar navbar-default dropdown-horizontal dropdown-with-submenu">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".hor-sub-top">
							<span class="sr-only">{@cssmenu.horizontal.sub.header}</span>
							<i class="fa fa-bars"></i>
						</button>
						<a class="navbar-brand visible-xs" href="#">{@cssmenu.horizontal.sub.header}</a>
					</div>
					<div class="collapse navbar-collapse hor-sub-top">
						<ul class="nav navbar-nav">
							<li>
								<a href="#">
									<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
								</a>
							</li>
							<li class="has-sub">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
								<ul class="dropdown-menu level-1" aria-labelledby="cssmenu-hor-sub-top-1">
									<li>
										<a href="#">
											<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
										</a>
									</li>
									<li class="has-sub">
										<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
										<ul class="dropdown-menu level-2" aria-labelledby="cssmenu-hor-sub-top-2">
											<li>
												<a href="#">
													<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
												</a>
											</li>
											<li class="has-sub">
												<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
												<ul class="dropdown-menu level-3" aria-labelledby="cssmenu-hor-sub-top-3">
													<li>
														<a href="#">
															<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
														</a>
													</li>
													<li>
														<a href="#">
															<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
														</a>
													</li>
													<li>
														<a href="#">
															<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
														</a>
													</li>
												</ul>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li class="has-sub">
								<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
								<ul class="dropdown-menu level-1">
									<li>
										<a href="#">{@cssmenu.element}</a>
									</li>
									<li>
										<a href="#">{@cssmenu.element}</a>
									</li>
									<li>
										<a href="#">{@cssmenu.element}</a>
									</li>
									<li>
										<a href="#">{@cssmenu.element}</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</header>

	<div id="global" class="container">

		<div id="main" class="row" role="main">

			<aside id="menu-left" class="col-md-3">
				<div class="panel panel-pbt">
					<div class="panel-heading">
						<div class="panel-title">{@cssmenu.vertical.scrolling}</div>
					</div>
					<div class="panel-body">
						<nav class="navbar dropdown-vertical dropdown-left dropdown-with-submenu">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".vert-left-top">
									<span class="sr-only">{@cssmenu.vertical.scrolling.left}</span>
									<i class="fa fa-bars"></i>
								</button>
								<a class="navbar-brand visible-xs" href="#">{@cssmenu.vertical.scrolling.left}</a>
							</div>
							<div class="collapse navbar-collapse vert-left-top">
								<ul class="nav navbar-nav">
									<li>
										<a href="#">
											<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
										</a>
									</li>
									<li class="has-sub">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
										<ul class="dropdown-menu level-1" aria-labelledby="cssmenu-vert-left-top-1">
											<li>
												<a href="#">
													<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
												</a>
											</li>
											<li class="has-sub">
												<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
												<ul class="dropdown-menu level-2" aria-labelledby="cssmenu-vert-left-top-2">
													<li>
														<a href="#">
															<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
														</a>
													</li>
													<li class="has-sub">
														<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
														<ul class="dropdown-menu level-3" aria-labelledby="cssmenu-vert-left-top-3">
															<li>
																<a href="#">
																	<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
																</a>
															</li>
															<li>
																<a href="#">
																	<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
																</a>
															</li>
															<li>
																<a href="#">
																	<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
																</a>
															</li>
														</ul>
													</li>
												</ul>
											</li>
										</ul>
									</li>
									<li class="has-sub">
										<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
										<ul class="dropdown-menu level-1">
											<li>
												<a href="#">{@cssmenu.element}</a>
											</li>
											<li>
												<a href="#">{@cssmenu.element}</a>
											</li>
											<li>
												<a href="#">{@cssmenu.element}</a>
											</li>
											<li>
												<a href="#">{@cssmenu.element}</a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</nav>

					</div>
					<div class="module-mini-bottom hidden-small-screens"></div>
				</div>
			</aside>

			<div id="main-content" class="col-md-6">

				<nav class="dropdown actionslinks mr15">
				    <button id="module-actionslinks" class="btn btn-pbt dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				        <small class="visible-xs">${LangLoader::get_message('content.menus.actions', 'admin-links-common')} {@cssmenu.actionslinks}</small>
				        <i class="fa fa-bars"></i>
				    </button>
					<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="module-actionslinks">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<span class="caret"></span> {@cssmenu.actionslinks.sandbox}
							</a>
							<ul class="dropdown-menu">
								<li><a href="{PATH_TO_ROOT}/sandbox">{@cssmenu.actionslinks.index}</a></li>
								<li><a href="{PATH_TO_ROOT}/sandbox/form">{@cssmenu.actionslinks.form}</a></li>
								<li><a href="{PATH_TO_ROOT}/sandbox/css">{@cssmenu.actionslinks.css}</a></li>
								<li><a href="{PATH_TO_ROOT}/sandbox/bbcode">{@cssmenu.actionslinks.bbcode}</a></li>
								<li><a href="{PATH_TO_ROOT}/sandbox/menu">{@cssmenu.actionslinks.menu}</a></li>
								<li><a href="{PATH_TO_ROOT}/sandbox/icons">{@cssmenu.actionslinks.icons}</a></li>
								<li><a href="{PATH_TO_ROOT}/sandbox/table">{@cssmenu.actionslinks.table}</a></li>
								<li><a href="{PATH_TO_ROOT}/sandbox/mail">{@cssmenu.actionslinks.mail}</a></li>
								<li><a href="{PATH_TO_ROOT}/sandbox/template">{@cssmenu.actionslinks.template}</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<span class="caret"></span> {@cssmenu.sub.element}
							</a>
							<ul class="dropdown-menu">
								<li><a href="#">{@cssmenu.element}</a></li>
								<li><a href="#">{@cssmenu.element}</a></li>
							</ul>
						</li>
						<li><a href="#">{@cssmenu.element}</a></li>
						<li><a href="{PATH_TO_ROOT}/sandbox/admin/config">{@mini.config}</a></li>
					</ul>
				</nav>

				<script>
				    <!--
				    $(document).ready(function() {
				        $('.actionslinks a.dropdown-toggle').on('click', function(e) {
				            var $el = $(this);
				            var $parent = $(this).offsetParent(".dropdown-menu");
				            $(this).parent("li").toggleClass('open');

				            if (window.matchMedia("(min-width: 767px)").matches) {
				                if(!$parent.parent().hasClass('actionslinks')) {
				                    $el.next().css({"top": $el[0].offsetTop, "right": $parent.outerWidth(), "left": "auto"});
				                }
				            } else {
				                if(!$parent.parent().hasClass('actionslinks')) {
				                    $el.next().css({"top": "100%", "right": 0, "left": 0});
				                }
				            }

				            $('.actionslinks li.open').not($(this).parents("li")).removeClass("open");

				            return false;
				        });
				    });
				    -->
				</script>

				<ol class="breadcrumb">
					<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
						<a href="{PATH_TO_ROOT}/" title="{@cssmenu.breadcrumb.index}" itemprop="url">
							<span itemprop="title">{@cssmenu.breadcrumb.index}</span>
						</a>
					</li>
					<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
						<a href="{PATH_TO_ROOT}/sandbox" title="{@cssmenu.breadcrumb.sandbox}" itemprop="url">
							<span itemprop="title">{@cssmenu.breadcrumb.sandbox}</span>
						</a>
					</li>
					<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
						<span itemprop="title">{@cssmenu.breadcrumb.cssmenu}</span>
					</li>
				</ol>

				<div id="top-content">
					<nav class="navbar navbar-default dropdown-horizontal dropdown-with-submenu">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".hor-scrolling">
								<span class="sr-only">{@cssmenu.horizontal.scrolling}</span>
								<i class="fa fa-bars"></i>
							</button>
							<a class="navbar-brand visible-xs" href="#">{@cssmenu.horizontal.scrolling}</a>
						</div>
						<div class="collapse navbar-collapse hor-scrolling">
							<ul class="nav navbar-nav">
								<li>
									<a href="#">
										<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
									</a>
								</li>
								<li class="has-sub">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
									<ul class="dropdown-menu level-1" aria-labelledby="cssmenu-hor-scrolling-1">
										<li>
											<a href="#">
												<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
											</a>
										</li>
										<li class="has-sub">
											<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
											<ul class="dropdown-menu level-2" aria-labelledby="cssmenu-hor-scrolling-2">
												<li>
													<a href="#">
														<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
													</a>
												</li>
												<li class="has-sub">
													<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
													<ul class="dropdown-menu level-3" aria-labelledby="cssmenu-hor-scrolling-3">
														<li>
															<a href="#">
																<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
															</a>
														</li>
														<li>
															<a href="#">
																<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
															</a>
														</li>
														<li>
															<a href="#">
																<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
															</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
									</ul>
								</li>
								<li class="has-sub">
									<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
									<ul class="dropdown-menu level-1">
										<li>
											<a href="#">{@cssmenu.element}</a>
										</li>
										<li>
											<a href="#">{@cssmenu.element}</a>
										</li>
										<li>
											<a href="#">{@cssmenu.element}</a>
										</li>
										<li>
											<a href="#">{@cssmenu.element}</a>
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</nav>
				</div>




				<section>
					<header>
						<h1>{@cssmenu.h1}</h1>
					</header>
					<div class="elements-container">
						<article>
							<header>
								<h2>{@cssmenu.h2}</h2>
							</header>
							<!-- <nav id="sandbox-group" class="cssmenu cssmenu-group">
								<ul class="level-0">
									<li>
										<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
									</li>
									<li class="current">
										<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
									</li>
									<li>
										<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
									</li>
									<li>
										<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
									</li>
								</ul>
							</nav> -->

							<div class="content">

								<div class="warning">
									{@cssmenu.warning}
								</div>
								<p>{@framework.lorem.large}</p>
								<p>{@framework.lorem.medium}</p>
							</div>
							<footer></footer>
						</article>
					</div>
					<footer></footer>
				</section>

				<div id="bottom-content">

				</div>
			</div>

			<aside id="menu-right" class="col-md-3">
				<div class="panel panel-pbt">
					<div class="panel-heading">
						<div class="panel-title">{@cssmenu.vertical.scrolling}</div>
					</div>
					<div class="panel-body">
						<nav class="navbar dropdown-vertical dropdown-right dropdown-with-submenu">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".vert-right-top">
									<span class="sr-only">{@cssmenu.vertical.scrolling.right}</span>
									<i class="fa fa-bars"></i>
								</button>
								<a class="navbar-brand visible-xs" href="#">{@cssmenu.vertical.scrolling.right}</a>
							</div>
							<div class="collapse navbar-collapse vert-right-top">
								<ul class="nav navbar-nav">
									<li>
										<a href="#">
											<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
										</a>
									</li>
									<li class="has-sub">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
										<ul class="dropdown-menu level-1" aria-labelledby="cssmenu-vert-right-top-1">
											<li>
												<a href="#">
													<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
												</a>
											</li>
											<li class="has-sub">
												<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
												<ul class="dropdown-menu level-2" aria-labelledby="cssmenu-vert-right-top-2">
													<li>
														<a href="#">
															<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
														</a>
													</li>
													<li class="has-sub">
														<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
														<ul class="dropdown-menu level-3" aria-labelledby="cssmenu-vert-right-top-3">
															<li>
																<a href="#">
																	<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
																</a>
															</li>
															<li>
																<a href="#">
																	<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
																</a>
															</li>
															<li>
																<a href="#">
																	<img src="{PATH_TO_ROOT}/sandbox/sandbox_mini.png" alt="{@cssmenu.element}" /> {@cssmenu.element}
																</a>
															</li>
														</ul>
													</li>
												</ul>
											</li>
										</ul>
									</li>
									<li class="has-sub">
										<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">{@cssmenu.sub.element} <i class="fa fa-has-sub"></i></a>
										<ul class="dropdown-menu level-1">
											<li>
												<a href="#">{@cssmenu.element}</a>
											</li>
											<li>
												<a href="#">{@cssmenu.element}</a>
											</li>
											<li>
												<a href="#">{@cssmenu.element}</a>
											</li>
											<li>
												<a href="#">{@cssmenu.element}</a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</nav>
					</div>
					<div class="module-mini-bottom hidden-small-screens"></div>
				</div>
			</aside>


		</div>

	</div>

	<footer id="footer">

		<div id="top-footer">
			<!-- <nav id="sandbox-static" class="cssmenu cssmenu-static">
				<ul class="level-0">
					<li class="has-sub">
						<a class="cssmenu-title" href="#" title="{@cssmenu.sub.element}">{@cssmenu.sub.element}</a>
						<ul class="level-1">
							<li class="has-sub">
								<a class="cssmenu-title" title="{@cssmenu.sub.element}">{@cssmenu.sub.element}</a>
								<ul class="level-2">
									<li>
										<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
									</li>
									<li>
										<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
									</li>
								</ul>
							</li>
							<li>
								<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
							</li>
							<li>
								<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
							</li>
							<li class="has-sub">
								<a class="cssmenu-title" title="{@cssmenu.sub.element}">{@cssmenu.sub.element}</a>
								<ul class="level-2">
									<li>
										<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
									</li>
									<li>
										<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="has-sub">
						<a class="cssmenu-title" href="#" title="{@cssmenu.sub.element}">{@cssmenu.sub.element}</a>
						<ul class="level-1">
							<li>
								<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
							</li>
							<li>
								<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
							</li>
						</ul>
					</li>
					<li class="has-sub">
						<a class="cssmenu-title" href="#" title="{@cssmenu.sub.element}">{@cssmenu.sub.element}</a>
						<ul class="level-1">
							<li>
								<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
							</li>
							<li>
								<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
							</li>
						</ul>
					</li>
				</ul>
			</nav> -->

		</div>

		<div class="footer-content">
			<!-- <nav id="sandbox-static-footer" class="cssmenu cssmenu-static">
				<ul class="level-0">
					<li class="has-sub">
						<a class="cssmenu-title" href="#" title="{@cssmenu.sub.element}">{@cssmenu.sub.element}</a>
						<ul class="level-1">
							<li>
								<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
							</li>
							<li>
								<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
							</li>
						</ul>
					</li>
					<li class="has-sub">
						<a class="cssmenu-title" href="#" title="{@cssmenu.sub.element}">{@cssmenu.sub.element}</a>
						<ul class="level-1">
							<li>
								<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
							</li>
							<li>
								<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
							</li>
						</ul>
					</li>
					<li class="has-sub">
						<a class="cssmenu-title" href="#" title="{@cssmenu.sub.element}">{@cssmenu.sub.element}</a>
						<ul class="level-1">
							<li>
								<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
							</li>
							<li>
								<a class="cssmenu-title" href="#" title="{@cssmenu.element}">{@cssmenu.element}</a>
							</li>
						</ul>
					</li>
				</ul>
			</nav> -->

		</div>
	</footer>
