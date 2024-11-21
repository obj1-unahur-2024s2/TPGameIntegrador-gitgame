import wollok.game.*
import entidad.*
import disparo.*
import oleadas.*
import pantalla.*
import carteles.*
import moneda.*


/*PERSONAJE ASTRONAUTA*/
object astronauta1 inherits Entidad {
	
	const property vidas = []
	
	var cantidadDeVidas = 10
	var property image = "astronauta.png"
	var property position = game.at(11,10)
	var mirada = "abajo"
	var recibioDanio = false
	var y = position.y()
	var x = position.x()
	var acabaDeDisparar = false
	
	
	
	method reiniciar() {
		cantidadDeVidas = 10
		image = "astronauta.png"
		position = game.at(11,10)
		mirada = "abajo"
		recibioDanio = false
		y = position.y()
		x = position.x()
		acabaDeDisparar = false
	}
	method cantidadDeVidas() = cantidadDeVidas
	
	
	method agarrarMoneda() {}
	
	method sumarCantidadDeVidas() { cantidadDeVidas = cantidadDeVidas + 2}
	
	method y() = y
	
	method x() = x
	
	method agregarVida(unaVida) { vidas.add(unaVida) }
      
    method sacarVida(unaVida) { vidas.remove(unaVida)}  
    
    method cambiarDanio() { recibioDanio = false }
	
	
/*MOVIMIENTOS DEL ASTRONAUTA */

    method irALaDerecha() { 
    const	nuevaPosition  = position.right(1)
    if(!self.hayMuro(nuevaPosition)){
       	   image = "astronautaMiraDer.png"
           mirada = "derecha"
           position = position.right(1)
           x = position.x()
           y = position.y()
       }
    }
    
    
    method irALaIzquierda() {
    	
    const	nuevaPosition  = position.left(1)
    
    if(!self.hayMuro(nuevaPosition)){
    	 image = "astronautaMiraIzq.png"
    	 mirada = "izquierda"
    	 position = position.left(1)
    	 x = position.x()
         y = position.y()
       }
    
    }
    
    method irArriba() {
    	const	nuevaPosition  = position.up(1)
       if(!self.hayMuro(nuevaPosition)){
    	image = "astronautaMiraAtras.png"
    	mirada = "arriba"
    	position = position.up(1)
    	 x = position.x()
         y = position.y()
        }
    }
    
    method irAbajo() {
    	const	nuevaPosition = position.down(1)
       if(!self.hayMuro(nuevaPosition)){
    	image = "astronauta.png"
    	mirada = "abajo"
    	position = position.down(1)
    	 x = position.x()
         y = position.y()
        }
    }
    
/*FIN MOVIMINETOS ASTRONAUTA */


/*DEFENDERSE*/
  method disparar(){
  	if(!acabaDeDisparar) {
    const disparo = new Disparo(inicial=position,mirada=mirada)
    self.cambiarDisparar()
    game.schedule(500, {=> acabaDeDisparar = false})

}
  }
  
  method  cambiarDisparar() {  acabaDeDisparar = true}
  
/*FIN DE DEFENDERSE*/
  
method recibirDanio() {
 	if(!recibioDanio ) {
 	cantidadDeVidas = cantidadDeVidas - 1
	recibioDanio = true
 	vidas.forEach({v => if(game.hasVisual(v)){v.perderVida()}})
 	game.schedule(1000, {=> self.cambiarDanio()})
 	}
 	if(cantidadDeVidas == 0) {game.addVisual(cartelGameOver)}
 	}
 	
}



class Vida inherits Entidad{
	var numeroVida 
	var  position = game.at(numeroVida,13)
	var property image = "corazonLLeno.png"
	
	
	method position() = position
	
	method perderVida() {
		if(astronauta1.cantidadDeVidas() < numeroVida) {
		image = "corazonVacio.png"	
		}
	}
   method reiniciar() {
   	   position = game.at(numeroVida,13)
   	   image = "corazonLLeno.png"
   }
   
   method sumarVida() {
   	if(astronauta1.cantidadDeVidas() > numeroVida) {
		image = "corazonLLeno.png"	
		}
   }
}


/*PERSONAJE ALIENS*/

class Alien inherits Entidad{
	var resistencia
	var property image = "alien1.png"
	var property position =game.at(2.randomUpTo(13),2.randomUpTo(13))
	var y = position.y()
	var x = position.x()
	const property esAlien = true
	
	method reiniciar() {
		image = "alien1.png"
		position =game.at(2.randomUpTo(13),2.randomUpTo(13))
		y = position.y()
		x = position.x()
		
	}
	method atacar()
	
	method agarrarMoneda() {}
	
	override method esEnemigo() = true
	
	method y() = y
	
	method x() = x
	
	method morir() {
		game.removeVisual(self)
		oleadas.removerAlien(self)
	}
	
	method recibirDanio() {
		resistencia -= 1
		if(resistencia <= 0){
			self.morir()
		}
	}
	
	
/*PERSEGUIR A ASTRONAUTA*/	

method yMasUno() {
	    const nuevaPosicion = game.at(x,y + 1)
	    if(!self.hayEnemigo(nuevaPosicion)){
	    	position = nuevaPosicion
		    y = position.y()
		    image = "alien1Arriba.png"
	    }
	}
	
method yMenosUno() {
	    const nuevaPosicion = game.at(x,y - 1)
	    if(!self.hayEnemigo(nuevaPosicion)){
	    	position = nuevaPosicion
		    y = position.y()
		    image = "alien1.png"
	    }
	}
	
	
method xMasUno() {
	    const nuevaPosicion = game.at(x + 1,y)
	    if(!self.hayEnemigo(nuevaPosicion)){
	    	position = nuevaPosicion
		    y = position.y()
		    image = "alien1Derecha.png"
	    }

	}
	
	
method xMenosUno() {
	    const nuevaPosicion = game.at(x - 1,y)
	    if(!self.hayEnemigo(nuevaPosicion)){
	    	position = nuevaPosicion
		    y = position.y()
		    image = "alien1Izquierda.png"
	   }

	}
	

	
	
method irHaciaAstronauta() {
	   			 self.irHaciaYDeAstro()
	   			 self.irHaciaXDeAstro()
  }
	
method irHaciaYDeAstro() {
		if (astronauta1.y() > position.y() ) {self.yMasUno()}
  	    else if(astronauta1.y() < position.y()) {self.yMenosUno()}
}
	
method irHaciaXDeAstro() {
	if (astronauta1.x() > position.x() ) {self.xMasUno()}
  	else if(astronauta1.x() < position.x()) {self.xMenosUno()}
}
/*FIN PERSEGUIR ASTRONAUTA */	
}


class AlienBase inherits Alien {
	const danio = 1
	
	method initialize(){
		resistencia = 1
	}
	
	override method atacar() {}
}


class AlienResistente inherits Alien {
	const danio = 1
	
	method initialize(){ resistencia = 3 }
	
	override method atacar() {}
}










