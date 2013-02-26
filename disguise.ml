open Printf;;

(* Some functions to make OCaml look like Ruby. *)

let rec each_line ch block = begin
  try 
    let line = input_line ch in
    block line; 
    each_line ch block
  with
    End_of_file -> ()
end;;

let (>>>) = each_line;;
let print x = printf "%s" x;;
let puts x = printf "%s\n" x;;
