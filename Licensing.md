# Notas sobre copyright

El _copyright_ y las leyes de propiedad intelectual son asuntos largos y complicados. Este documento pretende ser un resumen breve, simplificado, y no muy riguroso, con la información mínima necesaria para facilitar la publicación de contenido[1] en codeAttack. Si necesitas asesoramiento para un proyecto serio, debes ampliar la información y contactar con un experto, la información de este documento no es suficiente para esos fines.

codeAttack es un laboratorio abierto, donde se fomenta el aprendizaje. Las ideologías de software libre y open source se ajustan bien a las motivaciones del proyecto y facilitan la cooperación y reutilización de contenido. Por ese motivo tratamos de fomentar que el contenido original generado en codeAttack se publique con liciencia de software libre siempre que sea posible.

----

**[1]** Cuando hablamos de contenido, nos referimos tanto a los programas de ordenador (que en nuestro caso serán juegos principalmente), como a la documentación, presentaciones, material didáctico, gráficos, sonido, música, guión y componentes artísticos en general. En resumen, todo lo que generamos que pueda estar sujeto a _copyright_.


## ¿Por qué es importante licenciar el contenido que publicamos?

Si no tenemos experiencia con la ley de _copyright_[1], podemos suponer por error que todo lo que publicamos es de uso libre, salvo que lo inscribamos en el registro de la Propiedad Intelectual. La realidad es la contraria: si creamos y publicamos contenido original, automáticamente estará protegido por la ley, incluso si no lo registramos explícitamente. Esto es así en todos los países que firmaron el [convenio de Berna](https://es.wikipedia.org/wiki/Convenio_de_Berna_para_la_Protecci%C3%B3n_de_las_Obras_Literarias_y_Art%C3%ADsticas), prácticamente todo el mundo actual con pocas excepciones.

El registro es voluntario y puede ser conveniente en algunos casos, puesto que constituye una prueba formal de la autoría de una obra. Pero es importante destacar que, por el simple hecho de publicar contenido, ya está protegido por la ley. Y si no lo licenciamos, **nadie tiene permiso**[2].

En nuestro caso, en codeAttack, normalmente podemos suponer que nuestros compañeros nos han concedido permiso para utilizar su contenido dentro del grupo, aunque sea un permiso verbal sin formalizar. Pero a veces conviene ser más explícitos, especialmente cuando el contenido se comparte en un repositorio de acceso público.

----

**[1]** En españa, el _copyright_ está formulado dentro del texto de la Ley de Propiedad Intelectual (LPI), que se puede [consultar en el BOE](https://www.boe.es/legislacion/codigos/codigo.php?id=087).

**[2]** Incluso podría ocurrir que ni siquiera nosotros mismos, en concreto cuando el repositorio es público y contribuyen otras personas. La web [Choose a License](https://choosealicense.com/), creada por [github](https://github.com/), explica con más detalle el [problema de no licenciar el contenido](https://choosealicense.com/no-permission/).


## ¿Qué es una licencia?

Ya sabemos que necesitamos una licencia para nuestro contenido, especialmente si queremos que sea libre. Pero, ¿qué es una licencia?

Una licencia consiste en otorgar permiso a alguien para que haga algo con nuestra obra. Imaginemos, por ejemplo, que queremos conceder permiso a una agencia de publicidad para que haga uso de uno de nuestros dibujos en sus anuncios, posiblemente a cambio de una compensación económica.

Según hemos visto en el apartado anterior, si no concedemos una licencia, nadie tiene permiso para hacer nada. Eso es el funcionamiento predeterminado del _copyright_. Como autores, también podemos conseguir el efecto contrario: otorgar permiso general a todo el mundo para que cualquiera pueda hacer lo que quiera con nuestra obra. Eso es lo que hacen los autores de software libre[1].

----

**[1]** En el software libre, los autores conceden voluntariamente los permisos de utilizar, distribuir, estudiar y modificar el contenido. Esos permisos se otorgan al público general, sin discriminar a nadie, y sin distinguir entre tipos de uso. Para más información, recomendamos consultar la [definición de software libre](https://www.gnu.org/philosophy/free-sw.en.html) del proyecto GNU.


## ¿Qué implica publicar contenido bajo una licencia libre?

Antes de dar el paso definitivo y publicar nuestro contenido con licencia libre, debemos tener claro en qué consiste y asegurarnos de que estamos de acuerdo. Entre otras cosas, estaríamos concediendo que:

* Cualquiera lo puede descargar y usar sin restricciones.
* Cualquiera puede hacer copias y distribuirlo a otras personas.
* Cualquiera puede ver el código fuente y estudiar cómo está hecho.
* Cualquiera puede hacer modificaciones y publicar su versión modificada si lo desea.
* Cualquiera puede extraer contenido y utilizarlo en otro proyecto.

Hay algunas situaciones que se derivan de lo anterior, pero conviene insistir en ellas:

* El código fuente tiene que estar disponible, no sólo el programa ejecutable. Eso incluye también los _assets_ en formato editable.

* No hay necesidad de pedir permiso a los autores originales. El permiso ya está concedido por la licencia y nadie tendría obligación preguntar.

* El contenido, o partes del mismo, podría distribuirse en una web con publicidad, o venderse en una tienda por parte de terceros[1]. Por tanto, personas ajenas al desarrollo podrían beneficiarse económicamente sin que los autores originales reciban compensación alguna[2].

  Esto suele ser motivo de controversia para una persona que no está familiarizada con el software libre. No debe confundirse software libre con software gratuito o con software "no comercial", porque son conceptos diferentes. Una licencia libre permite la explotación comercial de la obra, original o con modificaciones. Si no lo permitiese, no sería libre.

  Si bien es cierto que, en la mayoría de los casos, el software libre suele distribuirse también de forma gratuita aunque no sea una condición obligatoria.

* El contenido puede utilizarse con cualquier fin, incluso aquellos fines que no aprueba el autor o son contrarios a sus intereses. Por ejemplo, un videojuego, o una versión modificada del mismo, podría utilizarse en la campaña de un partido político cuyos ideales sean opuestos a las preferencias del autor del videojuego.

Para resumir, podemos decir que una vez que se publica un programa con licencia de software libre, es libre con todas sus consecuencias.

Un ejemplo cercano: [Godot](https://godotengine.org/) se distribuye con licencia libre. Se puede descargar gratuitamente de su web oficial, pero una empresa podría utilizarlo para crear juegos comerciales privativos[3] y obtener un beneficio. A veces algunos usuarios o estudios de desarrollo contribuyen económicamente con los desarrolladores de Godot, pero es una decisión opcional, sin ninguna obligación.

----

**[1]** Como ya mencionamos en otra nota al pie anterior, una licencia libre no puede discriminar a nadie, ni tampoco el tipo de uso que se hará de la obra (lo que incluye el uso comercial).

**[2]** Nintendo utiliza software libre dentro de algunas de sus consolas y saca partido comercial de ello, sin que los autores originales reciban compensación por parte de Nintendo. Muchas televisiones modernas llevan software libre internamente. [Android](https://source.android.com/) lleva el núcleo Linux, y está extendido por innumerables aparatos por todo el mundo. Miles de empresas utilizan [Apache](https://www.apache.org/) comercialmente para sus servidores web. Las grandes empresas tecnológicas como Google o Facebook utilizan software libre en su infraestructura de servidores para proporcionar sus servicios, y en ocasiones contribuyen creando y publicando más software libre.

**[3]** Software privativo es el concepto opuesto a software libre.


## ¿Tengo que publicar mi contenido bajo licencia libre?

No es obligatorio. En ocasiones puede que queramos publicar nuestro contenido con ciertas restricciones, o puede que no queramos publicarlo y mantenerlo para uso interno de codeAttack únicamente. Es una decisión personal.

Sin embargo, si integramos contenido restrictivo dentro de un proyecto abierto, estamos condicionando los términos de distribución y uso del proyecto en su conjunto. Por ese motivo, y para evitar malentendidos entre los distintos participantes, conviene manifestar claramente nuestros términos __antes__ de integrar el contenido en un repositorio.


## ¿Qué tengo que hacer para publicar mi contenido bajo una licencia libre?

Escribir un texto de licencia es complicado, especialmente si no somos expertos en asuntos legales. Para facilitarnos la tarea, existen ciertas licencias que se han creado con el fin de ser utilizadas en software libre, sin necesidad de escribir un texto de licencia propio.

Una vez tenemos claro que queremos publicar nuestro contenido con licencia libre, sólo queda elegir la licencia y adjuntar un archivo de texto en el repositorio para indicar los autores y las licencias correspondientes.


## ¿Qué licencias libres puedo utilizar y en qué se diferencian?

* GNU General Public License, versión 3.
* MIT
* Creative Commons CC0
* Creative Commons CC BY 4.0

**NOTA: Falta escribir este apartado y explicar las diferencias entre licencias.**


## ¿Qué tengo que hacer para publicar mi contenido bajo una licencia más restrictiva?

Si ninguna de las licencias anteriores se ajusta a nuestras preferencias (por ejemplo, si queremos excluir el uso comercial), habría que indicarlo claramente para evitar confusiones. Aunque nuestro contenido sólo constituya una pequeña parte del proyecto, la distribución del software al completo se ve condicionada por la parte más restrictiva del conjunto. Por ese motivo conviene mencionar los términos con el resto de personas del equipo antes de integrar nuestro contenido, para asegurarnos de que se llega a un acuerdo.

Es recomendable establecer las intenciones, permisos y licencias durante la fase de pre-producción de un proyecto, antes de empezar a publicar el código, y preferiblemente, antes de empezar a crear contenido.

----

![Creative Commons License](https://i.creativecommons.org/l/by/4.0/88x31.png)

© 2019. Documento creado por roberto@zenvoid.org, publicado bajo licencia Creative Commons Attribution 4.0.
