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




var cgvCheckbox = document.querySelector('input[id="conditions"]');
cgvCheckbox.click = function() {
  if(cgvCheckbox.checked) {
    document.getElementById("create_account").disabled = false;
  }
  else {
    document.getElementById("create_account").disabled = true;
  }
}

//----Menu-collant----

// Fonctions

let scrollY = window.scrollY
let element = document.querySelector('.topnav')
let rect = element.getBoundingClientRect()
let topbar = rect.top + scrollY
//let fake = document.createElement('div')
//fake.style.width = rect.width + "px"
//fake.style.height = rect.height + "px"
console.log(topbar)

//----Fonction-onScroll----

let onScroll = function () {
  let hasScrollClass = element.classList.contains('fixed')
  if (window.scrollY > topbar && !hasScrollClass){
    element.classList.add('fixed')
    element.style.width = rect.width + "px"
    //element.parentNode.insertBefore(fake, element)
  } else if (window.scrollY < top && hasScrollClass) {
    element.classList.remove('fixed')
    //element.parentNode.remove(fake, element)
  }
}

//----Fonction-onResize----

let onResize = function () {
  element.style.width = "auto"
  element.classList.remove('fixed')
  //fake.style.display = "none"
  rect = element.getBoundingClientRect()
  topbar = rect.top + window.scrollY
  //fake.style.width = rect.width + "px"
  //fake.style.height = rect.height + "px"
  //fake.style.display = "block"
  onScroll()
}

// Listener

window.addEventListener('scroll', onScroll)
window.addEventListener('resize', onResize)

//-----CGV-----

