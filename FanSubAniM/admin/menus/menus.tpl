<script>
<!--
var delay = 1200; //Délai après lequel le bloc est automatiquement masqué, après le départ de la souris.
var timeout;
var displayed = false;
var previous = '';
var started = false;

//Affiche le bloc.
function menu_display_block(divID)
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
function menu_hide_block(idfield, stop)
{
	if( stop && timeout )
		clearTimeout(timeout);
	else if( started )
		timeout = setTimeout('menu_display_block()', delay);
}
function minimize_container(input, containerName) 
{
	var container = document.getElementById('mod_' + containerName);
	
	if (!container)
		return;

	if(input.checked == false)
	{
		container.style.opacity = 0.5;
		container.style.filter='alpha(opacity=50)';
	}
	else
	{
		container.style.opacity = 1;
		container.style.filter='alpha(opacity=100)';
	}
}

//Drag'n drop
var menusContainerList = new Array(
	'mod_header',
	'mod_subheader',
	'mod_left',
	'mod_right',
	'mod_topcentral',
	'mod_central',
	'mod_bottomcentral',
	'mod_topfooter',
	'mod_footer'
);
function build_menu_tree() 
{
	var containerListLength = menusContainerList.length;
	for(var i = 0; i < containerListLength; i++)
	{
		var sequence = jQuery('#' + menusContainerList[i]).sortable("serialize").get();
		jQuery('<input/>').attr({
			type: 'hidden',
			name: 'menu_tree_' + menusContainerList[i],
			value: JSON.stringify(sequence[0])
		}).appendTo('#form_menus');
	}
}
function createSortableMenu() 
{
	var containerListLength = menusContainerList.length;
	for(var i = 0; i < containerListLength; i++)
	{
		jQuery('#' + menusContainerList[i]).sortable({
			handle: '.fa-arrows',
			group: 'menus',
			placeholder: '<div class="dropzone">' + ${escapejs(LangLoader::get_message('position.drop_here', 'common'))} + '</div>',
			containerSelector: '#mod_header, #mod_subheader, #mod_left, #mod_right, #mod_topcentral, #mod_central, #mod_bottomcentral, #mod_topfooter, #mod_footer',
			itemSelector: 'div.menus-block-container'
		});
	}
}
-->
</script>


