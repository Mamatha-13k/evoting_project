function candi_password(){
         
          var Password1 = document.myform.Password1;
          
          if (Password1.value.length <= 0) {
                    alert("Password cannot be blank");
                    Password1.focus();
                    return false;
                  }
          if (Password1.value.length != 6) {
                    alert("password must contain 6 characters");
                    Password1.focus();
                    return false;
                  }
        
         
}