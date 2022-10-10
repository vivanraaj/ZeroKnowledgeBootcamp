//BELOW CODE WORKS IN CAIRO PLAYGROUND

// Use the output builtin.
%builtins output range_check

from starkware.cairo.common.math import unsigned_div_rem

// Perform and log output of simple arithmetic operations
func simple_math{output_ptr: felt*,range_check_ptr}() {
   // adding 13 +  14
   let add = 13+14;
   %{ print(f"add: {ids.add}") %}

   // multiplying 3 * 6
   let mult = 3*6;
   %{ print(f"mult: {ids.mult}") %}

   // dividing 6 by 2
   let divis = 6/2;
   %{ print(f"divis: {ids.divis}") %}

   // dividing 70 by 2
   let divis_1 = 70/2;
   %{ print(f"divis_1: {ids.divis_1}") %}

   // dividing 7 by 2
   let (unsigned_quotient,remainder ) = unsigned_div_rem(7, 2);
   %{ print(f"unsigned_quotient: {ids.unsigned_quotient}") %}

    return ();
}
