
<!-- WITHOUT IMAGES -->
<ul class="rss-feed">
    # START item #
    <!-- ITEM --><li><span class="smaller">{item.DATE}</span> <a href="{item.U_LINK} ">{item.TITLE} </a></li><!-- END ITEM -->
    # END item #
</ul>


<!-- WITH IMAGES -->
# START item #
<!-- ITEM -->
<div style="float:left;width:73px;text-align:center;">&nbsp;# IF item.C_IMG #<img src="{item.U_IMG}" alt="" style="" /># ENDIF #</div>
<div style="float:left;width:250px;padding-left:6px;">
    <a href="{item.U_LINK}">{item.TITLE}</a>
    <p class="smaller">{L_POSTED_ON} {item.DATE} - <a href="{item.U_LINK}" class="small">{L_READ}</a></p>
</div>
<div class="spacer"></div>
<!-- END ITEM -->
# END item #