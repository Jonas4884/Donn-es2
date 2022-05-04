//Cette algorithme a pour but de réaliser une recherche dichotomique.C'est méthode qui consiste à rechecher un donnée par les index
//Ceci est consue comme une des méthodes de recherche les plus optimales

//Début de l'algorithme
function dicho(tab, search) {
 //Attributs
	let begin = 0;
	let end = tab .length - 1;

//Diviser le tableau en deux tant qu'on ne truve la valeur recherchée et length>1 
	while (begin != end) {
		mid =tab.length-1 ;
		position = begin + (mid / 2);
		position = Math.floor(position);
//Si un des valeur du tableau correspond aux valeur recherchées,ses conditions retournera cette valeur
		if (search == tab[position]) {
			return position;
		} else if (search > tab [position]) {
			begin = position;
		} else if (search < tab [position]) {
			end = position;
		}
	}

  //Sinon s'il n'est pas dans ce tableau,il faut retourner -1 comme le principe de recherche d'index
	return -1;
}

//Exemple d'entrée/sortie
var verlan = [9, 3, 2, 5, 9, 2];
console.log(dicho(verlan, 10));