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
		/*
		 * Aca podias usar el método asignarRemiseras(r2,r1)
		 */
		self.asignarRemiseras(remiseraSegundoLugar, remiseraPrimerLugar)
	}
	
	method remiseraElegidaParaViaje(cliente,kms){
		
		if (remiseraPrimerLugar.precioViaje(kms, cliente) - remiseraSegundoLugar.precioViaje(kms, cliente) >= 30){ return remiseraSegundoLugar }
		else{ return remiseraPrimerLugar}
	}
}
