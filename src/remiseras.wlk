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
	
	method precioViaje(kms,clientes){
		if(kms<=8){ return 100}
		else {return 200}
	}
}





