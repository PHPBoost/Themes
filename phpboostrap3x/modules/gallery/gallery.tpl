		<script>
		<!--
		var pics_displayed = 0;
		function display_pics(id, path)
		{
			if( pics_displayed != id )
			{
				document.getElementById('pics_max').innerHTML = '<img src="' + path + '" alt="' + path + '" />';
				pics_displayed = id;
			}
			else
			{
				document.getElementById('pics_max').innerHTML = '';
				pics_displayed = 0;
			}
		}
		function display_pics_popup(path, width, height)
		{
			width = parseInt(width);
			height = parseInt(height);
			if( height == 0 )
				height = screen.height - 150;
			if( width == 0 )
				width = screen.width - 200;
			window.open(path, '', 'width='+(width+17)+', height='+(height+17)+', location=no, status=no, toolbar=no, scrollbars=1, resizable=yes');
		}
		function display_rename_file(id, previous_name, previous_cut_name)
		{
			if( document.getElementById('fi' + id) )
			{
				document.getElementById('fi_' + id).style.display = 'none';
				document.getElementById('fi' + id).style.display = 'inline';
				document.getElementById('fi' + id).innerHTML = '<input class="form-control" type="text" name="fiinput' + id + '" id="fiinput' + id + '" value="' + previous_name.replace(/\"/g, "&quot;") + '" onblur="rename_file(\'' + id + '\', \'' + previous_cut_name.replace(/\'/g, "\\\'").replace(/\"/g, "&quot;") + '\');">';
				document.getElementById('fiinput' + id).focus();
			}
		}
		function rename_file(id_file, previous_cut_name)
		{
			var name = document.getElementById("fiinput" + id_file).value;
			var regex = /\/|\\|\||\?|<|>/;

			if( regex.test(name) ) //interdiction des caractères spéciaux dans le nom.
			{
				alert("{L_FILE_FORBIDDEN_CHARS}");
				document.getElementById('fi_' + id_file).style.display = 'inline';
				document.getElementById('fi' + id_file).style.display = 'none';
			}
			else
			{
				document.getElementById('img' + id_file).innerHTML = '<i class="fa fa-spinner fa-spin"></i>';

				data = "id_file=" + id_file + "&name=" + name.replace(/&/g, "%26") + "&previous_name=" + previous_cut_name.replace(/&/g, "%26");
				var xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/gallery/xmlhttprequest.php?token={TOKEN}&rename_pics=1');
				xhr_object.onreadystatechange = function()
				{
					if( xhr_object.readyState == 4 && xhr_object.status == 200 && xhr_object.responseText != '0' )
					{
						document.getElementById('fi' + id_file).style.display = 'none';
						document.getElementById('fi_' + id_file).style.display = 'inline';
						document.getElementById('fi_' + id_file).innerHTML = xhr_object.responseText;

						html_protected_name = name.replace(/\'/g, "\\\'").replace(/\"/g, "&quot;");
						html_protected_name2 = xhr_object.responseText.replace(/\'/g, "\\\'").replace(/\"/g, "&quot;");

						document.getElementById('fihref' + id_file).innerHTML = '<a href="javascript:display_rename_file(\'' + id_file + '\', \'' + html_protected_name + '\', \'' + html_protected_name2 + '\');" class="basic-button" title="{L_EDIT}"><i class="fa fa-edit"></i></a>';
						document.getElementById('img' + id_file).innerHTML = '';
					}
					else if( xhr_object.readyState == 4 && xhr_object.responseText == '0' )
						document.getElementById('img' + id_file).innerHTML = '';
				}
				xmlhttprequest_sender(xhr_object, data);
			}
		}
		function pics_aprob(id_file, aprob)
		{
			document.getElementById('img' + id_file).innerHTML = '<i class="fa fa-spinner fa-spin"></i>';

			data = 'id_file=' + id_file;
			var xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/gallery/xmlhttprequest.php?token={TOKEN}&aprob_pics=1');
			xhr_object.onreadystatechange = function()
			{
				if( xhr_object.readyState == 4 && xhr_object.status == 200 && xhr_object.responseText != '-1' )
				{
					var img_aprob, title_aprob;
					if( xhr_object.responseText == 0 )
					{
						img_aprob = 'fa-eye-slash';
						title_aprob = '{L_UNAPROB}';
					}
					else
					{
						img_aprob = 'fa-eye';
						title_aprob = '{L_APROB}';
					}

					document.getElementById('img' + id_file).innerHTML = '';
					if( document.getElementById('img_aprob' + id_file) )
					{
						if(document.getElementById('img_aprob' + id_file).className == "fa fa-eye-slash"){
							document.getElementById('img_aprob' + id_file).className = "fa fa-eye";
						} else {
							document.getElementById('img_aprob' + id_file).className = "fa fa-eye-slash";
						}
						document.getElementById('img_aprob' + id_file).title = '' + title_aprob;
						document.getElementById('img_aprob' + id_file).alt = '' + title_aprob;
					}
				}
				else if( xhr_object.readyState == 4 && xhr_object.responseText == '-1' )
					document.getElementById('img' + id_file).innerHTML = '';
			}
			xmlhttprequest_sender(xhr_object, data);
		}

		var delay = 2000; //Délai après lequel le bloc est automatiquement masqué après le départ de la souris.
		var timeout;
		var displayed = false;
		var previous = '';
		var started = false;

		//Affiche le bloc.
		function pics_display_block(divID)
		{
			if( timeout )
				clearTimeout(timeout);

			if( document.getElementById(previous) )
			{
				document.getElementById(previous).style.display = 'none';
				started = false
			}

			if( document.getElementById('move' + divID) )
			{
				document.getElementById('move' + divID).style.display = 'block';
				previous = 'move' + divID;
				started = true;
			}
		}
		//Cache le bloc.
		function pics_hide_block(idfield, stop)
		{
			if( stop && timeout )
				clearTimeout(timeout);
			else if( started )
				timeout = setTimeout('pics_display_block()', delay);
		}

		{ARRAY_JS}
		var start_thumb = {START_THUMB};
		//Miniatures défilantes.
		function display_thumbnails(direction)
		{
			if( direction == 'left' )
			{
				if( start_thumb > 0 )
				{
					start_thumb--;
					if( start_thumb == 0 )
						document.getElementById('display_left').innerHTML = '';
					else
						document.getElementById('display_left').innerHTML = '<a href="javascript:display_thumbnails(\'left\')"><i class="fa fa-arrow-left fa-2x"></i></a>';
					document.getElementById('display_right').innerHTML = '<a href="javascript:display_thumbnails(\'right\')"><i class="fa fa-arrow-right fa-2x"></i></a>';
				}
				else
					return;
			}
			else if( direction == 'right' )
			{
				if( start_thumb <= {MAX_START} )
				{
					start_thumb++;
					if( start_thumb == ({MAX_START} + 1) )
						document.getElementById('display_right').innerHTML = '';
					else
						document.getElementById('display_right').innerHTML = '<a href="javascript:display_thumbnails(\'right\')"><i class="fa fa-arrow-right fa-2x"></i></a>';
					document.getElementById('display_left').innerHTML = '<a href="javascript:display_thumbnails(\'left\')"><i class="fa fa-arrow-left fa-2x"></i></a>';
				}
				else
					return;
			}

			var j = 0;
			for(var i = 0; i <= {NBR_PICS}; i++)
			{
				if( document.getElementById('thumb' + i) )
				{
					var key_left = start_thumb + j;
					var key_right = start_thumb + j;
					if( direction == 'left' && array_pics[key_left] )
					{
						document.getElementById('thumb' + i).innerHTML = '<a href="' + array_pics[key_left]['link'] + '"><img src="{PATH_TO_ROOT}/gallery/pics/thumbnails/' + array_pics[key_left]['path'] + '" alt="' + array_pics[key_left]['path'] + '" /></a>';
						j++;
					}
					else if( direction == 'right' && array_pics[key_right] )
					{
						document.getElementById('thumb' + i).innerHTML = '<a href="' + array_pics[key_right]['link'] + '"><img src="{PATH_TO_ROOT}/gallery/pics/thumbnails/' + array_pics[key_right]['path'] + '" alt="' + array_pics[key_right]['path'] + '" /></a>';
						j++;
					}
				}
			}
		}
		//incrément le nombre de vues d'une image.
		var already_view = false;
		var incr_pics_displayed = 0;
		function increment_view(idpics)
		{
			if ('{DISPLAY_MODE}' == 'resize' && incr_pics_displayed == idpics)
				incr_pics_displayed = 0;
			else
			{
				if (document.getElementById('gv' + idpics))
				{
					if (already_view && ('{DISPLAY_MODE}' == 'full_screen' || '{DISPLAY_MODE}' == 'resize'))
					{
						data = '';
						var xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/gallery/xmlhttprequest.php?token={TOKEN}&id=' + idpics + '&cat={CAT_ID}&increment_view=1');
						xmlhttprequest_sender(xhr_object, data);
					}

					var views = 0;
					views = document.getElementById('gv' + idpics).innerHTML;
					views++;
					document.getElementById('gv' + idpics).innerHTML = views;
					document.getElementById('gvl' + idpics).innerHTML = (views > 1) ? "{L_VIEWS}" : "{L_VIEW}";

					already_view = true;
					incr_pics_displayed = idpics;
				}
			}
		}
		-->
		</script>

		# INCLUDE message_helper #
		<div class="clearfix"></div>

		<section id="module-gallery" class="pos-rel">
			<header>
				<nav class="dropdown actionslinks">
					<button id="gallery-module-actionslinks" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<small class="visible-xs">${LangLoader::get_message('sort_options', 'common')}</small>
						<i class="fa fa-bars"></i>
					</button>
					<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="gallery-module-actionslinks">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" title="{L_DISPLAY}">
								<span class="caret"></span> {L_DISPLAY}
							</a>
							<ul class="dropdown-menu">
								<li><a href="{U_BEST_VIEWS}"><i class="fa fa-eye"></i> {L_BEST_VIEWS}</a></li>
								# IF C_NOTATION_ENABLED #<li><a href="{U_BEST_NOTES}"><i class="fa fa-star-half-empty"></i> {L_BEST_NOTES}</a></li># ENDIF #
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" title="{L_ORDER_BY}">
								<span class="caret"></span> {L_ORDER_BY}
							</a>
							<ul class="dropdown-menu">
								<li><a href="{U_ORDER_BY_NAME}"><i class="fa fa-tag"></i> {L_NAME}</a></li>
								<li><a href="{U_ORDER_BY_DATE}"><i class="fa fa-clock-o"></i> {L_DATE}</a></li>
								<li><a href="{U_ORDER_BY_VIEWS}"><i class="fa fa-eye"></i> {L_VIEWS}</a></li>
								# IF C_NOTATION_ENABLED #
								<li><a href="{U_ORDER_BY_NOTES}"><i class="fa fa-star-half-empty"></i> {L_NOTES}</a></li>
								# ENDIF #
								# IF C_COMMENTS_ENABLED #
								<li><a href="{U_ORDER_BY_COM}"><i class="fa fa-comments-o"></i> {L_COM}</a></li># ENDIF #
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" title="{L_DIRECTION}">
								<span class="caret"></span> {L_DIRECTION}
							</a>
							<ul class="dropdown-menu">
								<li><a href="{U_ASC}"><i class="fa fa-sort-amount-asc"></i> {L_ASC}</a></li>
								<li><a href="{U_DESC}"><i class="fa fa-sort-amount-desc"></i> {L_DESC}</a></li>
							</ul>
						</li>
					</ul>
				</nav>

				<h1>
					<div class="pull-right text-right mr-btn">
						<div class="btn-group btn-group-xs">
							# IF IS_ADMIN #<a class="btn btn-info" href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a># ENDIF #
							<a href="${relative_url(SyndicationUrlBuilder::rss('gallery', CAT_ID))}" class="btn btn-warning" title="${LangLoader::get_message('syndication', 'common')}">
								<i class="fa fa-syndication"></i>
							</a>
						</div>
					</div>
					{GALLERY}
				</h1>

				# IF C_CATEGORY_DESCRIPTION #
					<div class="mb15">
						{CATEGORY_DESCRIPTION}
					</div>
				# ENDIF #
			</header>

			# IF C_SUB_CATEGORIES #
			<div class="row grid-columns">
				# START sub_categories_list #
				<div class="col-sm-4 text-center mb15">
					# IF sub_categories_list.C_CATEGORY_IMAGE #<a itemprop="about" href="{sub_categories_list.U_CATEGORY}"><img itemprop="thumbnailUrl" src="{sub_categories_list.CATEGORY_IMAGE}" alt="{sub_categories_list.CATEGORY_NAME}" /></a># ENDIF #
					<div class="caption">
						<a itemprop="about" href="{sub_categories_list.U_CATEGORY}"><p>{sub_categories_list.CATEGORY_NAME}</p></a>
						<small>{sub_categories_list.PICTURES_NUMBER}</small>
					</div>
				</div>
				# END sub_categories_list #
			</div>
			# IF C_SUBCATEGORIES_PAGINATION #<span class="center"># INCLUDE SUBCATEGORIES_PAGINATION #</span># ENDIF #
			# ELSE #
				<div class="clearfix"></div>
			# ENDIF #

			<div class="row">
				# IF C_GALLERY_PICS #
				<article class="col-sm-12" id="article-gallery-{ID}">
					<header>
						<h2>${LangLoader::get_message('image', 'main')}</h2>
					</header>
					<p class="col-sm-12 text-center" id="pics_max"></p>
					# IF C_GALLERY_PICS_MAX #
						<p class="pics-max"><a href="{U_IMG_MAX}" data-lightbox="formatter"><img src="{U_IMG_MAX}" title="{NAME}" alt="" /></a></p>
						<nav>
							<ul class="pager">
								<li class="previous"><a href="{U_PREVIOUS}#pics_max" title =""><i class="fa fa-arrow-left"></i> ${LangLoader::get_message('previous', 'main')}</a></li>
								<li class="next"><a href="{U_NEXT}#pics_max" title="">${LangLoader::get_message('next', 'main')} <i class="fa fa-arrow-right"></i></a></li>
							</ul>
						</nav>
						<div class="panel panel-default">
							<div class="panel-heading">{L_INFORMATIONS}</div>
							<ul class="list-group">
							# IF C_TITLE_ENABLED #
								<li class="list-group-item">{L_NAME} : <strong>{NAME}</strong></li>
							# ENDIF #
							# IF C_AUTHOR_DISPLAYED #
								<li class="list-group-item">{L_POSTOR} : <strong># IF C_POSTOR_EXIST #<a class="small {POSTOR_LEVEL_CLASS}"# IF C_POSTOR_GROUP_COLOR # style="color:{POSTOR_GROUP_COLOR}"# ENDIF # href="{U_POSTOR_PROFILE}">{POSTOR}</a># ELSE #${LangLoader::get_message('guest', 'main')}# ENDIF #</strong></li>

							# ENDIF #
							# IF C_VIEWS_COUNTER_ENABLED #
								<li class="list-group-item">{L_VIEWS} : <strong>{VIEWS}</strong></li>
							# ENDIF #
								<li class="list-group-item">{L_ADD_ON} : <strong>{DATE}</strong></li>
								<li class="list-group-item">{L_DIMENSION} : <strong>{DIMENSION}</strong></li>
								<li class="list-group-item">{L_SIZE} : <strong>{SIZE} {L_KB}</strong></li>
							# IF C_COMMENTS_ENABLED #
								<li class="list-group-item"><a href="{U_COMMENTS}">{L_COMMENTS}</a></li>
							# ENDIF #
							# IF C_NOTATION_ENABLED #
								<li class="list-group-item">{KERNEL_NOTATION}</li>
							# ENDIF #
							# IF C_GALLERY_PICS_MODO #
								<li class="list-group-item">
									<div class="btn-group btn-group-xs">
										<span id="fihref{ID}" class="btn btn-info"><a href="javascript:display_rename_file('{ID}', '{RENAME}', '{RENAME_CUT}');" title="{L_EDIT}"><i class="fa fa-edit"></i></a></span>
										<a href="{U_DEL}" title="{L_DELETE}" class="btn btn-danger" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
										<div id="move{ID}" class="move-pics-container">
											<div class="bbcode-block move-pics-block" onmouseover="pics_hide_block({ID}, 1);" onmouseout="pics_hide_block({ID}, 0);">
												<div>{L_MOVETO} :</div>
												<select class="valign-middle" name="{ID}cat" onchange="document.location = '{U_MOVE}">
													{CAT}
												</select>
											</div>
										</div>
										<a href="javascript:pics_display_block({ID});" onmouseover="pics_hide_block({ID}, 1);" onmouseout="pics_hide_block({ID}, 0);" class="btn btn-primary" title="{L_MOVETO}"><i class="fa fa-move"></i></a>
										<span class="btn btn-warning">
											<a href="javascript:pics_aprob({ID});" class="basic-button" title="{L_APROB_IMG}"><i id="img_aprob{ID}" class="{IMG_APROB}"></i></a>
										</span>
									</div>
									<span id="img{ID}"></span>
								</li>
							# ENDIF #
						</ul>
						</div>

						<table class="table mtb15">
							<thead>
								<tr>
									<th colspan="{COLSPAN}">
										{L_THUMBNAILS}
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<span id="display_left"># IF C_LEFT_THUMBNAILS #<a href="javascript:display_thumbnails('left')"><i class="fa fa-arrow-left fa-2x"></i></a># ENDIF #</span>
									</td>

									# START list_preview_pics #
										<td style="max-height:{list_preview_pics.HEIGHT}px"><span id="thumb{list_preview_pics.ID}"><a href="{list_preview_pics.URL}" title="{list_preview_pics.NAME}"><img src="pics/thumbnails/{list_preview_pics.PATH}" alt="{list_preview_pics.NAME}" /></a></span></td>
									# END list_preview_pics #

									<td>
										<span id="display_right"># IF C_RIGHT_THUMBNAILS #<a href="javascript:display_thumbnails('right')"><i class="fa fa-arrow-right fa-2x"></i></a># ENDIF #</span>
									</td>
								</tr>
							</tbody>
						</table>
						{COMMENTS}
					# ENDIF #

					<div class="row grid-columns">
						# START pics_list #
						<div class="col-sm-4# IF pics_list.C_NEW_CONTENT # new-content# ENDIF #">
							<div class="thumbnail">
								<div id="pics{pics_list.ID}" class="pos-rel">
									<a class="small" href="{pics_list.U_DISPLAY}" title="{pics_list.NAME}" onclick="{pics_list.ONCLICK}" # IF NOT pics_list.ONCLICK # data-lightbox="formatter"# ENDIF #><img src="{pics_list.U_PICTURE}" alt="" class="gallery-img" /></a>
								</div>

								<div class="caption">
									# IF C_PICTURE_NAME_DISPLAYED #
									<p>
										<a href="{pics_list.U_PICTURE_LINK}">
											<span id="fi_{pics_list.ID}">{pics_list.NAME}</span>
										</a>
									</p>
									# ELSE #
									<p>
										<span id="fi_{pics_list.ID}"></span>
									</p>
									# ENDIF #
									<p>
										<span id="fi{pics_list.ID}"></span>
									</p>
									# IF C_AUTHOR_DISPLAYED #
									<p>
										{pics_list.POSTOR}
									</p>
									# ENDIF #
									# IF C_VIEWS_COUNTER_ENABLED #
									<p>
										<span id="gv{pics_list.ID}">{pics_list.VIEWS}</span> <span id="gvl{pics_list.ID}">{pics_list.L_VIEWS}</span>
									</p>
									# ENDIF #
									# IF C_COMMENTS_ENABLED #
									<p>
										<a href="{pics_list.U_COMMENTS}">{pics_list.L_COMMENTS}</a>
									</p>
									# ENDIF #
									# IF C_NOTATION_ENABLED #
									<p>
										{pics_list.KERNEL_NOTATION}
									</p>
									# ENDIF #
									<div class="btn-group btn-group-xs">
										# IF C_GALLERY_MODO #
										<span id="fihref{pics_list.ID}" class="btn btn-info">
											<a href="javascript:display_rename_file('{pics_list.ID}', '{pics_list.RENAME}', '{pics_list.RENAME_CUT}');" title="{L_EDIT}">
												<i class="fa fa-edit"></i>
											</a>
										</span>
										<a href="{pics_list.U_DEL}" title="{L_DELETE}" class="btn btn-danger" data-confirmation="delete-element">
											<i class="fa fa-delete"></i>
										</a>
										<div id="move{pics_list.ID}" class="move-pics-container">
											<div class="bbcode-block move-pics-block" onmouseover="pics_hide_block({pics_list.ID}, 1);" onmouseout="pics_hide_block({pics_list.ID}, 0);">
												<div>{L_MOVETO} :</div>
												<select class="valign-middle" name="{pics_list.ID}cat" onchange="document.location = '{pics_list.U_MOVE}">
													{pics_list.CAT}
												</select>
											</div>
										</div>
										<a href="javascript:pics_display_block({pics_list.ID});" onmouseover="pics_hide_block({pics_list.ID}, 1);" onmouseout="pics_hide_block({pics_list.ID}, 0);" class="btn btn-primary" title="{L_MOVETO}">
											<i class="fa fa-move"></i>
										</a>
										<span class="btn btn-warning">
											<a id="img_aprob{pics_list.ID}" href="javascript:pics_aprob({pics_list.ID});" class="# IF pics_list.C_IMG_APROB #fa fa-eye-slash# ELSE #fa fa-eye# ENDIF #" title="{pics_list.L_APROB_IMG}"></a>
										</span>
										&nbsp;<span id="img{ID}"></span>
										# ENDIF #
										<span id="img{pics_list.ID}"></span>
									</div>
								</div>
							</div>
						</div>
						# END pics_list #

					<footer>
					# IF C_PAGINATION #
					<p class="text-center">
						# INCLUDE PAGINATION #
					</p>
					# ENDIF #
				</footer>
				</article>

				# ENDIF #


				<p class="text-center">{L_TOTAL_IMG}</p>
			</div>
			<footer>
			</footer>
		</section>
