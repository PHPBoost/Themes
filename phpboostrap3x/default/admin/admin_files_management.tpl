		<script>
		<!--
		function popup_upload(path, width, height, scrollbars)
		{
			if( height == '0' )
				height = screen.height - 150;
			if( width == '0' )
				width = screen.width - 200;
			window.open(path, "", "width="+width+", height="+height+ ",location=no,status=no,toolbar=no,scrollbars=" + scrollbars + ",resizable=yes");
		}
		var hide_folder = false;
		var empty_folder = 0;

		function display_new_folder()
		{
			if( document.getElementById('empty-folder') )
				document.getElementById('empty-folder').style.display = 'none';

			if ( typeof this.divid == 'undefined' )
				this.divid = 0;
			else
				this.divid++;

			if( !hide_folder )
			{
				document.getElementById('new-folder').innerHTML += '<div class="col-sm-3" id="new-folder' + divid + '"><div class="panel panel-danger"><div class="panel-heading"><input class="form-control" type="text" name="folder-name" id="folder-name" value="" onblur="add_folder(\'{FOLDER_ID}\', \'{USER_ID}\', ' + divid + ');"></div><div class="panel-body text-center"><i class="fa fa-folder fa-2x"></i></div></div></div>';
				document.getElementById('folder-name').focus();
			}
			else
			{
				document.getElementById('new-folder' + (divid - 1)).style.display = 'block';
				document.getElementById('new-folder' + (divid - 1)).innerHTML = '<div class="col-sm-3" id="new-folder' + divid + '"><div class="panel panel-default"><div class="panel-heading"><input class="form-control" type="text" name="folder_name" id="folder_name" value="" onblur="add_folder(\'{FOLDER_ID}\', \'{USER_ID}\', ' + (divid - 1) + ');"></div><div class="panel-body text-center"><i class="fa fa-folder fa-2x"></i></div></div></div>';
				document.getElementById('folder-name').focus();
				this.divid--;
				hide_folder = false;
			}
		}
		function display_rename_folder(id, previous_name, previous_cut_name)
		{
			if( document.getElementById('f' + id) )
			{
				document.getElementById('f' + id).innerHTML = '<input class="form-control" type="text" name="finput' + id + '" id="finput' + id + '" value="' + previous_name + '" onblur="rename_folder(\'' + id + '\', \'' + previous_name.replace(/\'/g, "\\\'") + '\', \'' + previous_cut_name.replace(/\'/g, "\\\'") + '\');">';
				document.getElementById('finput' + id).focus();
			}
		}
		function rename_folder(id_folder, previous_name, previous_cut_name)
		{
			var name = document.getElementById("finput" + id_folder).value;
			var regex = /\/|\.|\\|\||\?|<|>|\"/;

			document.getElementById('img' + id_folder).innerHTML = '<i class="fa fa-spinner fa-spin"></i>';
			if( name != '' && regex.test(name) ) //interdiction des caract�res sp�ciaux dans le nom.
			{
				alert("{L_FOLDER_FORBIDDEN_CHARS}");
				document.getElementById('f' + id_folder).innerHTML = '<a class="com" href="admin_files.php?f=' + id_folder + '">' + previous_cut_name + '</a>';
				document.getElementById('img' + id_folder).innerHTML = '';
			}
			else if( name != '' )
			{
				data = "id_folder=" + id_folder + "&name=" + name + "&previous_name=" + previous_name + "&user_id=" + {USER_ID};
				var xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/kernel/framework/ajax/uploads_xmlhttprequest.php?token={TOKEN}&rename_folder=1');
				xhr_object.onreadystatechange = function()
				{
					if( xhr_object.readyState == 4 && xhr_object.status == 200 )
					{
						if( xhr_object.responseText != "" )
						{
							document.getElementById('f' + id_folder).innerHTML = '<a class="com" href="admin_files.php?f=' + id_folder + '">' + name + '</a>';
							document.getElementById('fhref' + id_folder).innerHTML = '<a href="javascript:display_rename_folder(\'' + id_folder + '\', \'' + xhr_object.responseText.replace(/\'/g, "\\\'") + '\', \'' + name.replace(/\'/g, "\\\'") + '\');" class="fa fa-edit"></a>';
						}
						else
						{
							alert("{L_FOLDER_ALREADY_EXIST}");
							document.getElementById('f' + id_folder).innerHTML = '<a class="com" href="admin_files.php?f=' + id_folder + '">' + previous_cut_name + '</a>';
						}
						document.getElementById('img' + id_folder).innerHTML = '';
					}
				}
				xmlhttprequest_sender(xhr_object, data);
			}
		}
		function add_folder(id_parent, user_id, divid)
		{
			var name = document.getElementById("folder-name").value;
			var regex = /\/|\.|\\|\||\?|<|>|\"/;

			if( name != '' && regex.test(name) ) //interdiction des caract�res sp�ciaux dans la nom.
			{
				alert("{L_FOLDER_FORBIDDEN_CHARS}");
				document.getElementById('new-folder' + divid).innerHTML = '';
				document.getElementById('new-folder' + divid).style.display = 'none';
				hide_folder = true;
				if( document.getElementById('empty-folder') && empty_folder == 0 )
					document.getElementById('empty-folder').style.display = 'block';
			}
			else if( name != '' )
			{
				data = "name=" + name + "&user_id=" + user_id + "&id_parent=" + id_parent;
				var xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/kernel/framework/ajax/uploads_xmlhttprequest.php?token={TOKEN}&new_folder=1');
				xhr_object.onreadystatechange = function()
				{
					if( xhr_object.readyState == 4 && xhr_object.status == 200 )
					{
						if( xhr_object.responseText > 0 )
						{
							document.getElementById('new-folder' + divid).innerHTML = '<div class="panel panel-pbt"><div class="panel-heading form-group"> <span id="f' + xhr_object.responseText + '"><a href="admin_files.php?f=' + xhr_object.responseText + '" class="com">' + name + '</a></span></div><div class="panel-body text-center"><a href="admin_files.php?f=' + xhr_object.responseText + '"><i class="fa fa-folder fa-2x"></i></a></div><ul class="list-group"><li class="list-group-item"><span id="fhref' + xhr_object.responseText + '"><span id="fihref' + xhr_object.responseText + '"><a href="javascript:display_rename_folder(\'' + xhr_object.responseText + '\', \'' + name.replace(/\'/g, "\\\'") + '\', \'' + name.replace(/\'/g, "\\\'") + '\');" class="fa fa-edit"></a></span></span> <a href="admin_files.php?delf=' + xhr_object.responseText + '&amp;f={FOLDER_ID}" class="fa fa-delete" data-confirmation="delete-element"></a> <a href="admin_files.php?movefd=' + xhr_object.responseText + '&amp;f={FOLDER_ID}&amp;fm=' + user_id + '" title="{L_MOVETO}" class="fa fa-move"></a> <span id="img' + xhr_object.responseText + '"></span></li></ul></div>';
							var total_folder = document.getElementById('total-folder').innerHTML;
							total_folder++;
							document.getElementById('total-folder').innerHTML = total_folder;

							empty_folder++;
						}
						else
						{
							alert("{L_FOLDER_ALREADY_EXIST}");
							document.getElementById('new-folder' + divid).innerHTML = '';
							document.getElementById('new-folder' + divid).style.display = 'none';
							hide_folder = true;
						}
					}
				}
				xmlhttprequest_sender(xhr_object, data);
			}
			else
			{
				if( document.getElementById('empty-folder') && empty_folder == 0 )
					document.getElementById('empty-folder').style.display = 'block';
				document.getElementById('new-folder' + divid).innerHTML = '';
				document.getElementById('new-folder' + divid).style.display = 'none';
				hide_folder = true;
			}
		}
		function display_rename_file(id, previous_name, previous_cut_name)
		{
			if( document.getElementById('fi' + id) )
			{
				document.getElementById('fi1' + id).style.display = 'none';
				document.getElementById('fi' + id).style.display = 'inline';
				document.getElementById('fi' + id).innerHTML = '<input class="form-control" type="text" name="fiinput' + id + '" id="fiinput' + id + '" value="' + previous_name + '" onblur="rename_file(\'' + id + '\', \'' + previous_name.replace(/\'/g, "\\\'") + '\', \'' + previous_cut_name.replace(/\'/g, "\\\'") + '\');">';
				document.getElementById('fiinput' + id).focus();
			}
		}
		function rename_file(id_file, previous_name, previous_cut_name)
		{
			var name = document.getElementById("fiinput" + id_file).value;
			var regex = /\/|\\|\||\?|<|>|\"/;

			document.getElementById('imgf' + id_file).innerHTML = '<i class="fa fa-spinner fa-spin"></i>';
			if( name != '' && regex.test(name) ) //interdiction des caract�res sp�ciaux dans la nom.
			{
				alert("{L_FOLDER_FORBIDDEN_CHARS}");
				document.getElementById('fi1' + id_file).style.display = 'inline';
				document.getElementById('fi' + id_file).style.display = 'none';
				document.getElementById('imgf' + id_file).innerHTML = '';
			}
			else if( name != '' )
			{
				data = "id_file=" + id_file + "&name=" + name + "&previous_name=" + previous_cut_name + "&user_id=" + {USER_ID};
				var xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/kernel/framework/ajax/uploads_xmlhttprequest.php?token={TOKEN}&rename_file=1');
				xhr_object.onreadystatechange = function()
				{
					if( xhr_object.readyState == 4 && xhr_object.status == 200 && xhr_object.responseText != '' )
					{
						if( xhr_object.responseText == '/' )
						{
							alert("{L_FOLDER_ALREADY_EXIST}");
							document.getElementById('fi1' + id_file).style.display = 'inline';
							document.getElementById('fi' + id_file).style.display = 'none';
						}
						else
						{
							document.getElementById('fi' + id_file).style.display = 'none';
							document.getElementById('fi1' + id_file).style.display = 'inline';
							document.getElementById('fi1' + id_file).innerHTML = xhr_object.responseText;
							document.getElementById('fihref' + id_file).innerHTML = '<a href="javascript:display_rename_file(\'' + id_file + '\', \'' + name.replace(/\'/g, "\\\'") + '\', \'' + previous_name.replace(/\'/g, "\\\'") + '\', \'' + xhr_object.responseText.replace(/\'/g, "\\\'") + '\');" class="fa fa-edit"></a>';
						}
						document.getElementById('imgf' + id_file).innerHTML = '';
					}
					else if( xhr_object.readyState == 4 && xhr_object.responseText == '' )
					{
						document.getElementById('fi' + id_file).style.display = 'none';
						document.getElementById('fi1' + id_file).style.display = 'inline';
						document.getElementById('fihref' + id_file).innerHTML = '<a href="javascript:display_rename_file(\'' + id_file + '\', \'' + previous_name.replace(/\'/g, "\\\'") + '\', \'' + previous_cut_name.replace(/\'/g, "\\\'") + '\');" class="fa fa-edit"></a>';
						document.getElementById('imgf' + id_file).innerHTML = '';
					}
				}
				xmlhttprequest_sender(xhr_object, data);
			}
		}

		var delay = 300; //D�lai apr�s lequel le bloc est automatiquement masqu�, apr�s le d�part de la souris.
		var timeout;
		var displayed = false;
		//Affiche le bloc.
		function upload_display_block(divID)
		{
			var i;

			if( timeout )
				clearTimeout(timeout);

			var block = document.getElementById('move' + divID);
			if( block.style.display == 'none' )
			{
				block.style.display = 'block';
				displayed = true;
			}
			else
			{
				block.style.display = 'none';
				displayed = false;
			}
		}
		//Cache le bloc.
		function upload_hide_block(idfield, stop)
		{
			if( stop && timeout )
			{
				clearTimeout(timeout);
			}
			else if( displayed )
			{
				clearTimeout(timeout);
				timeout = setTimeout('upload_display_block(\'' + idfield + '\')', delay);
			}
		}
		-->
		</script>

		<nav id="admin-quick-menu">
			<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_FILES_MANAGEMENT}">
				<i class="fa fa-bars"></i> {L_FILES_MANAGEMENT}
			</a>
			<ul>
				<li>
					<a href="admin_files.php" class="quick-link">{L_FILES_MANAGEMENT}</a>
				</li>
				<li>
					<a href="${relative_url(AdminFilesUrlBuilder::configuration())}" class="quick-link">{L_CONFIG_FILES}</a>
				</li>
			</ul>
		</nav>

		<div id="admin-contents">

			<div id="new-file">
				# INCLUDE message_helper #
				<form class="form-group" action="admin_files.php?f={FOLDER_ID}&amp;fm={USER_ID}&amp;token={TOKEN}" enctype="multipart/form-data" method="post">
					<fieldset>
						<legend>{L_ADD_FILES}</legend>
						<div class="row">
								<div class="col-sm-8">
									<input type="file" name="upload_file" id="upload-file">
									<input type="hidden" name="max_file_size" value="2000000">
								</div>
								<div class="col-sm-4 text-right">
									<button type="submit" class="btn btn-primary" name="valid_up" value="true">{L_UPLOAD}</button>
									<input type="hidden" name="token" value="{TOKEN}">
								</div>
						</div>
					</fieldset>
				</form>
			</div>


			<div class="well well-sm">
				<a href="admin_files.php"><i class="fa fa-home"></i> {L_ROOT}</a>{URL}
			</div>

			<div class="btn-group btn-group-sm">
				<a class="btn btn-info" href="admin_files.php?fup={FOLDER_ID}{FOLDERM_ID}">
					<i class="fa fa-level-up"></i> {L_FOLDER_UP}
				</a>
				<a class="btn btn-pbt" href="javascript:display_new_folder();">
					<i class="fa fa-plus"></i> {L_FOLDER_NEW}
				</a>
				<a class="btn btn-primary" href="javascript:document.getElementById('upload-file').click();">
					<i class="fa fa-save"></i> {L_ADD_FILES}
				</a>
			</div>

			<fieldset class="upload-elements-container">
				<legend>{L_FOLDER_CONTENT}</legend>
				<div class="fieldset-inset">
					# IF C_EMPTY_FOLDER #
						<div id="empty-folder" class="alert alert-notice">{L_EMPTY_FOLDER}</div>
						<span id="new-folder"></span>
					# ELSE #
						<div class="row grid-columns">
							# START folder #
								<div class="col-sm-3">
									<div class="panel panel-pbt">
										<div class="panel-heading form-group">
											<span id="f{folder.ID}"><a href="admin_files.php{folder.U_FOLDER}" class="com">{folder.NAME}</a></span>
										</div>
										<div class="panel-body text-center">
											<a href="admin_files.php{folder.U_FOLDER}"><i class="fa # IF folder.C_MEMBER_FOLDER #fa-users# ELSE #fa-folder# ENDIF # fa-2x"></i></a>
										</div>
										<ul class="list-group">
											<li class="list-group-item">
												<div class="btn-group btn-group-xs">
													<span class="btn btn-info">{folder.RENAME_FOLDER}</span>
													# IF NOT folder.C_MEMBERS_FOLDER #<a class="btn btn-danger" href="admin_files.php?{folder.DEL_TYPE}={folder.ID}&amp;f={FOLDER_ID}&amp;token={TOKEN}{FOLDERM_ID}" title="{folder.L_TYPE_DEL_FOLDER}" data-confirmation="# IF folder.C_MEMBER_FOLDER #{L_CONFIRM_EMPTY_FOLDER}# ELSE #delete-element# ENDIF #"><i class="fa fa-delete"></i></a># ENDIF #
													# IF folder.C_TYPEFOLDER #<a class="btn btn-info" href="admin_files{folder.U_MOVE}" title="{L_MOVETO}"><i class="fa fa-move"></i></a># ENDIF #
												</div>
												<span id="img{folder.ID}"></span>
											</li>
										</ul>
									</div>
								</div>
							# END folder #
							<span id="new-folder"></span>

							# START files #
							<div class="col-sm-3">
								<div class="panel # IF files.C_RECENT_FILE #panel-danger# ELSE #panel-default# ENDIF #">
									<div class="panel-heading">
										<div class="upload-element-name" id="fi1{files.ID}">{files.NAME}</div>
										<span id="fi{files.ID}"></span>
									</div>
									# IF files.C_IMG #
									<div class="panel-body upload-file-picture">
										<a href="{files.URL}" data-lightbox="formatter" data-rel="lightcase:collection" title="{files.TITLE}" class="# IF files.C_RECENT_FILE #upload-recent-file# END IF #">
											<div class="upload-element-picture" style="background-image: url({files.URL})"></div>
										</a>
									</div>
									# ELSE #
									<div class="panel-body text-center">
										<a class="# IF files.C_RECENT_FILE #upload-recent-file# END IF #" href="{files.URL}" title="{files.TITLE}"{files.LIGHTBOX}>
											<div class="upload-element-icon"><i class="fa {files.IMG}"></i></div>
										</a>
									</div>
									# ENDIF #
									<ul class="list-group">
										<li class="list-group-item">{files.BBCODE}</li>
										<li class="list-group-item">
											<div class="btn-group btn-group-xs">
												<spa class="btn btn-info">{files.RENAME_FILE}</spa>
												<a href="admin_files.php?del={files.ID}&amp;f={FOLDER_ID}&amp;token={TOKEN}{POPUP}" title="{L_DELETE}" class="btn btn-danger" data-confirmation="delete-element">
													<i class="fa fa-delete"></i>
												</a>
												<a href="admin_files{files.U_MOVE}" title="{L_MOVETO}" class="btn btn-info">
													<i class="fa fa-move"></i>
												</a>
											</div>
											<span id="imgf{files.ID}"></span>
										</li>
										<li class="list-group-item">{files.FILETYPE}</li>
										<li class="list-group-item">{files.SIZE}</li>
									</ul>
								</div>
							</div>
							# END files #
						</div>

					# ENDIF #
				</div>
				<ul class="list-group pull-right">
					<li class="list-group-item">{L_FOLDERS} : <strong><span id="total-folder">{TOTAL_FOLDERS}</span></strong></li>
					<li class="list-group-item">{L_FILES} : <strong>{TOTAL_FILES}</strong></li>
					<li class="list-group-item">{L_FOLDER_SIZE} : <strong>{TOTAL_FOLDER_SIZE}</strong></li>
					<li class="list-group-item">{L_DATA} : <strong>{TOTAL_SIZE}</strong></li>
				</ul>
			</fieldset>
		</div>