<div id="admin-contents admin-contents-no-column">
	<form id="form_menus" action="menus.php?action=save" method="post" onsubmit="build_menu_tree();">
		<table style="background: #F4F4F4; width: 99%; margin: auto; padding-bottom: 25px;">
			<tr>
				<td colspan="3" style="padding: 10px;">
					<div style="float:right;">
						<strong>{L_THEME_MANAGEMENT} :</strong> 
						<select name="switchtheme" onchange="document.location = '?token={TOKEN}&amp;theme=' + this.options[this.selectedIndex].value;">
							# START themes #
								<option value="{themes.IDNAME}" {themes.SELECTED} >{themes.NAME}</option>
							# END themes #
						</select>
					</div>
				</td>
			</tr>
			<tr>
				<td id="container-header" colspan="3">
					<div class="container-block">
						<div>
							<div class="container-block-absolute" id="moveaddmenu1">
								<div onmouseover="menu_hide_block('addmenu1', 1);" onmouseout="menu_hide_block('addmenu1', 0);">
								    <p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/links.php?s=1" class="small">{L_ADD_LINKS_MENUS}</a>
									</p>
								    <p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/content.php?s=1" class="small">{L_ADD_CONTENT_MENUS}</a>
									</p>
								    <p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/feed.php?s=1" class="small">{L_ADD_FEED_MENUS}</a>
									</p>
								</div>
							</div>
							<p class="menu-block-libelle"><label><input onclick="minimize_container(this, 'header')" type="checkbox" name="header_enabled" {CHECKED_HEADER_COLUMN}> {L_HEADER}</label></p>
							<p class="menus-block-add" onclick="menu_display_block('addmenu1');" onmouseover="menu_hide_block('addmenu1', 1);" onmouseout="menu_hide_block('addmenu1', 0);">
								<i class="fa fa-plus"></i> {L_ADD_MENU}
							</p>
						</div>
					</div>
					<div id="mod_header">
						# START mod_header #
							{mod_header.MENU}
						# END mod_header #
						<div id="menu-spacer1" class="menu-spacer"></div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="container-subheader" colspan="3">
					<div class="container-block">
						<div>
							<div class="container-block-absolute" id="moveaddmenu2">
								<div onmouseover="menu_hide_block('addmenu2', 1);" onmouseout="menu_hide_block('addmenu2', 0);">
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/links.php?s=2" class="small">{L_ADD_LINKS_MENUS}</a>
									</p>
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/content.php?s=2" class="small">{L_ADD_CONTENT_MENUS}</a>
									</p>
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/feed.php?s=2" class="small">{L_ADD_FEED_MENUS}</a>
									</p>
								</div>
							</div>
							<p class="menu-block-libelle"><label><input onclick="minimize_container(this, 'subheader')" type="checkbox" name="sub_header_enabled" {CHECKED_SUB_HEADER_COLUMN}> {L_SUB_HEADER}</label></p>
							<p class="menus-block-add" onclick="menu_display_block('addmenu2');" onmouseover="menu_hide_block('addmenu2', 1);" onmouseout="menu_hide_block('addmenu2', 0);">
								<i class="fa fa-plus"></i> {L_ADD_MENU}
							</p>
						</div>
					</div>
					<div id="mod_subheader">
						# START mod_subheader #
							{mod_subheader.MENU}
						# END mod_subheader #
						<div id="menu-spacer2" class="menu-spacer"></div>
					</div>
				</td>
			</tr>
			<tr>				
				<td id="container-leftmenu">
					<div class="container-block">
						<div>
							<div class="container-block-absolute" id="moveaddmenu3">
								<div onmouseover="menu_hide_block('addmenu3', 1);" onmouseout="menu_hide_block('addmenu3', 0);">
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/links.php?s=7" class="small">{L_ADD_LINKS_MENUS}</a>
									</p>
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/content.php?s=7" class="small">{L_ADD_CONTENT_MENUS}</a>
									</p>
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/feed.php?s=7" class="small">{L_ADD_FEED_MENUS}</a>
									</p>
								</div>
							</div>
							<p class="menu-block-libelle"><label><input onclick="minimize_container(this, 'left')" type="checkbox" name="left_column_enabled" {CHECKED_LEFT_COLUMN}> {L_LEFT_MENU}</label></p>
							<p class="menus-block-add" onclick="menu_display_block('addmenu3');" onmouseover="menu_hide_block('addmenu3', 1);" onmouseout="menu_hide_block('addmenu3', 0);">
								<i class="fa fa-plus"></i> {L_ADD_MENU}
							</p>
						</div>
					</div>
					<div id="mod_left">
						<hr style="margin:10px 0px" />
						# START mod_left #
							{mod_left.MENU}
						# END mod_left #
						<div id="menu-spacer3" class="menu-spacer"></div>
					</div>
				</td>
				<td style="vertical-align:top;">
					<table style="width:100%;">
						<tr>
							<td id="container-topcentral">
								<div class="container-block">
									<div>
										<div class="container-block-absolute" id="moveaddmenu4">
											<div onmouseover="menu_hide_block('addmenu4', 1);" onmouseout="menu_hide_block('addmenu4', 0);">
												<p class="menus-block-add menus-block-add-links">
													<a href="{PATH_TO_ROOT}/admin/menus/links.php?s=3" class="small">{L_ADD_LINKS_MENUS}</a>
												</p>
												<p class="menus-block-add menus-block-add-links">
													<a href="{PATH_TO_ROOT}/admin/menus/content.php?s=3" class="small">{L_ADD_CONTENT_MENUS}</a>
												</p>
												<p class="menus-block-add menus-block-add-links">
													<a href="{PATH_TO_ROOT}/admin/menus/feed.php?s=3" class="small">{L_ADD_FEED_MENUS}</a>
												</p>
											</div>
										</div>
										<p class="menu-block-libelle"><label><input onclick="minimize_container(this, 'topcentral')" type="checkbox" name="top_central_enabled" {CHECKED_TOP_CENTRAL_COLUMN}> {L_TOP_CENTRAL_MENU}</label></p>
										<p class="menus-block-add" onclick="menu_display_block('addmenu4');" onmouseover="menu_hide_block('addmenu4', 1);" onmouseout="menu_hide_block('addmenu4', 0);">
											<i class="fa fa-plus"></i> {L_ADD_MENU}
										</p>
									</div>
								</div>
								<div id="mod_topcentral">
									# START mod_topcentral #
										{mod_topcentral.MENU}
									# END mod_topcentral #
									<div id="menu-spacer4" class="menu-spacer"></div>
								</div>
							</td>
						</tr>
						<tr>
							<td id="container-central">
								<div class="container-block">
									<div style="margin-top:5px;">
										<p class="menu-block-libelle">{L_MENUS_AVAILABLE}</p>
										<p class="menus-block-add" style="height:3px;"></p>
									</div>
								</div>
								
								<div id="mod_central">
									# START mod_central #
										{mod_central.MENU}
									# END mod_central #
									<div id="menu-spacer5" class="menu-spacer"></div>
								</div>
							</td>
						</tr>
						<tr>
							<td id="container-bottomcentral">
								<div class="container-block">
									<div>
										<div class="container-block-absolute" id="moveaddmenu5">
											<div onmouseover="menu_hide_block('addmenu5', 1);" onmouseout="menu_hide_block('addmenu5', 0);">
												<p class="menus-block-add menus-block-add-links">
													<a href="{PATH_TO_ROOT}/admin/menus/links.php?s=4" class="small">{L_ADD_LINKS_MENUS}</a>
												</p>
												<p class="menus-block-add menus-block-add-links">
													<a href="{PATH_TO_ROOT}/admin/menus/content.php?s=4" class="small">{L_ADD_CONTENT_MENUS}</a>
												</p>
												<p class="menus-block-add menus-block-add-links">
													<a href="{PATH_TO_ROOT}/admin/menus/feed.php?s=4" class="small">{L_ADD_FEED_MENUS}</a>
												</p>
											</div>
										</div>
										<p class="menu-block-libelle"><label><input onclick="minimize_container(this, 'bottomcentral')" type="checkbox" name="bottom_central_enabled" {CHECKED_BOTTOM_CENTRAL_COLUMN}> {L_BOTTOM_CENTRAL_MENU}</label></p>
										<p class="menus-block-add" onclick="menu_display_block('addmenu5');" onmouseover="menu_hide_block('addmenu5', 1);" onmouseout="menu_hide_block('addmenu5', 0);">
											<i class="fa fa-plus"></i> {L_ADD_MENU}
										</p>
									</div>
								</div>
								<div id="mod_bottomcentral">
									# START mod_bottomcentral #
										{mod_bottomcentral.MENU}
									# END mod_bottomcentral #
									<div id="menu-spacer6" class="menu-spacer"></div>
								</div>
							</td>
						<tr>
					</table>
				</td>
				<td id="container-rightmenu">
					<div class="container-block">
						<div>
							<div class="container-block-absolute" id="moveaddmenu6">
								<div onmouseover="menu_hide_block('addmenu6', 1);" onmouseout="menu_hide_block('addmenu6', 0);">
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/links.php?s=8" class="small">{L_ADD_LINKS_MENUS}</a>
									</p>
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/content.php?s=8" class="small">{L_ADD_CONTENT_MENUS}</a>
									</p>
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/feed.php?s=8" class="small">{L_ADD_FEED_MENUS}</a>
									</p>
								</div>
							</div>
							<p class="menu-block-libelle"><label><input onclick="minimize_container(this, 'right')" type="checkbox" name="right_column_enabled" {CHECKED_RIGHT_COLUMN}> {L_RIGHT_MENU}</label></p>
							<p class="menus-block-add" onclick="menu_display_block('addmenu6');" onmouseover="menu_hide_block('addmenu6', 1);" onmouseout="menu_hide_block('addmenu6', 0);">
								<i class="fa fa-plus"></i> {L_ADD_MENU}
							</p>
						</div>
					</div>
					<div id="mod_right">
						<hr style="margin:10px 0px" />
						# START mod_right #
							{mod_right.MENU}
						# END mod_right #
						<div id="menu-spacer7" class="menu-spacer"></div>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="3" id="container-topfooter">
					<div class="container-block">
						<div>
							<div class="container-block-absolute" id="moveaddmenu7">
								<div onmouseover="menu_hide_block('addmenu7', 1);" onmouseout="menu_hide_block('addmenu7', 0);">
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/links.php?s=5" class="small">{L_ADD_LINKS_MENUS}</a>
									</p>
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/content.php?s=5" class="small">{L_ADD_CONTENT_MENUS}</a>
									</p>
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/feed.php?s=5" class="small">{L_ADD_FEED_MENUS}</a>
									</p>
								</div>
							</div>
							<p class="menu-block-libelle"><label><input onclick="minimize_container(this, 'topfooter')" type="checkbox" name="top_footer_enabled" {CHECKED_TOP_FOOTER_COLUMN}> {L_TOP_FOOTER}</label></p>
							<p class="menus-block-add" onclick="menu_display_block('addmenu7');" onmouseover="menu_hide_block('addmenu7', 1);" onmouseout="menu_hide_block('addmenu7', 0);">
								<i class="fa fa-plus"></i> {L_ADD_MENU}
							</p>
						</div>
					</div>
					<div id="mod_topfooter">
						# START mod_topfooter #
							{mod_topfooter.MENU}
						# END mod_topfooter #
						<div id="menu-spacer8" class="menu-spacer"></div>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="3" id="container-footer">
					<div class="container-block">
						<div>
							<div class="container-block-absolute" id="moveaddmenu8">
								<div onmouseover="menu_hide_block('addmenu8', 1);" onmouseout="menu_hide_block('addmenu8', 0);">
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/links.php?s=6" class="small">{L_ADD_LINKS_MENUS}</a>
									</p>
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/content.php?s=6" class="small">{L_ADD_CONTENT_MENUS}</a>
									</p>
									<p class="menus-block-add menus-block-add-links">
										<a href="{PATH_TO_ROOT}/admin/menus/feed.php?s=6" class="small">{L_ADD_FEED_MENUS}</a>
									</p>
								</div>
							</div>
							<p class="menu-block-libelle"><label><input onclick="minimize_container(this, 'footer')" type="checkbox" name="footer_enabled" {CHECKED_FOOTER_COLUMN}> {L_FOOTER}</label></p>
							<p class="menus-block-add" onclick="menu_display_block('addmenu8');" onmouseover="menu_hide_block('addmenu8', 1);" onmouseout="menu_hide_block('addmenu8', 0);">
								<i class="fa fa-plus"></i> {L_ADD_MENU}
							</p>
						</div>
					</div>
					<div id="mod_footer">
						# START mod_footer #
							{mod_footer.MENU}
						# END mod_footer #
						<div id="menu-spacer9" class="menu-spacer"></div>
					</div>
				</td>
			</tr>
		</table>
		
		<script>
		<!--
		jQuery(document).ready(function() {
			createSortableMenu();
		});
		-->
		</script>
		
		<div id="valid-position-menus">
			<button type="submit" class="submit" name="valid" value="true">{L_VALID_POSTIONS}</button>
			<input type="hidden" name="theme" value="{NAME_THEME}">
			<input type="hidden" name="token" value="{TOKEN}">
		</div>
	</form>
</div>
