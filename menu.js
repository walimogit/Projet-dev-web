function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    for (var d = 0; d < dropdowns.length; d++) {
      let openDropdown = dropdowns[d];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}

//----Menu-collant----

let scrollY = function() {
  var supportPageOffset = window.pageXOffset !== undefined;
  var isCSS1Compat = ((document.compatMode || "") === "CSS1Compat");
  return supportPageOffset ? window.pageYOffset : isCSS1Compat ? document.documentElement.scrollTop : document.body.scrollTop;
}

let element = document.querySelector('.topnav')
let topbar = document.querySelector('.topnav').getBoundingClientRect().top + window.scrollY
console.log(topbar)
let onScroll = function () {
  
  /*if (element.getBoundingClientRect().top < 0) {
    element.classList.add('fixed')
  } else {
    element.classList.remove('fixed')
  }*/
}
window.addEventListener('scroll', onScroll)