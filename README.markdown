textdist
========

Calculate the edit-distance (Levenshtein distance) between two
files. The edit-distance is the number of insertions, deletions, or
transpositions necessary to convert one file to the other. In some
sense it is a measure of the similarity between the two files.

Usage
-----

    $ textdist file1 file2

'-' can be used as a file name to read from stdin.

Credits
-------

This is just a thin wrapper around the
[edit-distance](http://github.com/batterseapower/edit-distance)
library provided by [Max Bolingbroke](http://github.com/batterseapower).
