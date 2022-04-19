function candi_validation() {
          var date = document.election_form.date;
          var election_type = document.election_form.election_type;
          var area = document.election_form.area;
          var letters = /^[A-Za-z   ]+$/;
          var dateformat = /^(0?[1-9]|1[012])[\/\-](0?[1-9]|[12][0-9]|3[01])[\/\-]\d{4}$/;

          if (date.value.length<=0) {
                    alert("date is required..");
                    date.focus();
                    return false;
          }
          if (date.value.match(dateformat)) {
                    alert("please select date");
                    date.focus();
                    return false;
                    
          }
          if (election_type.value.length <= 0) {
                    alert("please enter election type");
                    election_type.focus();
                    return false;
          }
       
          if (!election_type.value.match(letters)) {
                    alert("only  characters are allowed in electiontype...");
                    election_type.focus();
                    return false;
          }
          if (area.value.length <= 0) {
                    alert("area is required");
                    area.focus();
                    return false;
          }
         
          if (!area.value.match(letters)) {
                    alert("only  characters are allowed in area field...");
                    area.focus();
                    return false;
          }else{
                    alert("Election Added Successfully...")
          }


} 