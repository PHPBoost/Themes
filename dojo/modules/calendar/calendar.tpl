		{JAVA}


		# IF C_CALENDAR_DISPLAY #
		
		<div class="module_actions">
			{ADMIN_CALENDAR}
			{ADD}
		</div>
		<div class="spacer"></div>

		<form action="{PATH_TO_ROOT}/calendar/calendar.php?token={TOKEN}" method="get">
			<div class="module_position">					
				<div class="module_top_l"></div>		
				<div class="module_top_r"></div>
				<div class="module_top">
					<div class="module_top_title">
						<strong>{L_CALENDAR}</strong>
					</div>
				</div>
				<div class="module_contents" style="text-align:center;">	
					<select name="m">
						# START month #
						{month.MONTH}
						# END month #	
					</select>
					&nbsp;
					<select class="nav" name="y">
					# START year #
						{year.YEAR}
					# END year #
					</select>	
					<input type="hidden" name="d" value="1" />
					&nbsp;
					<input type="submit" name="date" value="{L_SUBMIT}" class="submit" />	
					
					<br /><br />
					<span id="act"></span>
					
					
					<div class="calendar_container">
						<div class="calendar_top_l">
							<a href="{PATH_TO_ROOT}/calendar/calendar{U_PREVIOUS}" title="">&laquo;</a>
						</div>		
						<div class="calendar_top_r">
							<a href="{PATH_TO_ROOT}/calendar/calendar{U_NEXT}" title="">&raquo;</a>
						</div>
						<div class="calendar_top">
							{DATE} 
						</div>
						
						<div class="calendar_containt">
							<table class="module_table calendar_table">
								<tr>
									# START day #
									{day.L_DAY}
									# END day #
								</tr>
								<tr class="tr_row">
									# START calendar #
									{calendar.DAY}
									{calendar.TR}
									# END calendar #
								</tr>
								<tr>
									<td></td>
									<td class="c_row_last" colspan="7"></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				
				<div class="module_bottom_l"></div>		
				<div class="module_bottom_r"></div>
				<div class="module_bottom"></div>
			</div>
		</form>
		
		# IF C_ERROR_HANDLER #
		<span id="errorh"></span>
		<div class="{ERRORH_CLASS}" style="width:500px;margin:auto;padding:15px;">
			<img src="{PATH_TO_ROOT}/templates/{THEME}/images/{ERRORH_IMG}.png" alt="" style="float:left;padding-right:6px;" /> {L_ERRORH}
			<br />	
		</div>
		<br />		
		# ENDIF #
		

		<div class="event_container">
			<div class="event_top_title">
				<strong>{U_PREVIOUS_EVENT} &nbsp {L_EVENTS} &nbsp {U_NEXT_EVENT}</strong>
			</div>
			<div class="event_date">{DATE2}</div>

			
			
			# IF C_ACTION #
				# START action #
				
				
				<div class="module_position">					
					<div class="module_top_l"></div>		
					<div class="module_top_r"></div>
					<div class="module_top">
						<span class="text_strong" style="float:left;">{action.TITLE}</span>
						<span style="float:right; margin-right:5px;">{action.COM}{action.EDIT}{action.DEL}</span>
					</div>
					<div class="module_contents">
						{action.CONTENTS}
						<br /><br /><br />
					</div>
					<div class="module_bottom_l"></div>		
					<div class="module_bottom_r"></div>
					<div class="module_bottom">
						<div style="float:left;padding-top:4px;padding-bottom:4px;">
							{action.LOGIN}
						</div>				
						<div class="text_small" style="padding:4px;text-align: right;">
							{L_ON}:&nbsp;&nbsp;{action.DATE}
						</div>
					</div>
				</div>
				<br /><br />
		
				{COMMENTS}
				
				# END action #
			# ELSE #
			
				# START action #
				<div class="module_position">
					<div class="module_contents">
						{action.CONTENTS}
						<br /><br /><br />
					</div>
				</div>
				# END action #
				
			# ENDIF #
			
			
		</div>
		# ENDIF #

		# IF C_CALENDAR_FORM #
		<script type="text/javascript">
		<!--
		function check_form_cl(){
			# IF C_BBCODE_TINYMCE_MODE #
			tinyMCE.triggerSave();
			# ENDIF #	

			if(document.getElementById('title').value == "") {
				alert("{L_REQUIRE_TITLE}");
				return false;
			}
			if(document.getElementById('contents').value == "") {
				alert("{L_REQUIRE_TEXT}");
				return false;
			}
			return true;
		}

		-->
		</script>

		<script type="text/javascript" src="{PATH_TO_ROOT}/kernel/lib/js/phpboost/calendar.js"></script>
		# IF C_ERROR_HANDLER #
		<span id="errorh"></span>
		<div class="{ERRORH_CLASS}" style="width:500px;margin:auto;padding:15px;">
			<img src="{PATH_TO_ROOT}/templates/{THEME}/images/{ERRORH_IMG}.png" alt="" style="float:left;padding-right:6px;" /> {L_ERRORH}
			<br />	
		</div>
		# ENDIF #
		<div class="module_position" style="min-height:460px; margin-top:-20px; padding-top:10px;">
		<form action="{PATH_TO_ROOT}/calendar/calendar.php{UPDATE}" method="post" onsubmit="return check_form_cl();" class="fieldset_content" style="max-width:700px">
			<fieldset>
				<legend>{L_EDIT_EVENT}</legend>
				<dl class="overflow_visible">
					<dt><label for="date">* {L_DATE_CALENDAR}</label></dt>
					<dd><label>
						{L_ON}&nbsp;
						<label><input type="text" size="8" maxlength="8" id="date" name="date" value="{DATE}" class="text" /></label> 
						
						<div style="position:relative;z-index:100;top:220px;left:90px;float:left;display:none;" id="calendar1">
							<div id="cl_date" class="calendar_block" onmouseover="hide_calendar(1, 1);" onmouseout="hide_calendar(1, 0);">							
							</div>
						</div>
						<a onclick="xmlhttprequest_calendar('cl_date', '?input_field=date&amp;field=cl_date&amp;d={DAY_DATE}&amp;m={MONTH_DATE}&amp;y={YEAR_DATE}');display_calendar(1);" onmouseover="hide_calendar(1, 1);" onmouseout="hide_calendar(1, 0);" style="cursor:pointer;"><img class="valign_middle" src="{PATH_TO_ROOT}/templates/{THEME}/images/calendar.png" alt="" /></a>
					
						{L_AT}
						<label><input type="text" size="2" maxlength="2" name="hour" value="{HOUR}" class="text" /></label> H <label><input type="text" size="2" maxlength="2" name="min" value="{MIN}" class="text" /></label>
					</dd>
				</dl>
				<dl>
					<dt><label for="title">* {L_TITLE}</label></dt>
					<dd><label><input type="text" maxlength="50" size="50" maxlength="150" id="title" name="title" value="{TITLE}" class="text" /></label></dd>
				</dl>
				<br />
				<label for="contents">* {L_ACTION}</label>
				{KERNEL_EDITOR}
				<label><textarea rows="10" cols="60" id="contents" name="contents">{CONTENTS}</textarea> </label>
			</fieldset>	
			
			<fieldset class="fieldset_submit">
				<legend>{L_SUBMIT}</legend>
				<input type="submit" name="valid" value="{L_SUBMIT}" class="submit" />
				&nbsp;&nbsp; 
				<input type="reset" value="{L_RESET}" class="reset" />
			</fieldset>
		</form>
        </div>

		# ENDIF #
