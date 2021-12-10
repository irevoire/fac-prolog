% question 1

longueur([], 0).
longueur([_ | T], L) :- longueur(T, L1), L is L1 + 1 .

% question 2

somme([], 0).
somme([H | T], N) :- somme(T, R), N is R + H.

% question 3

membre(_, []) :- false.
membre(N, [N | _]) :- true.
membre(N, [_ | T]) :- membre(N, T).

% question 4

ajoute_en_tete(X, T, [X|T]).

% question 5

ajoute_en_queue(X, [], [X]).
ajoute_en_queue(X, [H | T], [H | L]) :- ajoute_en_queue(X, T, L).

% question 6

extraire_tete([H|L], H, L). 

% question 7

concatene([], L, L).
concatene([H | T], L2, [H | L]) :- concatene(T, L2, L).

% question 8

retourne([], []).
retourne([H | T], L) :- retourne(T, L1), ajoute_en_queue(H, L1, L).

% question 9

insert_trie(X, [], [X]).
insert_trie(X, [H | T], [X, H | T]) :- X =< H.
insert_trie(X, [H | T], [H | L])    :- X > H, insert_trie(X, T, L).

% question 10

tri_insert([], []).
tri_insert([H | T], L) :- tri_insert(T, L1), insert_trie(H, L1, L).
