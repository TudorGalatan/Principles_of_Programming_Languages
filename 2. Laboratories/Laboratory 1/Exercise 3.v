(* Exercise 3: Definiți o funcție care returnează ziua următoare. (0.25 puncte) *)



(* Define the 'Day' data type. *)

Inductive Day :=

  | Monday
  | Tuesday
  | Wednesday
  | Thursday
  | Friday
  | Saturday
  | Sunday.



(* Define the 'nextDay' function. *)

Definition nextDay (currentDay : Day) : Day :=

  match currentDay with

    | Monday => Tuesday
    | Tuesday => Wednesday
    | Wednesday => Thursday
    | Thursday => Friday
    | Friday => Saturday
    | Saturday => Sunday
    | Sunday => Monday

  end.



(* Test the 'nextDay' function. *)

Compute nextDay Monday.
Compute nextDay Tuesday.
Compute nextDay Wednesday.
Compute nextDay Thursday.
Compute nextDay Friday.
Compute nextDay Saturday.
Compute nextDay Sunday.