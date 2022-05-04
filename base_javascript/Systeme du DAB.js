//Avant d'executer l'algorithme,il faut installer prompt-sync,
//Commande dans le terminal du dossier de travail: npm install prompt-sync
const prompt=require("prompt-sync")()

let solde=0;
//Début de l'algorithme

//Menu
while(true){
    console.log("1:Versement \n 2:Retrait \n 3:Consultez \n 4:Quitter");
    let choix=+prompt("Quelle service voulez-vous:")

    //Dépot
if(choix==1){
    let versement=+prompt("La montant à verser:")
    solde+=versement
    console.log("Vous avez verser une montant de "+solde);
}
    //Retrait
if (choix==2){
    let retrait=+prompt("Quelle montant voulez-vous retirer: ")
    if(retrait<=solde){
    console.log("Vous avez fait un retrait de")+solde;
    }else console.log("Votre solde est insuffisant,Veillez verser");
}
    //Consultation de solde
if (choix==3){
    console.log("Votre solde actuelle est"+solde);
}
    //Quitter
if (choix==4)
console.log("Merci de votre visite,à bientot");
break}
 
//Fin de l'algorithme