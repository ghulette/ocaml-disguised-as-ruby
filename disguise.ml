(* Some functions to make OCaml look like Ruby. *)

let rec each_line ch block = begin
  try 
    let line = input_line ch in
    block line; 
    each_line ch block
  with
    End_of_file -> close_in ch
end;;

let (>>>) = each_line;;
let print = print_string;;
let puts = print_endline;;
