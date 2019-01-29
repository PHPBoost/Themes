$(function(){
	showCookieBar();
});

function showCookieBar() {

	var L_BUTTON = "";

	//Cas 1 : NOTRACKING : Utilisation uniquement des cookies techniques (login / préférences / stats anonymes)
	//Cas 2 : TRACKING : Utilisation d'outils types google-analytics, publicité, liens RS
	if ( COOKIEBAR_TRACKING_MODE == 'notracking') {
		L_BUTTON = '<button type="button" class="btn btn-info" id="cookiebar-button-allowed">' + L_COOKIEBAR_UNDERSTAND + '</button>';
	}
	else {
		L_BUTTON = '<button type="button" class="btn btn-success" id="cookiebar-button-allowed">' + L_COOKIEBAR_ALLOWED + '</button> <button type="button" class="btn btn-danger" id="cookiebar-button-declined">' + L_COOKIEBAR_DECLINED + '</button>';
	}

	if (getCookie('pbt-cookiebar-viewed') == "")
	{
		// On ajoute la cookiebar uniquement si elle n'existe pas. On cherche si une id #cookiebar-container existe.
		if ($('#cookiebar-container').length < 1 )
		{
			$('body').prepend('<div class="container-fluid" id="cookiebar-container"><div class="col-sm-12 cookiebar-content" id="cookiebar-content">' + L_COOKIEBAR_CONTENT + '</div><div class="cookiebar-actions"><div class="col-sm-12 text-center"><div class="mtb15 btn-group btn-group-sm">' + L_BUTTON + ' <a class="btn btn-default" href="' + U_COOKIEBAR_ABOUTCOOKIE + '">' + L_COOKIEBAR_MORE + '</a></div></div></div></div>')
		}

		//Si cookie accepté on sauvegarde le choix
		$('#cookiebar-button-allowed').click(function(e){
			e.preventDefault();
			$('#cookiebar-container').fadeOut();
			sendCookie('pbt-cookiebar-viewed', 1, COOKIEBAR_DURATION);
			sendCookie('pbt-cookiebar-choice', 1, COOKIEBAR_DURATION);
			showChangeChoice();
		});

		//Si cookie refusé on sauvegarde le choix
		$('#cookiebar-button-declined').click(function(e){
			e.preventDefault();
			$('#cookiebar-container').fadeOut();
			sendCookie('pbt-cookiebar-viewed', 1, COOKIEBAR_DURATION);
			sendCookie('pbt-cookiebar-choice', -1, COOKIEBAR_DURATION);
			showChangeChoice();
		});
	} else {
		showChangeChoice();
	}
}

function showChangeChoice() {
	if (getCookie('pbt-cookiebar-viewed') == 1)
	{
		$('#cookiebar-change-choice').append('<button type="button" onclick="changeCookieBarChoice();" title="' + L_COOKIEBAR_CHANGE_CHOICE + '" id="cookiebar-change-choice-link" class="btn btn-info">' + L_COOKIEBAR_CHANGE_CHOICE + '</button>');
	}
}

//Supprime les cookies de la cookiebar.
function changeCookieBarChoice() {
	eraseCookie('pbt-cookiebar-viewed');
	eraseCookie('pbt-cookiebar-choice');
	$('#cookiebar-change-choice-link').remove();
	showCookieBar();
}
