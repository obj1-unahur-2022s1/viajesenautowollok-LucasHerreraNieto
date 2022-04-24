/*
 * definir remiseras y clientes.
 */ 
 /*CLIENTAS */
 object ludmila{
 	method precioKilometro()= 18
 }
 
 object anaMaria{
 	var estaEcomicamenteEstable = true
 	
 	method precioKilometro(){
 		if(estaEcomicamenteEstable){
 			return 30
 		}
 		else{
			return 25
 		}
 	}
 	
 	method estadoEconomico() = estaEcomicamenteEstable
 	
 	method cambiarEstadoEconomico(){
 		estaEcomicamenteEstable = !estaEcomicamenteEstable
 	}
 }

object teresa {
	var precioKilometro = 22
	
	method precioKilometro () = precioKilometro
	
	method cambiarPrecioKilometro(precioNuevo){
		precioKilometro = precioNuevo
	}
}

object melina {
	var clienta 
	
	method trabajaPara(clientaContrata){
		clienta = clientaContrata
	}
	
	method precioKilometro() = (clienta.precioKilometro()-3)

}

/*REMISERAS */

object roxana{
	
	method precioViaje(kms,cliente){
		return kms*cliente.precioKilometro()
	}
}

object gabriela{
	
	method precioViaje(kms,cliente){
		return (kms*cliente.precioKilometro())*1.2
	}
}

object mariela{
	
	method precioViaje(kms,cliente){
		return 50.max(kms*cliente.precioKilometro())
		
	}
}

object juana{
	
	method precioViaje(kms,cliente){
		if(kms<=8){ return 100}
		else {return 200}
	}
}

object lucia{
	var remplazo
	
	method esRemplazo(remisera){
		remplazo = remisera
	}
	
	method precioViaje(kms,cliente){
		return remplazo.precioViaje(kms,cliente)
	}
}



