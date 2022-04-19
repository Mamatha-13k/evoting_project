function contact_validation() {
          var name = document.contact_form.name;
          var email = document.contact_form.email;
          var Subject = document.contact_form.Subject;
          var message = document.contact_form.message;
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
          if (Subject.value.length <= 0) {
                    alert("please enter subject");
                    Subject.focus();
                    return false;
          }
          if (message.value.length <= 0) {
                    alert("write your message");
                    message.focus();
                    return false;
          }
         










}