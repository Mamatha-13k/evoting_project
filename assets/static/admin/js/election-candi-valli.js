function election_Validation() {
   var election = document.election_candi_form.election;
   var party = document.election_candi_form.party;
   var candidate = document.election_candi_form.candidate;

   if (election.value == "elections") {
      alert("election  is required...");
      election.focus();
      return false;
   }
   if (party.value == "parties") {
      alert("party  is required...");
      party.focus();
      return false;
   }
   if (candidate.value == "candidate") {
      alert("candidate  is required...");
      candidate.focus();
      return false;
   } else {
      alert("candidates are added to election to succesfully...")
      return true;
   }







}