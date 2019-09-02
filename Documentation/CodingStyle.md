# Normas de estilo

Este documento contiene las normas de estilo predeterminadas. Cada proyecto puede tener sus propias normas y preferencias, pero seguiremos éstas cuando no se hayan establecido otras.

## Idiomas

La documentación interna para el desarrollo<sup>[1]</sup> la escribiremos en el idioma preferido por los integrantes del equipo, que en codeAttack será generalmente en español.

El código de programación estará en inglés (nombres de funciones, variables, nodos, clases...)<sup>[2]</sup>. La historia de cambios en el programa de control de versiones se escribirá en inglés.

Los comentarios dentro de los scripts son un caso particular, puesto que podrían considerarse documentación del proyecto. Para que sea homogéneo con el resto del script, utilizaremos inglés, pero recomendamos mantenerlos breves. Cuando sea necesario añadir comentarios extensos<sup>[3]</sup>, los escribiremos en archivos separados, como parte de la documentación del proyecto (y por tanto, pueden ser en español).

El idioma o idiomas que el juego presentará al usuario se decidirá individualmente para cada proyecto. Si el juego está hecho en Godot, utilizaremos los [mecanismos de internacionalización](https://docs.godotengine.org/en/latest/tutorials/i18n/internationalizing_games.html). De esa manera, se facilitará la traducción a distintos idiomas en un futuro, si fuese necesario.

----

**[1]** Eso incluye, entre otras cosas, el documento de diseño del juego (GDD, _Game Design Document_), explicaciones de algoritmos, bocetos, y cualquier documento que hagamos para coordinar el desarrollo.

**[2]** Las bibliotecas de funciones estándar de los lenguajes de programación normalmente están en inglés, y así evitamos mezclar idiomas y terminología dentro del código.

**[3]** Por ejemplo, cuando los algoritmos utilizados no son triviales y requieren de una explicación detallada.

## Estructura del repositorio
La estructura a continuación debe servir de orientación a la hora de configurar un nuevo proyecto. La estructura de directorios completa y otros detalles dependerán de las necesidades del proyecto (e.g.: jerarquía por escenas VS jerarquía según extensión de los assets). Estos detalles **deberán** estar especificados en la documentación/wikis de cada proyecto.

Nombre               | Contenido
-------------------- | ---------
assets/              | Archivos que sirven para generar los _assets_ del juego<sup>[1]</sup>
docs/                | Directorio que GitHub puede usar para hostear GitHub Pages<sup>[2]</sup>
game/                |
game/project.godot   | Proyecto de Godot
game/global.gd       | Script _singleton_ con el código de transición de escenas y datos globales<sup>[3]</sup>
game/sounds/         | Efectos de sonido, excepto la música
game/music/          | Música
game/fonts/          | Fuentes tipográficas
game/textures/       | Versiones importadas de los assets gráficos (tiles, sprites, texturas, ...)
readme.md            |
license.md           |

Los nombres de archivos del repositorio estarán en inglés, en formato snake_case.

----

**[1]** Es el equivalente al código fuente, pero para el contenido gráfico y sonoro. Puede contener archivos de audio multipista sin comprimir, imágenes en su máxima resolución, modelos de Blender sin exportar, etc. En general, aquí está el contenido en el formato más adecuado para ser editado, mientras que el directorio de juego, está en el formato más adecuado para ser manejado por el motor del juego.

**[2]** https://pages.github.com/

**[3]** Si el proyecto lo requiere, puede haber más scripts _singleton_ con otros nombres, que contengan funciones o datos globales.

## Programación en GDScript

Utilizaremos como base las [normas de estilo](https://docs.godotengine.org/en/latest/getting_started/scripting/gdscript/gdscript_styleguide.html) propuestas oficialmente por Godot para GDScript. Los nombres de nodos y funciones proporcionadas por Godot se ajustan a ese estilo, y si utilizamos el mismo, el código se verá más uniforme. En resumen:

* Indentación con un tabulador

* Nombres de clases y nodos en CamelCase

* Nombres de funciones y variables en snake_case

* Nunca utilizar espacios para crear columnas

* Nombres de archivos GDScript en snake_case con la terminación ".gd"
