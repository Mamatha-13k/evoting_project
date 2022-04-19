function formValidation() {
  var username = document.myform.username;
  var password = document.myform.password;

  if (username.value.length <= 0) {
    alert("username is required");
    username.focus();
    return false;
  }

  if (password.value.length <= 0) {
    alert("Password cannot be blank");
    password.focus();
    return false;
  }
 return true;
}
