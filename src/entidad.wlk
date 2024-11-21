import wollok.game.*

/* 
 * Todo es una entidad menos el fondo.
 * - ID unico para remover tickEvents
 * - toda entidad puede borrarse a si mismo y sus eventos
 * -                    checkear si hay un muro
 *                      saber si es un muro, por defecto FALSE
 * 
 * Aca irian todo lo que sea comun a los objetos del game
 * Proporciona métodos para determinar si hay muros o enemigos en posiciones específicas, lo que podría ser útil para la lógica de colisiones, movimientos o ataques.
 * */ 
 
class Entidad {
	const id = (game.allVisuals().size() + 1).toString()
	
	method hayMuro(posicionACheckear) = game.getObjectsIn(posicionACheckear).any({obj  => obj.esMuro()})
	method hayEnemigo(posicion) = game.getObjectsIn(posicion).any({obj => obj.esEnemigo()})
	method esMuro() = false
	
	method borrarse(){
		game.removeTickEvent(id) 
		game.removeVisual(self) // Creo que se deletea solo al salir del mapa !
	}
	method esEnemigo() = false
	
}