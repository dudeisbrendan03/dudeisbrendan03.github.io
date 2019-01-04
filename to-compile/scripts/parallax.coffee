#Now this is gonna be epic
#A cool parallax script for 4 layers to make some mountain look cool. Because exploring in real life is fucking boring

window.addEventListener ‘scroll’, (event) ->
    topDistance = @pageYOffset; ls = document.querySelectorAll("[tp='plx']")#how far we have scrolled in px, stored in ls
    for l in ls#for a val in ls - stops us from wasting time defining transform for each layer
        depth = l.getAttribute('depth')#get the depth for the layer
        mov = -(topDistance*depth)#the movement (the amount of distance from the top of the screen )
        trans = 'translate3d(0, '+movement+'px, 0)'
        l.style['-webkit-transform'] = trans; l.style['-moz-transform'] = trans; l.style['-ms-transform'] = trans; l.style['-o-transform'] = trans
        l.style.trans = trans