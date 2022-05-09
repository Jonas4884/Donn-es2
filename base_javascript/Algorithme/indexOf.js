//Ceci est une algorithme servant à trouver l'index d'une parametre donné sur une INPUT

function index(word,search){

   //Lire toue les valeurs avec un boucle
   for(let i=0;i<word.length;i++){
      //Si l'element convient,retourne cette interratif(c'est aussi l'index du parametres)
      if(word[i]==search)
      return i  
   }
   //Sinon,par principe,on retournera -1 si aucune des nombres ne convient au paramètres
   return -1}

   //Exemple de INPUT et OUTPUT
console.log(index('word','a'));

//Fin de l'algorithme