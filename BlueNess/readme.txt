Authors: EDN | Swan - PHPBoost

Replace the site title with an image by uncommenting the following properties of the blueness.css file

#site-infos {
    ...

    /* height: 8.809em;
    width: 100%;
    background-image: url('images/title.webp');
    background-position: center;
    background-repeat: no-repeat; */
}

#site-logo,
#site-name-container {
    ...

    /* position: absolute;
    top: -5000px; */
}

Add a background picture in side menus header by uncommenting the following properties of the blueness.css file

.cell-mini .cell .cell-name {
    ...
    /* background: url('images/cell-name.webp') no-repeat center top, linear-gradient(rgba(var(--bgc-rgb-s), 1), rgba(var(--bgc-rgb-m), 0.2) 45%); */
}

Best practice for menus in header
top header   : search
inner header : connect
sub header   : main menu
