function candi_validation() {
  var name = document.candi_form.name;
  var party = document.candi_form.party;
  var fathername = document.candi_form.fathername;
  var phone = document.candi_form.phone;
  var gmail = document.candi_form.gmail;
  var caste = document.candi_form.caste;
  var qualification = document.candi_form.qualification;
  var password = document.candi_form.password;
  var aadharcard = document.candi_form.aadharcard;
  var castecerfi = document.candi_form.castecerfi;
  var passphoto = document.candi_form.passphoto;
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
  if (party.value.length <= 0) {
    alert("partyname is required");
    party.focus();
    return false;
  }
  if (party.value.length <= 2 || party.value.length > 20) {
    alert(" Enter valid partyname ");
    party.focus();
    return false;
  }
  if (!party.value.match(letters)) {
    alert("enter alphabets at party...");
    party.focus();
    return false;
  }

  if (fathername.value.length <= 0) {
    alert("fathername is required"); 
    fathername.focus();
    return false;
  }
  if (fathername.value.length <= 2 || party.value.length > 20) {
    alert(" Enter valid fathername ");
    fathername.focus();
    return false;
  }
  if (!fathername.value.match(letters)) {
    alert("enter alphabets at fathername...");
    fathername.focus();
    return false;
  }
  if (phone.value.length <= 0) {
    alert("phone number is required");
    phone.focus();
    return false;
  }
  if (isNaN(phone.value)) {
    alert("please enter digits for phonenumber");
    phone.focus();
    return false;
  }
  if (phone.value.length != 10) {
    alert("Phonenumber must contain 10 digits");
    phone.focus();
    return false;
  }
  if (gmail.value.length <= 0) {
    alert("please enter gmail");
    gmail.focus();
    return false;
  }

  if (!gmail.value.match(mailformat)) {
    alert("invalid gmail");
    gmail.focus();
    return false;
  }
  if (caste.value.length <= 0) {
    alert("caste is required");
    caste.focus();
    return false;
  }

  if (qualification.value == "qualification") {
    alert("Qualification  is required...");
    qualification.focus();
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
  if (aadharcard.value.length == "") {
    alert("please upload your Aadharcard");
    aadharcard.focus();
    return false;
  }
  if (castecerfi.value.length == "") {
    alert("please upload your CasteCertificate");
    castecerfi.focus();
    return false;
  }
  if (passphoto.value.length == "") {
    alert("please upload your Passphoto");
    passphoto.focus();
    return false;
  } else {
    alert("Candidate added Successfully");
    return true;
  }
}
