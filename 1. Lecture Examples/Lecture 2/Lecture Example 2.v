(* Lecture Example 2 *)



Inductive NaturalNumbers :=

  | O : NaturalNumbers
  | S : NaturalNumbers -> NaturalNumbers.



Check S (S O).