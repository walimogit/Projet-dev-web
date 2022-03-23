var btnCreateAccount = document.querySelector('input[id="create_account"]');
var cgvCheckbox = document.querySelector('input[id="conditions"]');
//btnCreateAccount.disabled = true
console.log('true')
cgvCheckbox.click = function() {
  if(cgvCheckbox.checked) {
    //btnCreateAccount.disabled = false
    console.log('false')
  }
  else {
    //btnCreateAccount.disabled = true
    console.log('true')
  }
}
