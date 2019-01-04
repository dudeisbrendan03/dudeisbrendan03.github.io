#Now this is gonna be epic
#A cool parallax script for 4 layers to make some mountain look cool. Because exploring in real life is fucking boring

window.addEventListener ‘scroll’, (event) ->
    topDistance = @pageYOffset; ls = document.querySelectorAll("[data-type='plx']")

for layer in layers
    depth = layer.getAttribute('depth')
    mov = -(topDistance*depth)
    trans = 'translate3d(0, '+movement+'px, 0)'
    layer.style['-webkit-transform'] = trans; layer.style['-moz-transform'] = trans; layer.style['-ms-transform'] = trans; layer.style['-o-transform'] = trans
    layer.style.trans = trans