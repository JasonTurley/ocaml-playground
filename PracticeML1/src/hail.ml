let hail name =
  if name <> "Elsa" then
    begin
      print_string "Dear, ";  
      print_string name;
      print_string ". I wish you the best in CS421.\n";
    end
  else
    print_string "Wayell, hah theya, Aylesa!";;

hail "Thomas";;
hail "Elsa";;