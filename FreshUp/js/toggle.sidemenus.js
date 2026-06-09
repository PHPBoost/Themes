jQuery(document).ready(function()
{
    jQuery('.toggle-menu').on('click', function()
    {
        var target = jQuery(this).data('menu');
        jQuery('#'+target).toggle(400);
        return false;
    });
});