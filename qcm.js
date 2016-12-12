  function afficher(){
  var reponseok = document.getElementsByTagName('input');
  var reponseLength = reponseok.length;
  var reponses = [];
  for(var i = 0; i < reponseLength; i++){
		  if(reponseok[i].type == 'radio' && reponseok[i].checked){
			reponses.push(reponseok[i].name);
		  }
	  
  }
			if(reponses.length == 0) {
			
			  alert('Aucunes reponses soumises');
			  return false;
			}
			  else if(reponses.length < 10) {
		
	  alert('Veuillez repondre à toutes les questions');
			return false;
			}
			  else if(10 == reponses.length){
			  alert('Merci d\'avoir repondu à ce QCM!');
			  return true;
			}
			else{
			  alert('Ajib');
			  return false;
			}
  
}