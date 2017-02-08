% samman bikram thapa %
/* (25 pts) Write a predicate sum-up-numbers-simple(L, N). L is a list, which may
contain as elements numbers and non-numbers. The predicate is true if N is the sum of the
numbers not in nested lists in L. If there are no such numbers, the result is zero.
*/


get-head-number(X, 0) :- 
is_list(X).

get-head-number(X, TOT) :-
number(X),
TOT is X.

get-head-number(X, 0) :-
\+ number(X).


sum-up-numbers-simple([], 0).
sum-up-numbers-simple([F | L], N) :-
    get-head-number(F, T),
    sum-up-numbers-simple(L, N1),
    N is T + N1.



