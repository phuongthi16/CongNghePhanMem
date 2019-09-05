function formatTitle(title, currentArray, currentIndex, currentOpts) {
    return '<div id="tip7-title"><span><a href="javascript:;" onclick="$.fancybox.close();"><img src="/data/closelabel.gif" /></a></span>' + (title && title.length ? '<b>' + title + '</b>' : '' ) + 'Image ' + (currentIndex + 1) + ' of ' + currentArray.length + '</div>';
}

$(".tip7").fancybox({
    'showCloseButton'   : false,
    'titlePosition'         : 'inside',
    'titleFormat'       : formatTitle
});

jQuery(document).ready(function() {
    $("#your_selector").trigger('click');
});
jQuery(document).ready(function() {
    $.fancybox(
        '<h2>Hi!</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis mi eu elit tempor facilisis id et neque</p>',
        {
                'autoDimensions'    : false,
            'width'                 : 350,
            'height'                : 'auto',
            'transitionIn'      : 'none',
            'transitionOut'     : 'none'
        }
    );
});

$("#tip5").fancybox({
    'scrolling'     : 'no',
    'titleShow'     : false,
    'onClosed'      : function() {
        $("#login_error").hide();
    }
});