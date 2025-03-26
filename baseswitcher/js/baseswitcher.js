// theme switch mode
    var selectedTheme = localStorage.getItem('theme');
    if(selectedTheme)
        jQuery('body').attr('data-theme', selectedTheme);
    else
        jQuery('body').attr('data-theme', 'light');

    jQuery('.base-switcher-toggle').on('click', function() {
        if(jQuery(this).hasClass('base-switcher-dark')) {
            jQuery('body').attr('data-theme', 'dark');
            localStorage.setItem('theme', 'dark');
        }
        else {
            jQuery('body').attr('data-theme', 'light');
            localStorage.setItem('theme', 'light');
        }
    });
