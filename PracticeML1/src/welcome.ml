
let welcome name =
    if name = "Elsa" then
        print_string "Can you come out to play?\n"
    else
        begin
            print_string "Aw, come on, "; 
            print_string name;
            print_string ". We're going to have a wonderful time!\n"
        end;;


(* call function *)
welcome "Elsa";;
welcome "John";;
