
let salutations name = 
    if name = "Elsa" then
        print_string "Halt! Who goes there!\n"
    else
        begin 
            print_string "Hail, ";
            print_string name;
            print_string ". We warmly welcome you!\n";
        end;;

salutations "Malisa";;
salutations "Elsa";;
