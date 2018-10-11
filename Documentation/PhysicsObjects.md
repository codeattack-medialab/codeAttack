# Objetos con física y colisiones

Godot tiene nodos que facilitan la creación de objetos con física, que tienen que moverse, interactuar y colisionar con otros objetos. Son los componentes básicos de la mayoría de los juegos 2D.

Una de las preguntas que nos encontramos frecuentemente es: __¿Qué tipo de nodos son los más apropiados para el juego que estoy diseñando?__ Este documento pretende ayudar a tomar esa decisión.

![](/Documentation/Images/PhysicsObjects.png)

* RigidBody2D
  * Objetos autónomos: bola de un pinball
  * Física calculada automáticamente, gravedad

* StaticBody2D
  * Objetos estáticos: Suelo, paredes, plataformas

* KinematicBody2D
  * Objetos controlados por script: nave espacial, personaje
  * Pueden colisionar con otros pero no se mueven automáticamente


## RigidBody2D

En el mundo real, un cuerpo rígido es un objeto sólido que no se deforma cuando recibe una fuerza externa[1]. Los motores de videojuegos utilizan el nombre de cuerpo rígido (_rigid body_) para definir objetos sólidos que se mueven mediante la aplicación de fuerzas externas, están afectados por la gravedad, colisionan e interactúan con otros cuerpos rígidos.

Ejemplos concretos podrían ser una pelota, la bola de un pinball, una pila de cajas que puede derrumbarse con un impacto, los pájaros de Angry Birds[2] o la nave de un juego tipo Lunar Lander[3].

Normalmente no controlamos directamente la posición de un _rigid body_; podemos aplicar fuerzas o impactos y dejar que Godot se encargue de los cálculos físicos e interacciones con otros objetos.

----

**[1]** Siendo un poco más rigurosos, en el mundo real todo cuerpo sufre deformaciones ante las fuerzas externas, aunque en algunos casos son tan pequeñas que podemos ignorarlas y suponer que estamos tratando con cuerpos rígidos perfectos. Si un balón recibe una buena patada, su deformación podría apreciarse, especialmente si se observa a velocidad muy lenta. Sin embargo, no suele ser necesario llegar a ese nivel de detalle en un videojuego, y podemos tratarlo como un cuerpo rígido.

**[2]** Concretamente el primer [Angry Birds](https://en.wikipedia.org/wiki/Angry_Birds_(video_game)) (2009). Y no sólo los pájaros; también los cerditos, las estructuras de los escenarios, y el juego en su conjunto es un buen ejemplo del concepto de _rigid body_.

**[3]** Nave atraída por la gravedad, que puede ascender mediante propulsores accionados por el jugador. Los propulsores son fuerzas que se aplican al _rigid body_; Godot se encarga de calcular el movimiento y posición de la nave.


## StaticBody2D

El uso típico de un _static body_ es el suelo, paredes y obstáculos, y en general los componentes del escenario por el que se moverán los actores.

Como su nombre sugiere, lo más habitual es que un _static body_ esté en una posición fija, pero no es un requisito obligatorio. Es posible mover un _static body_ manipulando su vector de posición con un script, lo que podría ser de utilidad para crear plataformas móviles, ascensores, puertas o estructuras que cambian de posición.


## KinematicBody2D

Por un lado tenemos objetos de tipo _rigid body_, cuya física y movimiento está calculada por Godot. Por otro lado, los objetos _static body_ definen el escenario. ¿Qué tipo de objeto debería ser el protagonista controlado por el jugador? Podría ser un _rigid body_ en algunos casos, pero en otros necesitaríamos un control más directo del movimiento y un _rigid body_ sería una complicación más que una ayuda. El ejemplo habitual para un _kinematic body_ sería el protagonista de un juego de plataformas clásico.

Un objeto de tipo _kinematic body_ no se mueve automáticamente; Godot no calcula las interacciones físicas, ni la gravedad, y en ese sentido podría parecerse a un _static body_. A diferencia de un _static body_, está pensado para moverse, colisionar e interactuar con otros cuerpos. Godot proporciona funciones que facilitan esa tarea.


## Area2D

Un objeto de este tipo no es un cuerpo físico y no colisiona con otros cuerpos, pero sí permite detectar los cuerpos que han colisionado o entrado dentro de su área. Puede llevar un sprite asociado, o puede ser invisible. En algunos casos, podemos utilizarlo para el actor controlado por el jugador. Un ejemplo podría ser la nave de un matamarcianos tipo [Space Invaders](https://en.wikipedia.org/wiki/Space_Invaders): no necesitamos colisionar con el suelo, paredes, ni movimientos complejos, simplemente detectar contacto con el fuego enemigo, que es un evento que podemos capturar con un Area2D.


----

![Creative Commons License](https://i.creativecommons.org/l/by/4.0/88x31.png)

© 2018. Documento creado por roberto@zenvoid.org para codeAttack, publicado bajo licencia [Creative Commons Attribution 4.0](https://creativecommons.org/licenses/by/4.0/).
