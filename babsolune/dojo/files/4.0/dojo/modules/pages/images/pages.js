//Tableau contenant l'�tat de chaque cat�gorie
var cat_status = new Array();

//AJAX: fonction d'interaction avec le serveur
function show_cat_contents(id_cat, display_select_link)
{
	var xhr_object = null;
	var data = null;
	var filename = "../pages/xmlhttprequest.php" + (display_select_link != 0 ? "?display_select_link=1" : "");
	
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
	var filename = "../pages/xmlhttprequest.php?select_cat=1";
	
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
				document.getElementById("id_cat").value = id_cat;
				document.getElementById("class_" + id_cat).className = "pages_selected_cat";
				document.getElementById("class_" + selected_cat).className = "";
				selected_cat = id_cat;
			}
		}

		xhr_object.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

		xhr_object.send(data);
	}
}

//Fonction d'affichage du contenu d'une cat�gorie
function open_cat(id_cat)
{
var xhr_object = null;
	var data = null;
	var filename = "../pages/xmlhttprequest.php?select_cat=1&display_select_link=0" + (id_cat == 0 ? "&root=1" : "");
	
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
				document.getElementById("class_" + id_cat).className = "pages_selected_cat";
				document.getElementById("class_" + selected_cat).className = "";
				selected_cat = id_cat;
			}
		}

		xhr_object.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

		xhr_object.send(data);
	}
}