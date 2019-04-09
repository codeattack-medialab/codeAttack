# Normas de estilo

Este documento contiene las normas de estilo predeterminadas. Cada proyecto puede tener sus propias normas y preferencias, pero seguiremos éstas cuando no se hayan establecido otras.

## Nombres de archivos

NOTA: Falta por escribir esta sección.

## Estructura del repositorio

NOTA: Falta por escribir esta sección.

## Programación en GDScript

Utilizaremos como base las [normas de estilo](https://docs.godotengine.org/en/latest/getting_started/scripting/gdscript/gdscript_styleguide.html) propuestas oficialmente por Godot para GDScript. Los nombres de nodos y funciones proporcionadas por Godot se ajustan a ese estilo, y si nosotros utilizamos el mismo, evitaremos mezclar estilos y el código se verá más uniforme. En resumen:

* Indentación con un tabulador

* Nombres de clases y nodos en CamelCase

* Nombres de funciones y variables en snake_case

* Nunca utilizar espacios para crear columnas

* Nombres de archivos GDScript en snake_case con la terminación ".gd"

## Idiomas

La documentación interna para el desarrollo la escribiremos en el idioma preferido por los integrantes del equipo, que en codeAttack será generalmente en español.

Los nombres de archivos del repositorio estarán en inglés.

El código de programación estará en inglés (nombres de funciones, variables, nodos, clases...)[1].

Los comentarios dentro de los scripts son un caso particular, puesto que podrían considerarse documentación del proyecto. Para que sea homogéneo con el resto del script, utilizaremos inglés, pero recomendamos mantenerlos breves. Cuando sea necesario añadir comentarios extensos[2], escribiremos el texto como documentación en archivos separados del código, y se incluirá en el comentario una referencia a los archivos de documentación correspondientes.

El idioma o idiomas que el juego presentará al usuario se decidirá para cada proyecto. Si el juego está hecho en Godot, se utilizarán los [mecanismos de internacionalización](https://docs.godotengine.org/en/latest/tutorials/i18n/internationalizing_games.html). De esa manera, se facilitará la traducción a distintos idiomas en un futuro, si fuese necesario.

Nota: Falta decidir el idioma de los comentarios de cambios (Change log, historia de cambios de git). Por un lado, son documentación interna del desarrollo, por otro lado, es habitual escribirlos en inglés en proyectos open source.

----

**[1]** Las bibliotecas de funciones estándar de los lenguajes de programación normalmente están en inglés, y así evitamos mezclar idiomas y terminología dentro del código.

**[2]** Por ejemplo, cuando los algoritmos utilizados no son triviales y requieren de una explicación detallada.
