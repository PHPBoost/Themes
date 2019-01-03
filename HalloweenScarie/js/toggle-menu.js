/*########################################
*			TOGGLE MENU 
########################################*/

		// On attend que la page soit chargée 
		jQuery(document).ready(function()
		{
		   // On cache la zone de texte
		   jQuery('#toggle').hide();
		   // toggle() lorsque le lien avec l'ID #toggler est cliqué
		   jQuery('a#toggler-left').click(function()
		  {
			  jQuery('.toggle-left').toggle(400);
			  return false;
		   });
		});

		// On attend que la page soit chargée 
		jQuery(document).ready(function()
		{
		   // On cache la zone de texte
		   jQuery('#toggle').hide();
		   // toggle() lorsque le lien avec l'ID #toggler est cliqué
		   jQuery('a#toggler-right').click(function()
		  {
			  jQuery('.toggle-right').toggle(400);
			  return false;
		   });
		});

/*########################################
*			COOKIES 
########################################*/

function sendCookie(name, value)
{
	var date = new Date();
	date.setMonth(date.getMonth() + 1); //1 mois de validité.
	document.cookie = name + '=' + value + '; expires = ' + date.toGMTString() + '; path =/';
 
}
 
//Récupère la valeur du cookie.
function getCookieHeader(name) 
{
	start = document.cookie.indexOf(name + "=")
	if( start >= 0 ) 
	{
		start += name.length + 1;
		end = document.cookie.indexOf(';', start);
 
		if( end < 0 ) 
			end = document.cookie.length;
		return document.cookie.substring(start, end);
	}
	return 1;
}
