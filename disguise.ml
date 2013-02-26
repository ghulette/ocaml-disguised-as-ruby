(* Some functions to make OCaml look like Ruby. *)

let rec each_line ch f = 
  try 
    let line = input_line ch in
    f line; 
    each_line ch f
  with
    | End_of_file -> close_in ch
    | _ -> prerr_endline "Error!"
;;

let (>>>) = each_line;;
let print = print_string;;
let puts = print_endline;;
