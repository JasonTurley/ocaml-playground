
let salute name =
  if name = "Elsa" then
    print_string "What's the low-down, man?"
  else
    begin
      print_string "Hey, ";
      print_string name;
      print_string "! Give me five, man.";
    end;;