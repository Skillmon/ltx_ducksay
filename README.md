ducksay: cowsay for LaTeX

This package is distributed under the terms of GPLv3 or later, or the LPPL 1.3c
or later, which ever license fits your needs the best.

Copyright (C) 2017 by Jonathan P. Spratte

The package draws ASCII art of animals saying a specified message. The following
macros are available:

\\ducksay[<options>]{<message>}
\\duckthink[<options>]{<message>}
\\DefaultAnimal{<animal>}
\\AddAnimal(\*){<name>}<ascii-art>

Multi-line messages are supported but need to be manually created using `\\`.
