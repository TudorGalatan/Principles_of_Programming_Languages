(* Definiți funcțiile: negație, conjuncție, disjuncție peste tipul de date boolean definit la exercițiul precedent. (0.5 puncte) *)



(* Define the 'Bool' data type. *)

Inductive Bool :=

  | true
  | false.



(* Define the 'negation' function. *)

Definition negation (value : Bool) : Bool :=

  match value with

  | false => true
  | _ => false

  end.



(* Define the 'conjunction' function. *)

Definition conjunction (firstValue secondValue : Bool) : Bool :=

  match firstValue, secondValue with

  | true, true => true
  | _, _ => false

  end.



(* Define the 'disjunction' function. *)

Definition disjunction (firstValue secondValue : Bool) : Bool :=

  match firstValue, secondValue with

  | false, false => false
  | _, _ => true

  end.



(* Test the 'negation' function. *)

Compute negation false.
Compute negation true.



(* Test the 'conjunction' function. *)

Compute conjunction false false.
Compute conjunction false true.
Compute conjunction true false.
Compute conjunction true true.



(* Test the 'disjunction' function. *)

Compute disjunction false false.
Compute disjunction false true.
Compute disjunction true false.
Compute disjunction true true.