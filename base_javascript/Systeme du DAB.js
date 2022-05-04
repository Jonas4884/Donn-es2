const prompt=require("prompt-sync")()

let solde=0;
while(true){
    console.log("1:Versement \n 2:Retrait \n 3:Consultez \n 4:Quitter");
    let choix=+prompt("Quelle service voulez-vous:")


if(choix==1){
    let versement=+prompt("La montant à verser:")
    solde+=versement
    console.log("Vous avez verser une montant de "+solde);
}
if (choix==2){
    let retrait=+prompt("Quelle montant voulez-vous retirer: ")
    if(retrait<=solde){
    console.log("Vous avez fait un retrait de")+solde;
    }else console.log("Votre solde est insuffisant,Veillez verser");
}
if (choix==3){
    console.log("Votre solde actuelle est"+solde);
}
if (choix==4)
break}