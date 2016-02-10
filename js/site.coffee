---
---
$(window).scroll ->
    $('body').toggleClass 'scrolled', window.scrollY > window.innerHeight / 10

# responsive nav
# $('nav a').click (e) ->
#     if $(window).width() <= 500
#         if !($('nav').hasClass 'expanded')
#             e.stopPropagation();
#             e.preventDefault();
#             e.stopImmediatePropagation();
#         $('nav').toggleClass 'expanded'
#
# $('body').click ->
#     $('nav').removeClass 'expanded'

# nav links
$('header a').smoothScroll()
$('.splash a').smoothScroll()

$(window).scroll ->
    scrollPos = $(window).scrollTop()
    headerHeight = $('header').height()

    $('nav a').removeClass 'active'

    $('nav a').each (index) ->
        div = $($(this).attr 'href')
        divPos = div.offset().top + headerHeight
        if ((scrollPos + headerHeight + 10) >= divPos)
            $('nav a').removeClass 'active'
            $(this).addClass 'active'

    if scrollPos + $(window).height() >= $(document).height()
        $('nav a').removeClass 'active'
        $('nav a:last-child').addClass 'active'
