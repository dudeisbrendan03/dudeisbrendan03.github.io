//Now this is gonna be epic
//A cool parallax script for 4 layers to make some mountain look cool. Because exploring in real life is fucking boring
window.addEventListener('scroll', function(event) {
  var depth, i, l, len, ls, mov, results, topDistance, trans;
  topDistance = this.pageYOffset;
  ls = document.querySelectorAll("[tp='plx']"); //how far we have scrolled in px, stored in ls
//for a val in ls - stops us from wasting time defining transform for each layer
  results = [];
  for (i = 0, len = ls.length; i < len; i++) {
    l = ls[i];
    depth = l.getAttribute('data-depth'); //get the depth for the layer
    mov = -(topDistance * depth); //the movement (the amount of distance from the top of the screen )
    trans = 'translate3d(0, ' + mov + 'px, 0)';
    l.style['-webkit-transform'] = trans;
    l.style['-moz-transform'] = trans;
    l.style['-ms-transform'] = trans;
    l.style['-o-transform'] = trans;
    results.push(l.style.trans = trans);
  }
  return results;
});
