        <script type="text/javascript">
        <!--
        function check_search_mini_form_post()
        {
            var textSearched = document.getElementById('TxTMiniSearched').value;
            if ( (textSearched.length > 3) && (textSearched != escape('{L_SEARCH}...')) )
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
        -->
        </script>
        <form action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post">
            <div style="float:right;margin-top:15px;margin-right:15px;">
				<input type="text" size="14" id="TxTMiniSearched" name="q" value="{TEXT_SEARCHED}" class="text" style="background:#FFFFFF url({PATH_TO_ROOT}/templates/{THEME}/images/search.png) no-repeat;background-position:2px 1px;padding-left:22px;height:14px" onclick="if(this.value=='{L_SEARCH}...')this.value='';" onblur="if(this.value=='')this.value='{L_SEARCH}...';" />
				<input type="hidden" name="search_submit" id="search_submit_mini" value="{SEARCH}" class="submit" />
				<input type="image" name="search_submit" style="margin-left:-4px;padding:0;border:none;background:none;" value="1" src="{PATH_TO_ROOT}/templates/{THEME}/modules/search/images/search_submit.png" />
            </div>
        </form>