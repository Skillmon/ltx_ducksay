ducksay: cowsay for LaTeX

This work may be distributed and/or modified under the conditions of the LaTeX
Project Public License (LPPL), either version 1.3c of this license or (at your
option) any later version. The latest version of this license is in the file:

  http://www.latex-project.org/lppl.txt

This work is "maintained" (as per LPPL maintenance status) by
  Jonathan P. Spratte.

Copyright (C) 2017-2024 by Jonathan P. Spratte

The package draws ASCII art of animals saying a specified message. The following
macros are available:

 - `\ducksay[<options>]{<message>}`
 - `\duckthink[<options>]{<message>}`
 - `\DefaultAnimal{<animal>}`
 - `\DucksayOptions{<options>}`
 - `\AddAnimal(*){<name>}<ascii-art>`

`<ascii-art>` should be delimited either by matching braces or by the same
symbol and is read verbatim.

Multi-line messages are now fully supported. The package comes with two
versions, choosable with the `version` key.
