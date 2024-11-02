class Enemigo {
    
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

    method recibirAtaque(unEnemigo,unaTorre){
        self.salud(unEnemigo) - unaTorre.danio()
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

*/


