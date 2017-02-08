% samman bikram thapa %
/* (25 pts) Write a predicate sum-up-numbers-simple(L, N). L is a list, which may
contain as elements numbers and non-numbers. The predicate is true if N is the sum of the
numbers not in nested lists in L. If there are no such numbers, the result is zero.
*/


is-head-number(X) :- number(X).

sum-up-numbers-simple([], 0).
sum-up-numbers-simple([F | L], N) :-
    is-head-number(F),
    sum-up-numbers-simple(L, N1),
    N is F + N1.



