/*
 * definir remiseras y clientes.
 */ 
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

