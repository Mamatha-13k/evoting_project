function formValidation() {
  var partyname = document.party_form.partyname;
  var partyhead = document.party_form.partyhead;
  var position = document.party_form.Position;
  var logo = document.party_form.logo;
  var letters = /^[A-Za-z  ]+$/;
  if (partyname.value.length <= 0) {
    alert("Partyname is required ");

    partyname.focus();
    return false;
  }
  if (partyname.value.length <= 2 || partyname.value.length > 20) {
    alert(" Enter valid Partyname ");
    partyname.focus();
    return false;
  }
  if (!isNaN(partyname.value)) {
    alert("only caharacters are allowed");
    partyname.focus();
    return false;
  }
  if (!partyname.value.match(letters)) {
    alert("Only characters are allowed..");
    partyname.focus();
    return false;
  }

  if (partyhead.value.length <= 0) {
    alert("Partyhead  is required");
    partyhead.focus();
    return false;
  }
  if (partyhead.value.length <= 2 || partyhead.value.length > 20) {
    alert(" Enter valid Partyhead Name ");
    partyhead.focus();
    return false;
  }
  if (!partyhead.value.match(letters)) {
    alert("only  characters are allowed...");
    partyhead.focus();
    return false;
  }

  if (position.value == "category") {
    alert("Party position is required...");
    position.focus();
    return false;
  }

  if (logo.value.length == " ") {
    alert("You forgot to upload party logo!");
    logo.focus();
    return false;
  } else {
    alert("party added succesfully");
    return true;
  }
}
