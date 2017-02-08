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

% For case when empty list
sum-up-numbers-general([], 0).

% For case when neither list nor number is the lone element
sum-up-numbers-general(X, 0) :-
    \+ is_list(X),
    \+ number(X).

% For case when number as the only element
sum-up-numbers-general(X, P) :-
    number(X),
    P is X.

% For case when List
sum-up-numbers-general(L, N) :-
    [F | B] = L,
    sum-up-numbers-general(F, T1),
    sum-up-numbers-general(B, T2),
    N is T1 + T2.



/*
(25 pts) Write a predicate min-above-min(L1, L2, N). L1 and L2 are both simple
lists, which do not contain nested lists. Both lists may have non-numeric 
elements. The predicate is true if N is the minimum of the numbers in L1 that 
are larger than the smallest number in L2. If there is no number in L2, all the
numbers in L1 should be used to calculate the minimum. If there is no number in 
L1 larger than the smallest number in L2, the predicate is false
*/

% gets the minimum from a list with one element
get-minimum([X], Lowest) -:
    number(X),
    Lowest is X.

% case when first element is smaller than second
get-minimum(L, Lowest) :-
    [T, S | B] = L,
    number(T),
    number(S),
    T =< S,
    get-minimum([T | B], Lowest).

% case when second element is smaller than second
get-minimum(L, Lowest) :-
    [T, S | B] = L,
    number(T),
    number(S),
    T > S,
    get-minimum([S | B], Lowest).


% case when first element is not a number
get-minimum(L, Lowest) :-
    [T, S | B] = L,
    \+ number(T),
    get-minimum([S | B], Lowest).

% case when second element is not a number
get-minimum(L, Lowest) :-
    [T, S | B] = L,
    \+ number(S),
    get-minimum([T | B], Lowest).


% case both empty list
min-above-min([], [], 0).

# case both valid lists
min-above-min(L1, L2, N) :-
    % get the smallest number in L2

    % get L3, a list of all num larger than L2 in L1

    % get the minimum number of L3























