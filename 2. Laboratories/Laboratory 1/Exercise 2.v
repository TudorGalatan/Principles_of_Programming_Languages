(* Exercise 2: Definiți o funcție de egalitate peste acest tip de date. *)



(* Define the 'Day' data type. *)

Inductive Day :=

  | Monday
  | Tuesday
  | Wednesday
  | Thursday
  | Friday
  | Saturday
  | Sunday.



(* Define the 'equality' function. *)

Definition equality (firstDay secondDay : Day) : bool :=

  match firstDay, secondDay with
    | Monday, Monday => true
    | Tuesday, Tuesday => true
    | Wednesday, Wednesday => true
    | Thursday, Thursday => true
    | Friday, Friday => true
    | Saturday, Saturday => true
    | Sunday, Sunday => true
    | _, _ => false

  end.



(* Test the 'equality' function. *)

Compute equality Monday Monday.
Compute equality Tuesday Tuesday.
Compute equality Wednesday Wednesday.
Compute equality Thursday Thursday.
Compute equality Friday Friday.
Compute equality Saturday Saturday.
Compute equality Sunday Sunday.
Compute equality Monday Friday.
Compute equality Thursday Sunday.
Compute equality Tuesday Sunday.
Compute equality Thursday Monday.
Compute equality Friday Saturday.