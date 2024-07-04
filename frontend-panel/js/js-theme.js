// menu-small
// $(document).ready(function() {

// });

function show_input_search() {
    document.getElementById("box-search").style.display = "block";
}

function menu_small() {
    $('.content-menu , .link').slideUp(0);

    $('.big-title,.small-title').click(function() {

        $(this).next('.content-menu,.link').slideToggle();

        $(this).toggleClass('active ');
        $(this).toggleClass('icon-down ');
    });
}


function Menu() {

    $(window).scroll(function() {
        if ($('body,html').scrollTop() > 168) {
            $('.inTop').addClass('hidden-top');
            $('.button-show-menu').addClass('hienthi');

        } else {
            // code else
            $('.inTop').removeClass('hidden-top');
            $('.button-show-menu').removeClass('hienthi');

        }



    });

}

function Show_Menu() {

    $(' .button-show-menu').click(function() {
        $('.inTop').toggleClass('hidden-top');


    });

}