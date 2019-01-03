<div id="module-mini-search"# IF C_HIDDEN_WITH_SMALL_SCREENS # class="hidden-small-screens"# ENDIF #>
	<script>
	<!--
		function check_search_mini_form_post()
		{
			var textSearched = document.getElementById('TxTMiniSearched').value;
			if (textSearched.length > 3)
			{
				textSearched = escape_xmlhttprequest(textSearched);
				return true;
			}
			else
			{
				alert('{WARNING_LENGTH_STRING_SEARCH}');
				return false;
			}
		}
		
		jQuery(document).ready(function() {
			jQuery('#search-token').val(TOKEN);
		});
	-->
	function buttonUp(){
         var valux = $('.sb-search-input').val(); 
            valux = $.trim(valux).length;
            if(valux !== 0){
                $('.sb-search-submit').css('z-index','99');
            } else{
                $('.sb-search-input').val(''); 
                $('.sb-search-submit').css('z-index','-999');
            }
    }
    
    $(document).ready(function(){
        var submitIcon = $('.sb-icon-search');
        var submitInput = $('.sb-search-input');
        var searchBox = $('.sb-search');
        var isOpen = false;
        
        $(document).mouseup(function(){
            if(isOpen == true){
            submitInput.val('');
            $('.sb-search-submit').css('z-index','-999');
            submitIcon.click();
            }
        });
        
        submitIcon.mouseup(function(){
            return false;
        });
        
        searchBox.mouseup(function(){
            return false;
        });
                
        submitIcon.click(function(){
            if(isOpen == false){
                searchBox.addClass('sb-search-open');
                isOpen = true;
            } else {
                searchBox.removeClass('sb-search-open');
                isOpen = false;
            }
    });

});
	</script>

	<form action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post">
		<div id="mini-search-form sb-search" class="input-element-button sb-search">
				<input type="search" class="sb-search-input" id="TxTMiniSearched" name="q" value="{TEXT_SEARCHED}" placeholder="{L_SEARCH}...">
				<input type="hidden" id="search-token" name="token" value="{TOKEN}">
				<button type="submit" class="sb-search-submit" name="search_submit"><i class="fa fa-search"></i></button>
				<span class="sb-icon-search"><i class="fa fa-search"></i></span>
			</div>
		# IF C_VERTICAL #<a href="{U_ADVANCED_SEARCH}" class="small">{L_ADVANCED_SEARCH}</a># ENDIF #
	</form>
</div>
