# Normas de estilo

Este documento contiene las normas de estilo predeterminadas. Cada proyecto puede tener sus propias normas y preferencias, pero seguiremos éstas cuando no se hayan establecido otras.

## Idiomas

La documentación interna para el desarrollo la escribiremos en el idioma preferido por los integrantes del equipo, que en codeAttack será generalmente en español.

El código de programación estará en inglés (nombres de funciones, variables, nodos, clases...)[1]. La historia de cambios en el programa de control de versiones se escribirá en inglés.

Los comentarios dentro de los scripts son un caso particular, puesto que podrían considerarse documentación del proyecto. Para que sea homogéneo con el resto del script, utilizaremos inglés, pero recomendamos mantenerlos breves. Cuando sea necesario añadir comentarios extensos[2], los escribiremos en archivos separados, como parte de la documentación del proyecto.

El idioma o idiomas que el juego presentará al usuario se decidirá para cada proyecto. Si el juego está hecho en Godot, utilizaremos los [mecanismos de internacionalización](https://docs.godotengine.org/en/latest/tutorials/i18n/internationalizing_games.html). De esa manera, se facilitará la traducción a distintos idiomas en un futuro, si fuese necesario.

----

**[1]** Las bibliotecas de funciones estándar de los lenguajes de programación normalmente están en inglés, y así evitamos mezclar idiomas y terminología dentro del código.

**[2]** Por ejemplo, cuando los algoritmos utilizados no son triviales y requieren de una explicación detallada.

## Estructura del repositorio

Los nombres de archivos del repositorio estarán en inglés, en formato snake_case.

Nombre               | Contenido
-------------------- | ---------
assets/              |
documentation/       |
readme.md            |
license.md           |

## Programación en GDScript

Utilizaremos como base las [normas de estilo](https://docs.godotengine.org/en/latest/getting_started/scripting/gdscript/gdscript_styleguide.html) propuestas oficialmente por Godot para GDScript. Los nombres de nodos y funciones proporcionadas por Godot se ajustan a ese estilo, y si utilizamos el mismo, el código se verá más uniforme. En resumen:

* Indentación con un tabulador

* Nombres de clases y nodos en CamelCase

* Nombres de funciones y variables en snake_case

* Nunca utilizar espacios para crear columnas

* Nombres de archivos GDScript en snake_case con la terminación ".gd"
