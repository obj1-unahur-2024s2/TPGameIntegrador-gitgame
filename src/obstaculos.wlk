import personajes.*
import entidad.*
import wollok.game.*

class Obstaculos inherits Entidad {
	var image = "Pared1.png"
	var position 
	
	override method esMuro() = true
	
	method image() = image
	
	method image(unaImagen){image = unaImagen}
	
	method position() = position
	
	method position(unaPos){position = unaPos}
	
	//method tipo()
	
//	method esDeTipo(unTipo) = self.tipo() == unTipo
	
	
}
