function voter_validation() {
          var name = document.reg_form.name;
          var phone_number = document.reg_form.phone_number;
          var Gender = document.reg_form.Gender;
          var voter_type = document.reg_form.voter_type;
          var aadhar = document.reg_form.aadhar;
          var voterid= document.reg_form.voterid;
          var age = document.reg_form.age;
          var email = document.reg_form.email;  
          var password = document.reg_form.password;
          var passphoto = document.reg_form.passphoto;
        
          var letters = /^[A-Za-z  ]+$/;
          var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
          if (name.value.length <= 0) {
            alert("name is required");
            name.focus();
            return false;
          }
          if (name.value.length <= 2 || name.value.length > 20) {
            alert(" Enter valid name ");
            name.focus();
            return false;
          }
          if (!name.value.match(letters)) {
            alert("enter alphabets at name");
            name.focus();
            return false;
          }
          if (phone_number.value.length <= 0) {
            alert("phone number is required");
            phone_number.focus();
            return false;
          }
          if (isNaN(phone_number.value)) {
            alert("please enter digits for phonenumber");
            phone_number.focus();
            return false;
          }
          if (phone_number.value.length != 10) {
            alert("Phonenumber must contain 10 digits");
            phone_number.focus();
            return false;
          }
          if (Gender.value == "gender") {
            alert("please select gender");
            Gender.focus();
            return false;
          }
          if (voter_type.value == "Citizenship") {
            alert("please select voter-type");
            voter_type.focus();
            return false;
          }
          if (aadhar.value.length == "") {
            alert("please upload your Aadharcard");
            aadhar.focus();
            return false;
          }
          if (voterid.value.length <= 0) {
            alert("voter-ID is required");
            voterid.focus();
            return false;
          }
          if (voterid.value.length <= 2 || voterid.value.length > 20) {
            alert(" Invalid voter-ID ");
            voterid.focus();
            return false;
          }
          if (age.value.length <= 0) {
            alert("please enter age");
            age.focus();
            return false;
          }
          if (age.value.length != 2) {
            alert("invalid age");
            age.focus();
            return false;
          }
          if (isNaN(age.value)) {
            alert("please enter digits at age");
            age.focus();
            return false;
          }
          if (email.value.length <= 0) {
            alert("please enter gmail");
            email.focus();
            return false;
          }
        
          if (!email.value.match(mailformat)) {
            alert("invalid gmail");
            email.focus();
            return false;
          }
          if (password.value.length <= 0) {
            alert("Password cannot be blank");
            password.focus();
            return false;
          }
          if (password.value.length != 6) {
            alert("password must contain 6 characters");
            password.focus();
            return false;
          }
          if (passphoto.value.length == "") {
            alert("please upload your passphoto");
            passphoto.focus();
            return false;
          }else{
             alert("registration successful...");
             return true;
          }
        



















}