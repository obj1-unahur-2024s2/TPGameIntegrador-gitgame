import wollok.game.*
import personajes.*
import pantalla.*
import entidad.*


object moneda inherits Entidad  {
	
	var property image = "moneda.png"
	var property position =game.at(2.randomUpTo(13),2.randomUpTo(13))
	var y = position.y()
	var x = position.x()
	
	
	method y() = y
	
	method x() = x
	
	
	method aparecer() {
		if(!game.hasVisual(moneda)) {
			self.noAparecerEnMuro()
		} else {
			
		}
	}
	
	method noAparecerEnMuro() {
		if(self.hayMuro(self.position())) {
		position = game.at(x,y - 3)
	} else {
		game.addVisual(self)
		x =  position.x()
		y =  position.y()
	}
	}
	
	method recibirDanio() {
		game.removeVisual(self)	
		astronauta1.sumarCantidadDeVidas()
			
	}
	
	override method esEnemigo() = true

	

	
	
}





