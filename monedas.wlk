class Monedas {
    var cantMonedas

    method cantMonedas() = cantMonedas


    // Metodo para agarrar las monedas

    method recoger(pantalla){
        pantalla.actualizarMonedas(self.cantMonedas())
        "Has recogido" + self.cantMonedas() + "monedas"
    } // Servirá como para mandar este mensaje? Espero que no ocupe toda la pantalla
}