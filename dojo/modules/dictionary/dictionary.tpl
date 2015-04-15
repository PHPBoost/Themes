 <script type="text/javascript">
<!--
	function affCache(id)
	{
		var pr = document.getElementById(id);
	 
		if (pr.style.display == "none") {
			Effect.Appear(pr,{ duration: 0.2 });
		} else {
			Effect.Fade(pr,{ duration: 0.2 });
		}
	}

	function dictionary_confirm_delete() 
	{
		return confirm("{L_DELETE_DICTIONARY}");
	}
		
	function check_form_or(){
		# IF C_BBCODE_TINYMCE_MODE #
			tinyMCE.triggerSave();
		# ENDIF #	
		if(document.getElementById('word').value == "") 
		{
			alert("{L_ALERT_TEXT_WORD}");
			return false;
		}
		else if(document.getElementById('contents').value == "")
		{
			alert("{L_ALERT_TEXT_DESC}");
			return false;
		}
		return true;
		}
	function str_replace2(SRs, SRt, SRu) {
		  SRRi = SRs.indexOf(SRt);
		  SRRr = '';
		  if (SRRi == -1) return SRs;
		  SRRr += SRs.substring(0,SRRi) + SRu;
		  if ( SRRi + SRt.length < SRs.length)
		    SRRr += str_replace2(SRs.substring(SRRi + SRt.length, SRs.length), SRt, SRu);
		  return SRRr;
	}
 
	 function FormatStr(Str){
		var replace = new Array("'", '"', ".",",",'\\','/','^',':');
		Str=str_replace2(Str,replace[0],"");
		Str=str_replace2(Str,replace[1],"");
		Str=str_replace2(Str,replace[2],"");
		Str=str_replace2(Str,replace[3],"");
		Str=str_replace2(Str,replace[4],"");
		Str=str_replace2(Str,replace[5],"");
		Str=str_replace2(Str,replace[6],"");
		Str=str_replace2(Str,replace[7],"");
		
	    StrNewStr="";
		 for(i=0;i<=Str.length;i++){
			 StrChar=Str.substring(i,i+1);
			 if(StrChar!=" " || Str.substring(i-1,i)!=" "){
				StrNewStr=StrNewStr+StrChar;
			 }
		 }
		 j=1;
		 for(i=0;i<=Str.length;i++){
			StrChar=Str.substring(i,i+1);
			if(StrChar == " "){
				j++;
			}
		 }
		 if(i==j){
			StrNewStr='';
		 }
		 return StrNewStr;
	 } 
	 function Doublons(TabInit){
		NvTab= new Array();
		var q=0;
		var LnChaine= TabInit.length;
		 for(x=0;x<LnChaine;x++)
		    {
		    for(i=0;i<LnChaine;i++)
		        {
		        if(TabInit[x]==  TabInit[i] && x!=i) TabInit[i]='faux';
		        }
		    if(TabInit[x]!='faux'){  NvTab[q] = TabInit[x]; q++}
		    }
		return NvTab;
	}
	
	function getParam(name)
	{
		var str_location = String(location);
		if(str_location.search('/dictionary-') != -1 )
		{
			url=String(location).substr(str_location.search('/dictionary-') + 12);
			url=url.substr(0,url.length - 4);
			tab=url.split('-');
			return tab[1];
		}
		else
		{
			var start=location.search.indexOf("?"+name+"=" );
			if (start<0) start=location.search.indexOf("&"+name+"=" );
			if (start<0) return '';
			start += name.length+2;
			var end=location.search.indexOf("&",start)-1;
			if (end<0) end=location.search.length;
			var result='';
			for(var i=start;i<=end;i++) 
			{
				var c=location.search.charAt(i);
				result=result+(c=='+'?' ':c);
			}
			return unescape(result);
		}
	}
	 function check_onchange(i)
	{
		i.value= FormatStr(i.value);
		return true;
	}
	
	function aff_cache_all(ii,jj)
	{
		var i = ii;
		var j = jj;
		
		clearTimeout()
		if(j==i)
			{
				Effect.Appear(document.getElementById('category').value="ALL",{ duration: 0.2 });
				# START dictionary #
					Effect.Appear(document.getElementById('{dictionary.CAT}'+'_cat_'+'{dictionary.NAME}'));
				# END dictionary #
				return;
			}
			
		
	}
	
	function AffCachWord()
	{
		var i = 0;
		var j = 0;
		clearTimeout()
		
		# START dictionary #
		var pr1=document.getElementById('{dictionary.CAT}');
		var pr3=document.getElementById('ALL');
		if(pr1.style.display == "none" && pr3.style.display == "none" && '{dictionary.CAT}' !='ALL' )
		{
			Effect.Fade(document.getElementById('{dictionary.CAT}'+'_cat_'+'{dictionary.NAME}'));
			tab_cat_list=document.getElementById("category_list").value.split('-');
			tab_cat_list=Doublons(tab_cat_list);
			list_cat="";
			for(i=0;i<tab_cat_list.length;i++)
			{
				if(tab_cat_list[i] != {dictionary.CAT})
				{
					if(i!=0)
					{
						list_cat=list_cat+'-';
					}
					list_cat=list_cat+tab_cat_list[i];
				}
			}
			document.getElementById("category_list").value=list_cat;
		}
		else if ('{dictionary.CAT}' !='ALL' )
		{
			Effect.Appear(document.getElementById('{dictionary.CAT}'+'_cat_'+'{dictionary.NAME}'));		
			document.getElementById("category_list").value=document.getElementById("category_list").value+"-"+{dictionary.CAT};
		
		}
		j=j+1;
		if(pr1.style.display == "none" && pr3.style.display == "none")
		{
			i=i+1;
		}
			
		# END dictionary #
		var func = "aff_cache_all("+i+","+j+");";
		setTimeout (func, 2000);	
	}
	
	function affCacheCat(pr5)
	{
		if(pr5==" ")
		{
			var cat = document.getElementById('category').value;
		}
		else
		{
			var cat = pr5;	
		}
		var pr3=document.getElementById('ALL');
		# START cat #
			var pr=document.getElementById('{cat.ID}');		
			if (cat=="ALL" && document.getElementById('ALL').style.display == "none")
			{		
					affCache(document.getElementById('category').value=cat);
					if(pr.style.display != "none")
						Effect.Fade(pr,{ duration: 0.2 });
			}
			else if(cat!="ALL")
			{
				affCache(document.getElementById('category').value=cat);
				Effect.Fade(pr3,{ duration: 0.2 });		
			}
		# END cat #
		
		setTimeout ('AffCachWord();', 400);
	}
	


	function AffCacheCatLancement(TabCat)
	{
		tab_cat_list=TabCat.split(',');	
		for(var i=0;i<tab_cat_list.length;i++) 
		{
			affCacheCat(tab_cat_list[i]);
		}
	}

	function redirection_letter(letter)
	{
		tab_cat_list1=document.getElementById("category_list").value.split('-');
		document.getElementById("category_list").value=Doublons(tab_cat_list1);	
		str_cat=document.getElementById("category_list").value;
		
		if({REWRITE})
		{
			letter=letter.toLowerCase();
			location.href="dictionary-"+letter+"-"+str_cat.substring(1)+".php";
		}
		else
		{
			location.href="dictionary.php?l="+letter+"&cat="+str_cat.substring(1);
		}
	}


 -->
 
 
