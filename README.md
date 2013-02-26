ocaml-disguised-as-ruby
=======================

A quick hack that shows how to handle files in OCaml sort of like you can in
Ruby. The idea here is not to create a robust library, but to demonstrate the
flexibility of higher-order functions for stuff like this. Hi Rob! ;)

Compare readfile.ml with readfile.rb.

To build/run the OCaml version:

 $ ocamlc -o readfile disguise.ml readfile.ml
 $ ./readfile

For the Ruby version, there is no need to compile. Just run it:

 $ ruby readfile.rb
