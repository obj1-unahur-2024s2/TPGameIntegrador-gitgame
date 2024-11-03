import monedas.*
class Enemigo {
    
    var posicion = 0

    method mover(){ // Para mover el enemigo, nos faltaba ya desde antes jajaja
        posicion += 1
    }


    method nombre(unEnemigo){
        return unEnemigo.nombre()
    }

    method salud(unEnemigo){
        return unEnemigo.salud()
    }

    method movilidad(unEnemigo){
        return unEnemigo.movilidad()
    }

    method danio(unEnemigo){
        return unEnemigo.danio()
    }

    method cantDeMonedas(unEnemigo){
        return unEnemigo.cantDeMonedas()
    }

    method recibirAtaque(unEnemigo, unaTorre){
        self.salud(unEnemigo) - unaTorre.danio()
        if(self.salud(unEnemigo) <= 0){
            self.morir(unEnemigo)
        } 
    }

    method morir(pantalla){
        var monedas = new Monedas()
        monedas.recoger(pantalla)
    }

} 

class Esqueleto{
    const property nombre = "Esqueleto"

    var movilidad = 5

    method movilidad() = movilidad


    method salud(){
        return 8
    } 

    method danio(){
        return 2
    }

    method cantDeMonedas(){
        return 5
    }
}

class Duende{
    const property nombre = "Duende"

    var movilidad = 15

    method movilidad(){
        return movilidad
    }

    method salud(){
        return 5
    } 

    method danio(){
        return 1
    }

    method cantDeMonedas(){
        return 3
    }
}

class Gargola{
    const property nombre = "Gargola"
    var movilidad = 5

    method salud(){
        return 12
    } 

    method movilidad(){
        return movilidad
    }

    method danio(){
        return 2
    }

    method cantDeMonedas(){
        return 5
    }
}

class Golem{
    const property nombre = "Golem"
    var movilidad = 4

    method movilidad(){
        return movilidad
    }

    method salud(){
        return 60
    } 

    method danio(){
        return 5
    }

    method cantDeMonedas(){
        return 7
    }
}

class Jefe{
    const property nombre = "Jefe"
    var movilidad = 5

    method movilidad(){
        return movilidad
    }

    method salud(){
        return 45
    } 

    method danio(){
        return 100
    }

    method cantDeMonedas(){
    
    }
}

/* Preguntas sobre el codigo
1. El tema de la movilidad, como implementarlo en los enemigos.
2. La movilidad reducida por la torre de hielo.
3. Como poder generar enemigos al azar para el mapa.
4. 
*/

/* Cosas que nos faltan
 1. Todavia me falta como reducir la velocidad al disparar con una torre de hielo
*/