</script>


<div class="module_position" style="padding-bottom:20px;">
<div class="module_top_l"></div>		
<div class="module_top_r"></div>
<div class="module_top"><a href="dictionary.php">{TITLE}</a>
# IF C_AJOUT #
		<a href="{PATH_TO_ROOT}/dictionary/dictionary.php?add=1&token={TOKEN}">
			<img class="valign_middle" src="{PATH_TO_ROOT}/dictionary/templates/images/add.png" alt="{L_ADD_DICTIONARY}" title="{L_ADD_DICTIONARY}" />
		</a>
# ENDIF #
</div>
<br />
	# INCLUDE MSG #
	
	# IF NOT C_EDIT #
		<div style="text-align:center" class="dictionary_letter">
			<div style="padding-bottom:5px;border-bottom:1px solid #C4CED6;position:relative;z-index:1;">
				# START letter #
					<a class="dictionary_letter2" href="javascript:redirection_letter('{letter.LETTER}');">{letter.LETTER}</a> <img src="./templates/images/li.png"/>
				# END letter #	
				<a class="dictionary_letter2"href="javascript:redirection_letter('tous');">{L_ALL}</a>
				<br>
			</div>
			<div style="text-align:left;margin-top:-10px;">
				<br>
				<span style="color:#FFFFFF;"><b>{L_CATEGORY} : </b></span>
				# START cat #
					<span id="{cat.ID}" style="display:none;"><a href="javascript:affCacheCat('{cat.ID}');" style="text-decoration:none;color:#FFFFFF;">{cat.NAME}&nbsp;<img src="./templates/images/plus1.png"/> </a></span>
				# END cat #	
				<span id="ALL" style=""><a href="javascript:affCacheCat('ALL');" style="text-decoration:none;color:#FFFFFF;">{L_ALL_CAT} &nbsp;<img src="./templates/images/plus1.png"/> </a></span>
				<select id ="category" name='category' style="width:150px;border:1px #cccccc solid;-moz-border-radius:5px;-khtml-border-radius:12px;-webkit-border-radius:5px;border-radius:5px;">
					<OPTION SELECTED VALUE='ALL'>{L_ALL_CAT}
						# START cat_list #
						<option value='{cat_list.ID}'>{cat_list.NAME}
						# END cat_list #
					</select>
				<a href="javascript:affCacheCat(' ');" style="text-decoration:none;vertical-align:bottom">&nbsp;<img src="./templates/images/fleche1.png" alt=""/> </a>
			</div>
		</div> 
		<br />
		<noscript>
		<div style="text-align:center;color:red;"><b>{L_NO_SCRIPT}</b>	</div>
		<br>
		</noscript>
		# START dictionary #
	
		
			<div  class="dictionary_word" style="" id="{dictionary.CAT}_cat_{dictionary.NAME}" name="{dictionary.CAT}_cat_{dictionary.NAME}">								
				<div>
					<div style="float:left;" >
					<a href="javascript:affCacheCat('{dictionary.CAT}');"  style="text-decoration:none;">	<img src="{dictionary.CAT_IMG}" alt="{dictionary.CAT}" style="vertical-align:bottom;height:16px;height:16px"/></a>&nbsp;<img src="./templates/images/li1.png"/>&nbsp;<a href="javascript:affCache('{dictionary.NAME}');"  style="text-decoration:none;">{dictionary.PROPER_NAME}</a>
					</div>
					<div style="float:right">
						# IF dictionary.EDIT_CODE #
							&nbsp;&nbsp;<a href="{PATH_TO_ROOT}/dictionary/dictionary.php?edit={dictionary.ID_EDIT}&token={TOKEN}"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/{LANG}/edit.png" alt="{dictionary.LANG_EDIT}" title="{dictionary.LANG_EDIT}" class="valign_middle" /></a>
						# ENDIF #
						# IF dictionary.DEL_CODE #
							&nbsp;&nbsp;<a href="{PATH_TO_ROOT}/dictionary/dictionary.php?del={dictionary.ID_DEL}&token={TOKEN}" onclick="javascript:return dictionary_confirm_delete();"><img src="../templates/{dictionary.THEME}/images/{dictionary.LANG}/delete.png" alt="{dictionary.LANG_DEL}" title="{dictionary.LANG_DEL}" class="valign_middle" /></a>
						# ENDIF #
						&nbsp;&nbsp;
					</div>
					<br />
				</div>
				# IF NOT dictionary.C_AFF #
				<div id="{dictionary.NAME}" style="display:none;" class="dictionary_definition">
					{dictionary.DESC}
				</div>
				# ENDIF #
				# IF dictionary.C_AFF #
				<div id="{dictionary.NAME}" style="display:block;" class="dictionary_definition">
					{dictionary.DESC}
				</div>
				# ENDIF #
				<noscript>
					<div id="{dictionary.NAME}"  class="dictionary_definition">
						{dictionary.DESC}
					</div>
				</noscript>
			</div>
		# END dictionary #
		 <script type="text/javascript">
		<!--
			cat=getParam('cat');
			AffCacheCatLancement(cat);
		-->
		</script>
		<input type="hidden" value="" id="category_list"name="category_list" />
		<br>	
		<div class="dictionary_pagination">{PAGINATION}</div>
		<div class="module_top">&nbsp;</div>
		<div class="dictionary_ajout">
		<div style="float:left;">
			<a href="./dictionary.php">{TITLE}</a>
			# IF C_AJOUT #
				<a href="{PATH_TO_ROOT}/dictionary/dictionary.php?add=1&token={TOKEN}">
					<img class="valign_middle"src="{PATH_TO_ROOT}/dictionary/templates/images/add.png" alt="{L_ADD_DICTIONARY}" title="{L_ADD_DICTIONARY}" />
				</a>	
			# ENDIF #
			</div>
		</div>
	# ENDIF #
	# IF C_EDIT #
		# IF C_ARTICLES_PREVIEW #
			<table class="module_table">
				<tr> 
					<th colspan="2">
						{L_PREVISUALIATION}
					</th>
				</tr>
				<tr> 
					<td>
						<br />
						<div class="module_position">
							<div class="module_top_l"></div>
							<div class="module_top_r"></div>
							<div class="module_top">
								<div style="float:left">
									{WORD}
								</div>
							</div>
							<div class="module_contents">
								{CONTENTS_PRW}
							</div>
							<div class="module_bottom_l"></div>
							<div class="module_bottom_r"></div>
							<div class="module_bottom">
								<div style="float:left" class="text_small">
									&nbsp;
								</div>
							</div>
						</div>
						<br />
					</td>
				</tr>
			</table>	
			<br /><br /><br />
		# ENDIF #
		<form action="dictionary.php?token={TOKEN}" name="form" method="post" onsubmit="return check_form_or();"  class="fieldset_content">
			<fieldset>
				<legend>{L_ADD_DICTIONARY}</legend>
					<dl>
						<dt><label for="word">* {L_WORD}</label></dt>
						<dd><input type="text" maxlength="100" id="word" name="word" class="text" value="{WORD}" onchange="check_onchange(this);" /></dd>
					</dl>
						<dl>
						<dt><label for="category">{L_CATEGORY}</label></dt>
						<dd><select id ="category_add" name='category_add' style="width:150px;">
									<option selected="selected" value="{ID_CAT_SELECT}">{NAME_CAT_SELECT}
									# START cat_list_add #
										<option value='{cat_list_add.VALUE}'>{cat_list_add.NAME}
									# END cat_list_add #
							</select></dd>
					</dl>
					<br />
					<label for="contents">* {L_CONTENTS}</label>
						{KERNEL_EDITOR}
						<textarea type="text" rows="20" cols="50" id="contents" name="contents">{CONTENTS}</textarea> 
					<br /><br />
			# IF C_CONTRIBUTION #
				<fieldset>
					<legend>{L_CONTRIBUTION}</legend>
					<div class="notice">{L_CONTRIBUTION_NOTICE}</div>
					<p><label>{L_CONTRIBUTION_COUNTERPART}</label></p>
					<p class="text_small">{L_CONTRIBUTION_COUNTERPART_EXPLAIN}</p>
					{CONTRIBUTION_COUNTERPART_EDITOR}
					<textarea rows="20" cols="40" id="counterpart" name="counterpart">{CONTRIBUTION_COUNTERPART}</textarea>
				</fieldset>
			# ENDIF #
				<fieldset class="fieldset_submit">
					<legend>{L_VALIDATION}</legend>
						<input type="hidden" value="{ID}" name="dictionary_id" />
						<input type="submit" id="valid" name="valid" value="{L_SUBMIT}" class="submit"/></dd>
						&nbsp;&nbsp; 	
						<input type="submit" name="previs" value="{L_PREVIS}" class="submit" />
				</fieldset>
			</fieldset>	
		</form>
	# ENDIF #
</div>
