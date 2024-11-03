

class Pantalla {
    var cantMonedas = 50 // Cantidad inicial de monedas, cambiarlo si es necesario
    var vidaNucleo = 20 // Lo mismo de arriba pero con el nucleo

    method cantMonedas(){
        return cantMonedas
    }

    method mostrarEstado(){  
        "Monedas" + cantMonedas
        "Vida del núcleo" + vidaNucleo
    }  // Mostrar el estado actual del juego, es como decir que se esta actualizando

    method actualizarMonedas(cantidad){
        monedas = monedas + cantidad
        if(monedas < 0 ){
            monedas = 0
        }
        // Evitar que las monedas sean negativas
        // Este metodo ya esta hecho en monedas, fijarse como conectarlo
        // No se pq tira error, lo hice antes y estaba todo joya
    }

    // Metodo para reducir la vida del nucleo

    method reducirVida(cantidad){
        vidaNucleo = vidaNucleo - cantidad
        if(vidaNucleo < 0){
            vidaNucleo = 0
            self.error("¡El núcleo ha sido destruido!") // Jajajajaja, mandarle un eror al perder??? No creo que este bien xd
        }
    }

    // Es necesario un metodo para saber si el juego sigue continuando? Lo dejo por las dudas

    /*
    method juegoContinua(){
        return vidaNucleo > 0}
    */

}