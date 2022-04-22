const valor = 10.5
var funcionarios = 4
var horas = 8

const resultado = valor * funcionarios * horas

console.log("O valor total sera de R$"+ resultado)


// ==>>>>>>>>>>>>>

const salgados = 7
const agua = 0.5
const cafe = 0.2

const convidados = 0


  if (convidados <= 350){
    console.log("Qtd cafe: "  + (convidados * cafe))
    console.log("Qtd agua: " + (convidados * agua))
    console.log("Qtd salgados: " + (convidados * salgados))

  }
  else if( convidados <= 0){

    console.log("Digite um valor valido")
  }
  else{

    console.log("Valor maior que o desejado")
  }
  

