function getUrlVars() {
var vars = {};
var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
vars[key] = value;
});
return vars;
}
var reponses = [];
var reponseLength = getUrlVars().length;
for(var i = 1; i < 11; i++){
	reponses.push(getUrlVars()['question'+i].replace(/\+/g, ' '));
  
}


(function(){
  var note = 0;
  var greponse = [];
  var reponseok = document.getElementsByTagName('dd');
  var reponseLength = reponseok.length;
  for(var i = 0; i < reponseLength; i++){
	  if((reponseok[i].textContent || reponseok[i].innerText)  == reponses[i]){
		greponse.push(i+1);
			note++;
		  }
  }
  var noteDiv = document.getElementById('notes');
  var text = 'Note \n'+note+'/10';
  noteDiv.innerHTML = text;
  if(greponse.length > 1){
  alert('Vos bonnes reponses:  '+greponse);
  }else if(greponse.length == 1){
	alert('Une seule bonne reponse:  '+greponse);
  }else{
	alert('Aucune bonne reponse');
  }
})();