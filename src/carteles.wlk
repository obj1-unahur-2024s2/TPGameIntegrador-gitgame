import wollok.game.*
import personajes.*
import oleadas.*
import entidad.*


class Cartel {
	var image
	const position = game.at(3,4)

	
	method position() = position
	method image() = image
	method cambiarImage(unaImagen) {image = unaImagen}
	
	
	
}


class CartelInicial inherits Cartel {
	
	
	method aparecer() = { => game.addVisual(self)}
	
	method desaparecer() = { => self.cambiarImagenes()}
	
	method cambiarImagenes() {
		if(image == "portadaNueva.png") {image = "teclas.png"}
		else if (image == "teclas.png") {
			game.removeVisual(self)
		    game.addVisual(cartelOleada)  
	        game.schedule(3000,{=>game.removeVisual(cartelOleada)})
			game.schedule(3000,{=>oleadas.comenzarOleada()})
		
		
	}
	
	}
}

object cartelOleada inherits Entidad  {
	var image = "oleada3.png"
	const position = game.at(3,4)
	
	method position() = position
	method image() = image
	
	method cambiarCartel(numero) {
		image = "oleada" + numero + ".png"
		if(numero == 0) { game.schedule(1500,{=>game.stop()})} else{}
	}
	
}


object cartelGameOver inherits Entidad {
	var image = "perder.png"
	const position = game.at(3,4)
	
	method image() = image
	method position() = position
	
	
}