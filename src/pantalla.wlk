import wollok.game.*
import personajes.*
import oleadas.*
import obstaculos.*
import carteles.*
import moneda.*

object pantalla {

//VIDAS
	const vida1 = new Vida(numeroVida = 1)
	const vida2 = new Vida(numeroVida = 2)
	const vida3 = new Vida(numeroVida = 3)
	const vida4 = new Vida(numeroVida = 4)
	const vida5 = new Vida(numeroVida = 5)
	const vida6 = new Vida(numeroVida = 6)
	const vida7 = new Vida(numeroVida = 7)
	const vida8 = new Vida(numeroVida = 8)
	const vida9 = new Vida(numeroVida = 9)
	const vida10 = new Vida(numeroVida = 10)
	
	 const cartelInicio = new CartelInicial( image = "portada.png") 
	
method empezar() {
		
	game.ground("sueloNaveEspacial.png")
	game.height(14)
	game.width(15)
	
/*VIZUALIZACIONES*/	

	game.addVisual(astronauta1)
	
	astronauta1.agregarVida(vida1)
	astronauta1.agregarVida(vida2)
	astronauta1.agregarVida(vida3)
	astronauta1.agregarVida(vida4)
	astronauta1.agregarVida(vida5)
	astronauta1.agregarVida(vida6)
	astronauta1.agregarVida(vida7)
	astronauta1.agregarVida(vida8)
	astronauta1.agregarVida(vida9)
	astronauta1.agregarVida(vida10)
	
	
//MURO DE CONTENCION
	game.addVisual(new Obstaculos(position =  game.at(0,0)))
	game.addVisual(new Obstaculos(position =  game.at(0,1)))
	game.addVisual(new Obstaculos(position =  game.at(0,2)))
	game.addVisual(new Obstaculos(position =  game.at(0,3)))
	game.addVisual(new Obstaculos(position =  game.at(0,4)))
	game.addVisual(new Obstaculos(position =  game.at(0,5)))
	game.addVisual(new Obstaculos(position =  game.at(0,6)))
	game.addVisual(new Obstaculos(position =  game.at(0,7)))
	game.addVisual(new Obstaculos(position =  game.at(0,8)))
	game.addVisual(new Obstaculos(position =  game.at(0,9)))
	game.addVisual(new Obstaculos(position =  game.at(0,10)))
	game.addVisual(new Obstaculos(position =  game.at(0,11)))
	game.addVisual(new Obstaculos(position =  game.at(0,12)))
	game.addVisual(new Obstaculos(position =  game.at(0,13)))
	game.addVisual(new Obstaculos(position =  game.at(13,0)))
	game.addVisual(new Obstaculos(position =  game.at(12,0)))
	game.addVisual(new Obstaculos(position =  game.at(11,0)))
	game.addVisual(new Obstaculos(position =  game.at(10,0)))
	game.addVisual(new Obstaculos(position =  game.at(9,0)))
	game.addVisual(new Obstaculos(position =  game.at(8,0)))
	game.addVisual(new Obstaculos(position =  game.at(7,0)))
	game.addVisual(new Obstaculos(position =  game.at(6,0)))
	game.addVisual(new Obstaculos(position =  game.at(5,0)))
	game.addVisual(new Obstaculos(position =  game.at(4,0)))
	game.addVisual(new Obstaculos(position =  game.at(3,0)))
	game.addVisual(new Obstaculos(position =  game.at(2,0)))
	game.addVisual(new Obstaculos(position =  game.at(1,0)))
	game.addVisual(new Obstaculos(position =  game.at(14,0)))
	game.addVisual(new Obstaculos(position =  game.at(14,1)))
	game.addVisual(new Obstaculos(position =  game.at(14,2)))
	game.addVisual(new Obstaculos(position =  game.at(14,3)))
	game.addVisual(new Obstaculos(position =  game.at(14,4)))
	game.addVisual(new Obstaculos(position =  game.at(14,5)))
	game.addVisual(new Obstaculos(position =  game.at(14,6)))
	game.addVisual(new Obstaculos(position =  game.at(14,7)))
	game.addVisual(new Obstaculos(position =  game.at(14,8)))
	game.addVisual(new Obstaculos(position =  game.at(14,9)))
	game.addVisual(new Obstaculos(position =  game.at(14,10)))
	game.addVisual(new Obstaculos(position =  game.at(14,11)))
	game.addVisual(new Obstaculos(position =  game.at(14,12)))
	game.addVisual(new Obstaculos(position =  game.at(14,13)))
	game.addVisual(new Obstaculos(position =  game.at(13,13)))
	game.addVisual(new Obstaculos(position =  game.at(12,13)))
	game.addVisual(new Obstaculos(position =  game.at(11,13)))
	game.addVisual(new Obstaculos(position =  game.at(10,13)))
	game.addVisual(new Obstaculos(position =  game.at(9,13)))
	game.addVisual(new Obstaculos(position =  game.at(8,13)))
	game.addVisual(new Obstaculos(position =  game.at(7,13)))
	game.addVisual(new Obstaculos(position =  game.at(6,13)))
	game.addVisual(new Obstaculos(position =  game.at(5,13)))
	game.addVisual(new Obstaculos(position =  game.at(4,13)))
	game.addVisual(new Obstaculos(position =  game.at(3,13)))
	game.addVisual(new Obstaculos(position =  game.at(2,13)))
	game.addVisual(new Obstaculos(position =  game.at(1,13)))
	game.addVisual(new Obstaculos(position =  game.at(0,13)))
	
	//OBSTACULOS
	
	game.addVisual(new Obstaculos(position =  game.at(2,2)))
	game.addVisual(new Obstaculos(position =  game.at(4,6)))
	game.addVisual(new Obstaculos(position =  game.at(5,11)))
	game.addVisual(new Obstaculos(position =  game.at(4,11)))
	game.addVisual(new Obstaculos(position =  game.at(3,6)))
	game.addVisual(new Obstaculos(position =  game.at(4,5)))
	game.addVisual(new Obstaculos(position =  game.at(0,13)))
	game.addVisual(new Obstaculos(position =  game.at(6,8)))
	game.addVisual(new Obstaculos(position =  game.at(7,8)))
	game.addVisual(new Obstaculos(position =  game.at(8,9)))
	game.addVisual(new Obstaculos(position =  game.at(2,10)))
	game.addVisual(new Obstaculos(position =  game.at(8,10)))
	game.addVisual(new Obstaculos(position =  game.at(10,11)))
	game.addVisual(new Obstaculos(position =  game.at(10,5)))
	game.addVisual(new Obstaculos(position =  game.at(10,4)))
	game.addVisual(new Obstaculos(position =  game.at(10,3)))
	game.addVisual(new Obstaculos(position =  game.at(11,3)))
	game.addVisual(new Obstaculos(position =  game.at(8,3)))
	game.addVisual(new Obstaculos(position =  game.at(7,3)))
	game.addVisual(new Obstaculos(position =  game.at(11,7)))
	game.addVisual(new Obstaculos(position =  game.at(12,8)))
	game.addVisual(new Obstaculos(position =  game.at(12,8)))
	
	
	game.addVisual(moneda)
	
    game.addVisual(vida1)
	game.addVisual(vida2)
	game.addVisual(vida3)
	game.addVisual(vida4)
	game.addVisual(vida5)
	game.addVisual(vida6)
	game.addVisual(vida7)
	game.addVisual(vida8)
	game.addVisual(vida9)
	game.addVisual(vida10)
	game.addVisual(cartelInicio)
	


	 
	
/*TECLAS*/	
	game.onTick(3000,"checkearEstadoOleada",{if(!oleadas.hayAliens() and  !oleadas.oleadas().isEmpty()){oleadas.cambiarDeOleada()}})
	/*game.schedule(400,{musica.play() musica.loop()})*/
	game.onTick(10000,"aparecerMoneda",{moneda.aparecer()})
	game.onTick(1,"recuperarVida",{vida1.sumarVida()})
	game.onTick(1,"recuperarVida",{vida2.sumarVida()})
	game.onTick(1,"recuperarVida",{vida3.sumarVida()})
	game.onTick(1,"recuperarVida",{vida4.sumarVida()})
	game.onTick(1,"recuperarVida",{vida5.sumarVida()})
	game.onTick(1,"recuperarVida",{vida6.sumarVida()})
	game.onTick(1,"recuperarVida",{vida7.sumarVida()})
	game.onTick(1,"recuperarVida",{vida8.sumarVida()})
	game.onTick(1,"recuperarVida",{vida9.sumarVida()})
	game.onTick(1,"recuperarVida",{vida10.sumarVida()})
	
/*RECIBIR DAÑO*/	
	game.onCollideDo(astronauta1,{astronauta => astronauta1.recibirDanio()})

	keyboard.a().onPressDo({astronauta1.irALaIzquierda()})
	keyboard.w().onPressDo({astronauta1.irArriba()})
	keyboard.d().onPressDo({astronauta1.irALaDerecha()})
	keyboard.s().onPressDo({astronauta1.irAbajo()})
	keyboard.h().onPressDo({astronauta1.disparar()})
	keyboard.m().onPressDo({musica.loop() musica.play() musica.volumen(0.1)}) 
	keyboard.n().onPressDo({ musica.stop()})
	keyboard.enter().onPressDo(cartelInicio.desaparecer())
	keyboard.r().onPressDo({
		if(game.hasVisual(cartelGameOver) ) {
			
			cartelInicio.cambiarImage("portada.png")
			game.removeVisual(cartelGameOver)
			game.addVisual(cartelInicio)
			astronauta1.reiniciar()
			oleadas.reiniciar()
			vida1.reiniciar()
			vida2.reiniciar()
			vida3.reiniciar()
			vida4.reiniciar()
			vida5.reiniciar()
			vida6.reiniciar()
			vida7.reiniciar()
			vida8.reiniciar()
			vida9.reiniciar()
			vida10.reiniciar()
			 
			}
	})
	}
	
	

}



/*SONIDO*/	
object musica{
	const sonidoAmbiente = new Sound(file="./sounds/MusicaAmbiente.mp3")
	 
	method loop() {sonidoAmbiente.shouldLoop(true)}
	method play() {sonidoAmbiente.play()}
	method stop() {sonidoAmbiente.stop()}
	method volumen(nivelDeSonido) = sonidoAmbiente.volume(nivelDeSonido)
}


