import personas.*
class Habitacion {
	const ocupantesDeCasa =  new List()
	method nivelDeConfort(unaPersona){
		return 10
	}
}

class UsoGeneral inherits Habitacion {
	
}

class Dormitorio inherits Habitacion{
	const ocupantesDormitorio = new List()
	
	override method nivelDeConfort(unaPersona){
		if (self.duerme_Aca(unaPersona)){
			return super(unaPersona) + 10/ocupantesDormitorio.size()
		}
		else{
			return super(unaPersona)
		}
	}
	
	method duerme_Aca(unaPersona){
		return ocupantesDormitorio.any{o => o == unaPersona} 
	}
}

class Banio inherits Habitacion{
	override method nivelDeConfort(unaPersona){
		if ( self.hayPersonaMenorA(4)){
			return super(unaPersona) + 2
		}
		else{
			return super(unaPersona) + 4
		}
	}
	
	method hayPersonaMenorA(unaEdad){
		return ocupantesDeCasa.any({ o => o.edad() <= unaEdad})
	}
}

class Cocina inherits Habitacion{
	override method nivelDeConfort(unaPersona){
		
	}
	
	method sabeCocinar(unaPersna){
		
	}
}
