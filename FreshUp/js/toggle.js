/*#####################################################
*	TOGGLE Masquage des colonnes de menus CsN
#####################################################*/

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
