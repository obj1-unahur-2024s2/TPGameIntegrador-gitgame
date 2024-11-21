import wollok.game.*
import entidad.*
import pantalla.*

class Disparo inherits Entidad {
	
	const mirada;
	const inicial;
	var property position = self.calcularPosicionDeDisparo(inicial) // Es un bloque mas que la posicion del personaje
	var property disparoVelocidad = 100

	method image() = 'disparo_' + mirada + '.png' 
	

	// Suma o resta 1 casillero segun la direccion del proyectil.
	method posicionDeDisparoX()=if(mirada=='derecha'){ 1 } else { -1 }
	
	method posicionDeDisparoY()=if(mirada=='arriba'){ 1 } else { -1 }
	
	method calcularPosicionDeDisparo(posicionInicial)=if(['derecha','izquierda'].any({valor => valor == mirada})){ posicionInicial.right(self.posicionDeDisparoX()) } else { posicionInicial.up(self.posicionDeDisparoY()) }
	
	// Se fija si no salio del tablero o si hay un muro en la nueva posicion
	method movimiento(){
		const nuevaPosicion = self.calcularPosicionDeDisparo(position)
		if(self.fueraDeRangoX() or self.fueraDeRangoY() or self.hayMuro(nuevaPosicion)){
			game.removeTickEvent("bala") 
		   game.removeVisual(self)
		} else {
			self.position(nuevaPosicion)
		}
	}

	method fueraDeRangoX() = self.position().x() < 0 or self.position().x() > 15 // aca van los valores de HEIGHT
	
	method fueraDeRangoY() = self.position().y() < 0 or self.position().y() > 15 // aca van los valores de WIDTH
	
	
	// Al iniciarse agrega el visual y el evento de movimiento, tambien verifica si hay un muro en la posicion inicial.
	method initialize(){
		if(!self.hayMuro(self.position())){
		   game.addVisual(self)
		   game.onTick(self.disparoVelocidad(), "bala", { => self.movimiento()})
		   game.onCollideDo(self, { elemento => if(elemento.esEnemigo()){
		   	elemento.recibirDanio()
		   	game.removeTickEvent("bala") 
		   if(game.hasVisual(self)){ game.removeVisual(self)}
		   } else {}})
		}
	}
	
}
