
function dicho(tab, search) {
	let begin = 0;
	let end = tab .length - 1;
	while (begin != end) {
		mid =tab.length-1 ;
		position = begin + (mid / 2);
		position = Math.floor(position);

		if (search == tab[position]) {
			return position;
		} else if (search > tab [position]) {
			begin = position;
		} else if (search < tab [position]) {
			end = position;
		}
	}

  

	return -1;
}
var verlan = [9, 3, 2, 5, 9, 2];
console.log(dicho(verlan, 10));