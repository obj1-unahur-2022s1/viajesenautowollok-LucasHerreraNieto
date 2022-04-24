import remiseras.*

object coperativa {
	var remiseraPrimerLugar
	var remiseraSegundoLugar
	
	method remiseraPrimerLugar() = remiseraPrimerLugar
	
	method remiseraSegundoLugar() = remiseraSegundoLugar
	
	method asignarRemiseras(remisera1, remisera2){
		remiseraPrimerLugar = remisera1
		remiseraSegundoLugar = remisera2
	}
	
	method cambiarPrimeraRemiseraPor(remisera){
		remiseraPrimerLugar = remisera
	}
	
	method cambiarSegundaRemiseraPor(remisera){
		remiseraSegundoLugar = remisera
	}
	
	method intercambiarRemiseras(){
		var auxiliar
		
		auxiliar = remiseraPrimerLugar
		remiseraPrimerLugar = remiseraSegundoLugar
		remiseraSegundoLugar = auxiliar
	}
	
	method remiseraElegidaParaViaje(cliente,kms){
		
		if (remiseraPrimerLugar.precioViaje(kms, cliente) - remiseraSegundoLugar.precioViaje(kms, cliente) >= 30){ return remiseraSegundoLugar }
		else{ return remiseraPrimerLugar}
	}
}
