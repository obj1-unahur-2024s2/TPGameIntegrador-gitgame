import enemigos.*
import torres.*
import pantalla.*
class Mapa{
    var enemigos = []
    var torres = []
    var camino = new Camino()
    var pantalla = new Pantalla()

    method iniciar(){
        camino.definirRuta()
        self.crearEnemigos()
        self.crearTorres()
        pantalla.mostrarEstado()
    }

    method crearEnemigos(){
        enemigos.add(new Enemigo()) // Una cantidad de enemigos.
        enemigos.add(new Enemigo()) // Más enemigos
    }

    method crearTorres(){
        // Quizas crear torres en posiciones especificas indicadas en el mapa
        torres.add(new Torre()) // Adentro de los parentesis de Torre, agregar la posicion indicada por el juego obviamente
    } // No se pq tira error ahora, cuando lo hice estaba todo joya

    method actualizar(){
        enemigos.forEach({e => e.mover()})
        torres.forEach({t => t.atacar(enemigos)}) // El forEach mas que nada es para mandarle el mensaje mover y atacar
    }

    // Falta un metodo como de pausa para que se pueda ver el juego sin estar jugando
}



class Camino {
var ruta = []

method definirRuta(){
    ruta = [1, 4, 9, 7, 8] // No lo se, pero lo dejo como para tener una idea que anotar aca
}
}


// No se aca ya me perdi muchisimo, empece a las 7:00 y deje en 10:30

// Demasiados errores que corregir, arreglarlos dsp

// Para la proxima pensar en otro juego, demasiada logica tiene un juego de Defensa de Torres

// Bueno, aca termino mi aventura xd, primero hacer el tp grupal y dsp arreglar esto de alguna manera

// Fui medio boludo en armar todo al mismo tiempo, ahora estoy perdido y practicamente no avance nada

// Anotar aca abajo las cosas que faltan por hacer todavia