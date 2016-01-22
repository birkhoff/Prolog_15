% 1) Fall

a --> [a].

% wird zu

a(L,T):-
	L=[a|T].
% oder alternativ geschrieben

a([a|T],T).

% 2) Fall

a --> b, c.
b --> [b].
c --> [c].

a(A, C) :-			% A = Anfang, C Ende
	b(A, B),		% durchreichen von Anfang zum Ende von B
	c(B, C).		% durchreichen vom Ende B and den Anfang der Regel c und Ende ist von c ist das Ende vom Kopf des Praedikats

b([b|T],T).			% wie 1) Fall
c([c|T],T).


% 3) Fall Kombination

a --> [b], c.

a([b|B], C) :-
	c(B, C).
	
% alternativ

a(A, C) :-
	A = [b|B],
	c(B, C).
	
	
% 4) Fall Parameter und native Prolog Syntax in Klammern

a(p) --> b(p), c.
b(P) --> c, {print(P)}.


a(p, A, C) :-
	b(p, A, B),
	c(B, C).

b(P, A, B) :-
	c(A, B),
	print(P).


