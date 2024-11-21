import wollok.game.*
import personajes.*
import carteles.*

class Oleada {
	const aliens
	
	method cantidadAliens() = aliens.size()
	
    method comenzarOleada(){
		self.agregarVisuales()
		aliens.forEach({alien => game.onTick(800.randomUpTo(1000),"alienMoviendose",{alien.irHaciaAstronauta() })})
	}
	
	method removerAlien(alien){ aliens.remove(alien)}
	
	method agregarVisuales(){ aliens.forEach({alien => game.addVisual(alien)}) }
	method reiniciarAliens() {aliens.forEach({alien => alien.reiniciar()})}
	
	method matarTodosLosAliens() {
		aliens.forEach({a =>a.morir()})
	}
}

object oleadas {
	
	const oleadaDos = new Oleada(aliens=[new AlienBase(),new AlienBase(),new AlienBase(), new AlienBase(), new AlienBase(),new AlienBase(), new AlienBase(), new AlienBase()])
	const oleadaUno = new Oleada(aliens=[new AlienBase(), new AlienBase(), new AlienBase(),new AlienBase(), new AlienBase(), new AlienBase()])
	const oleadaTres = new Oleada(aliens=[new AlienBase(), new AlienBase(), new AlienBase(), new AlienBase(), new AlienBase(),new AlienBase(), new AlienBase(), new AlienBase(), new AlienBase(), new AlienBase(),new AlienBase(), new AlienBase(), new AlienBase()])
	const property oleadas = [oleadaUno,oleadaDos,oleadaTres]
	
	method agregarOleada(unaOleada) {oleadas.add(unaOleada)}
	method hayAliens() = oleadas.first().cantidadAliens() != 0
	
	method removerAlien(alien) { oleadas.first().removerAlien(alien) }
	
	
	method cambiarDeOleada(){
		oleadas.remove(oleadas.first())
		
		cartelOleada.cambiarCartel(oleadas.size())
		game.addVisual(cartelOleada)
		game.schedule(1000,{=>game.removeVisual(cartelOleada)})
		game.schedule(1000,{ =>self.comenzarOleada()})
	}
	
	method comenzarOleada(){
		if(!oleadas.isEmpty()) {
			game.schedule(1500,{=>oleadas.first().comenzarOleada()}) 
			
		}
	}
	
	method reiniciar() {
		oleadaUno.reiniciarAliens()
		oleadaDos.reiniciarAliens()
		oleadaTres.reiniciarAliens()
		self.agregarOleada(oleadaUno)
		self.agregarOleada(oleadaDos)
		self.agregarOleada(oleadaTres)
	}
	
	
	method matarAliensDeOleada() {
		 oleadaUno.matarTodosLosAliens() 
		oleadaDos.matarTodosLosAliens() 
		oleadaTres.matarTodosLosAliens() 
	}
	
}