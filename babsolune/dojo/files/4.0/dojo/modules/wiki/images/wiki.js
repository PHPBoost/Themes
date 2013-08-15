		//Tableau contenant l'�tat de chaque cat�gorie
		var cat_status = new Array();

		//AJAX: fonction d'interaction avec le serveur
		function show_cat_contents(id_cat, display_select_link)
		{
			var xhr_object = null;
			var data = null;
			var filename = "../wiki/xmlhttprequest.php" + (display_select_link != 0 ? "?display_select_link=1" : "");
			
			if(window.XMLHttpRequest) // Firefox
			   xhr_object = new XMLHttpRequest();
			else if(window.ActiveXObject) // Internet Explorer
			   xhr_object = new ActiveXObject("Microsoft.XMLHTTP");
			else // XMLHttpRequest non support� par le navigateur
			    return;
				
			if( id_cat > 0 )
			{
				//Si le dossier est ferm� on l'ouvre sinon on le ferme
				if( cat_status[id_cat] == undefined  )
				{
					data = "id_cat=" + id_cat;
					xhr_object.open("POST", filename, true);

					xhr_object.onreadystatechange = function() 
					{
						if( xhr_object.readyState == 4 ) 
						{
							document.getElementById("cat_" + id_cat).innerHTML = xhr_object.responseText;
							document.getElementById("img_" + id_cat).src = path + '/images/opened_cat.png';
							if( document.getElementById("img2_" + id_cat) )
								document.getElementById("img2_" + id_cat).src = path + '/images/minus.png';
							
							cat_status[id_cat] = 1;
						}
					}

					xhr_object.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
					xhr_object.send(data);
				}	
				else if( cat_status[id_cat] == 0 )
				{
					document.getElementById("cat_" + id_cat).style.display = 'block';
					document.getElementById("img_" + id_cat).src = path + '/images/opened_cat.png';
					if( document.getElementById("img2_" + id_cat) )
						document.getElementById("img2_" + id_cat).src = path + '/images/minus.png';
					cat_status[id_cat] = 1;
				}
				else
				{
					document.getElementById("cat_" + id_cat).style.display = 'none';
					document.getElementById("img_" + id_cat).src = path + '/images/closed_cat.png';
					if( document.getElementById("img2_" + id_cat) )
						document.getElementById("img2_" + id_cat).src = path + '/images/plus.png';
					cat_status[id_cat] = 0;
				}
			}
		}

		function select_cat(id_cat)
		{
			var xhr_object = null;
			var data = null;
			var filename = "../wiki/xmlhttprequest.php?select_cat=1";
			
			if(window.XMLHttpRequest) // Firefox
			   xhr_object = new XMLHttpRequest();
			else if(window.ActiveXObject) // Internet Explorer
			   xhr_object = new ActiveXObject("Microsoft.XMLHTTP");
			else // XMLHttpRequest non support� par le navigateur
			    return;
				
			if( id_cat >= 0 && id_cat != selected_cat )
			{
				data = "selected_cat=" + id_cat;

				xhr_object.open("POST", filename, true);

				xhr_object.onreadystatechange = function() 
				{
					if( xhr_object.readyState == 4 ) 
					{
						document.getElementById("selected_cat").innerHTML = xhr_object.responseText;
						document.getElementById("id_cat").value = id_cat;
						document.getElementById("class_" + id_cat).className = "wiki_selected_cat";
						document.getElementById("class_" + selected_cat).className = "";
						selected_cat = id_cat;
					}
				}

				xhr_object.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

				xhr_object.send(data);
			}
		}

		function insert_link()
		{	
			var link_name = prompt(enter_text, title_link);
            if( link_name == "" )
            {
                    alert(enter_text);
                    return false;
            }
            
            insertbbcode('[link=' + url_encode_rewrite(link_name) + ']', '[/link]', 'contents');
		}
		function url_encode_rewrite(link_name)
		{
			link_name = link_name.toLowerCase(link_name);
			
			var chars_special = new Array(/ /g, /�/g, /�/g, /�/g, /�/g, /�/g, /�/g, /�/g, /�/g, /�/g, /�/g, /�/g, /�/g);
			var chars_replace = new Array("-", "e", "e", "e", "a", "a", "u", "u", "u", "i", "i", "o", "c");
			var nbr_chars = chars_special.length;
			for( var i = 0; i < nbr_chars; i++)
			{
				link_name = link_name.replace(chars_special[i], chars_replace[i]); 
			}

			link_name = link_name.replace(/([^a-z0-9]|[\s])/g, '-');
			link_name = link_name.replace(/([-]{2,})/g, '-');
			return link_name.replace(/(^\s*)|(\s*$)/g,'').replace(/(^-)|(-$)/g,'');
		}
		function insert_paragraph(level)
		{
			var string = '-';
			if( level > 5 || level < 1 )
				return false;
			for( var i = 1; i <= level; i++)
				string += "-";
			insert_paragraph_title('paragraph', string, string, 'contents');
		}

		//Insertion dans le champs.
		function simple_insert_paragraph(id, open_balise, close_balise, field)
		{
			var textarea = document.getElementById(field);
			var scroll = textarea.scrollTop;
			
			var title = prompt(enter_paragraph_name, title_paragraph);
			
			if( close_balise != "" && title != null && title != enter_paragraph_name )
				textarea.value += "\n" + open_balise + " " + title + " " + close_balise + "\n";
				
			textarea.focus();
			textarea.scrollTop = scroll;
			return;
		}

		//R�cup�ration de la s�lection sur netscape, ajout des balises autour.
		function netscape_sel_paragraph(id, target, open_balise, close_balise)
		{
			var sel_length = target.textLength;
			var sel_start = target.selectionStart;
			var sel_end = target.selectionEnd;
			var scroll = target.scrollTop; //Position verticale.
			
			if( sel_end == 1 || sel_end == 2 )
			{
				sel_end = sel_length;
			}

			var string_start = (target.value).substring(0, sel_start);
			var selection = (target.value).substring(sel_start, sel_end);
			var string_end = (target.value).substring(sel_end, sel_length);
			
			var title = selection != "" ? selection : prompt(enter_paragraph_name, title_paragraph);
			
			if( title != null )
			{
				if( close_balise != "" && selection == "" )
				{
					target.value = string_start + "\n" + open_balise + " " + title + " " + close_balise + "\n" + string_end;
					target.setSelectionRange(string_start.length + (open_balise.length + 2), target.value.length - string_end.length - (close_balise.length+2));
					target.focus();
				}
				else
				{
					target.value = string_start + "\n" + open_balise + ' ' + selection + ' ' + close_balise + "\n" + string_end;
					target.setSelectionRange(string_start.length + (open_balise.length + 2), target.value.length - string_end.length - (close_balise.length+2));
					target.focus();
				}
			}
			
			target.scrollTop = scroll; //Remet � la bonne position le textarea.

			return;
		}

		//R�cup�ration de la s�lection sur IE, ajout des balises autour.
		function ie_sel_paragraph(id, target, open_balise, close_balise)
		{
			selText = false;
			var scroll = target.scrollTop; //Position verticale.
			
			selection = document.selection.createRange().text; // S�lection
			
			var title = selection != "" ? selection : prompt(enter_paragraph_name, title_paragraph);

			if( title != null )
			{
				if( close_balise != "" && selection == "" )
					document.selection.createRange().text = "\n" + open_balise + " " + title + " " + close_balise + "\n";
				else
					document.selection.createRange().text = "\n" + open_balise + ' ' + selection + ' ' + close_balise + "\n";		
			}
			
			target.scrollTop = scroll; //Remet � la bonne position le textarea.
			selText = '';
			
			return;
		}

		//Fonction d'insertion du BBcode dans le champs, tient compte du navigateur utilis�.
		function insert_paragraph_title(id, open_balise, close_balise, field)
		{
			var area = document.getElementById(field);
			var nav = navigator.appName; //Recup�re le nom du navigateur

			area.focus();

			if( nav == 'Microsoft Internet Explorer' ) // Internet Explorer
				ie_sel_paragraph(id, area, open_balise, close_balise);
			else if( nav == 'Netscape' || nav == 'Opera' ) //Netscape ou opera
				netscape_sel_paragraph(id, area, open_balise, close_balise);
			else //insertion normale (autres navigateurs)
				simple_insert_paragraph(id, open_balise, close_balise, field);

			return;
		}

		//Fonction d'affichage du contenu d'une cat�gorie
		function open_cat(id_cat)
		{
			var xhr_object = null;
			var data = null;
			var filename = "../wiki/xmlhttprequest.php?select_cat=1&display_select_link=0" + (id_cat == 0 ? "&root=1" : "");
			
			if(window.XMLHttpRequest) // Firefox
			   xhr_object = new XMLHttpRequest();
			else if(window.ActiveXObject) // Internet Explorer
			   xhr_object = new ActiveXObject("Microsoft.XMLHTTP");
			else // XMLHttpRequest non support� par le navigateur
			    return;
				
			if( id_cat >= 0 && id_cat != selected_cat )
			{
				data = "open_cat=" + id_cat;

				xhr_object.open("POST", filename, true);

				xhr_object.onreadystatechange = function() 
				{
					if( xhr_object.readyState == 4 ) 
					{
						document.getElementById("cat_contents").innerHTML = xhr_object.responseText;
						document.getElementById("class_" + id_cat).className = "wiki_selected_cat";
						document.getElementById("class_" + selected_cat).className = "";
						selected_cat = id_cat;
					}
				}

				xhr_object.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

				xhr_object.send(data);
			}
		}