% samman bikram thapa %
/* (25 pts) Write a predicate sum-up-numbers-simple(L, N). L is a list, which may
contain as elements numbers and non-numbers. The predicate is true if N is the sum of the
numbers not in nested lists in L. If there are no such numbers, the result is zero.
*/


get-first-number(X, 0) :- 
is_list(X).

get-first-number(X, TOT) :-
number(X),
TOT is X.

get-first-number(X, 0) :-
\+ number(X).


sum-up-numbers-simple([], 0).
sum-up-numbers-simple(L, N) :-
    [F | B] = L,
    get-first-number(F, T),
    sum-up-numbers-simple(B, N1),
    N is T + N1.


/*
2. (25 pts) Write a predicate sum-up-numbers-general(L, N). L is a list, which may
contain as elements numbers and non-numbers. The predicate is true if N is the sum of all
the numbers (including those in nested lists) in L. If there are no such numbers, the result is
zero.
*/

% For base case when empty list
sum-up-numbers-general([], 0).

% For case when neither list nor number
sum-up-numbers-general(X, 0) :-
    \+ is_list(X),
    \+ number(X).


% For case when List
sum-up-numbers-general(L, N) :-
    [F | B] = L,
    sum-up-numbers-general(F, T1),
    sum-up-numbers-general(B, T2),
    N is T1 + T2.





