import enemigos.*
import pantalla.*

class Torre {
 

    method nombre(unaTorre){
        return unaTorre.nombre()
    }

    method danio(unaTorre){
        return unaTorre.danio()
    }

    method velocidadDisparo(unaTorre){
        return unaTorre.velocidadDisparo()
    }

    method velocidadCarga(unaTorre){
        return unaTorre.velocidadCarga()
    }

    method cantMunicion(unaTorre){
        return unaTorre.cantMunicion()
    }

    method costoDeMonedas(unaTorre){
        return unaTorre.costoDeMonedas()
    }

    method nvDeLaTorre(unaTorre){
        return unaTorre.nivel()
    }
}

class TorreDeArqueros {
    const property nombre = "Torre de Arqueros"

    var nivel = 1
    var danio = 3 * nivel 
    var velocidadDeDisparo = 7 - nivel
    var velocidadCarga = 8 - nivel
    var property cantMunicion = 10 

    method nvDeLaTorre(){
        return 3.min(nivel)
    }

    method mejorarTorreAlNivel2(){
      if(pantalla.cantDeMonedas > 15 )  
        nivel += 1
    }

    method mejorarTorreAlNivel3(){
      if(pantalla.cantDeMonedas > 30 )  
        nivel += 1
    }

    method danio(){
        return danio 
    }

    method velocidadDeDisparo(){
        return velocidadDeDisparo
    }

    method velocidadCarga(){
        return velocidadCarga
    }

    method recargar(){
         if(cantMunicion == 0){
            cantMunicion += 10
        }
    }

    method costoDeMonedas(){
        return 10
    }

}

class TorreDeHielo {
    const property nombre = "Torre de Hielo"

    var nivel = 1
    var danio = 2 * nivel 
    var velocidadDeDisparo = 7 - nivel
    var velocidadCarga = 8 - nivel
    var property cantMunicion = 4 

    method nvDeLaTorre(){
        return 3.min(nivel)
    }

    method mejorarTorreAlNivel2(){
      if(pantalla.cantDeMonedas > 40 )  
        nivel += 1
    }

    method mejorarTorreAlNivel3(){
      if(pantalla.cantDeMonedas > 50 )  
        nivel += 1
    }

    method danio(){
        return danio 
    }

    method velocidadDeDisparo(){
        return velocidadDeDisparo
    }

    method velocidadCarga(){
        return velocidadCarga
    }

    method recargar(){
         if(cantMunicion == 0){
            cantMunicion += 4
        }
    }

    method efectoRelantizar(){
     enemigos.movilidad()
    }  

    method costoDeMonedas(){
        return 25
    }

}

class TorreBallesta {
    const property nombre = "Torre Ballesta"

    var nivel = 1
    var danio = 7 * nivel 
    var velocidadDeDisparo = 6 - nivel
    var velocidadCarga = 12 - nivel
    var property cantMunicion = 15 

    method nvDeLaTorre(){
        return 3.min(nivel)
    }

    method mejorarTorreAlNivel2(){
      if(pantalla.cantDeMonedas > 50 )  
        nivel += 1
    }

    method mejorarTorreAlNivel3(){
      if(pantalla.cantDeMonedas > 70 )  
        nivel += 1
    }

    method danio(){
        return danio 
    }

    method velocidadDeDisparo(){
        return velocidadDeDisparo
    }

    method velocidadCarga(){
        return velocidadCarga
    }

    method recargar(){
         if(cantMunicion == 0){
            cantMunicion += 15
        }
    }

    method costoDeMonedas(){
        return 50
    }

}

class TorreCanon {
    const property nombre = "Torre de Arqueros"

    var nivel = 1
    var danio = 3 * nivel 
    var velocidadDeDisparo = 7 - nivel
    var velocidadCarga = 8 - nivel
    var property cantMunicion = 2 

    method nvDeLaTorre(){
        return 3.min(nivel)
    }

    method mejorarTorreAlNivel2(){
      if(pantalla.cantDeMonedas > 75 )  
        nivel += 1
    }

    method mejorarTorreAlNivel3(){
      if(pantalla.cantDeMonedas > 90 )  
        nivel += 1
    }

    method danio(){
        return danio 
    }

    method velocidadDeDisparo(){
        return velocidadDeDisparo
    }

    method velocidadCarga(){
        return velocidadCarga
    }

    method recargar(){
        if(cantMunicion == 0){
            cantMunicion += 2
        }
    }

    method costoDeMonedas(){
        return 70
    }

}  
/* Preguntar: Como podemos aplicar un retraso a la hora de recargar con el tema de la VelocidaDeRecarga..
2. Lo mismo que el punto de arriba pero la velocidad de disparo.
3. El tema de recarga, si esta bien hecho el method 
4. Si las torres van en forma de listas
5. Si en vez de que las torres sean objetos, que sean clases. 

*/

/* Cosas que nos faltan:
1. El method de atacar si un enemigo esta cerca.
2. Nos falta la torre nucleo
*/

// ------------------------------------------------------------------------------------------------------//




