(* Making OCaml look like Ruby. *)

open Disguise

let counter = ref 1;;
open_in "readfile.ml" >>> fun line -> begin
  print (string_of_int !counter);
  print ": ";
  puts line;
  counter := !counter + 1
end;;
