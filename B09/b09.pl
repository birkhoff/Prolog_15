termtype(Term, atom):-
	atom(Term).
	
termtype(Term, integer):-
	integer(Term).
	
	
termtype(Term, var):-
	var(Term).
		
termtype(Term, number):-
	number(Term).
	
termtype(Term, nonvar):-
	nonvar(Term).

termtype(Term, complex_term):-
	Term =.. [_F|[_ARGS|_T]].

termtype(_Term, term).


:- op(100, fy, famous).
:- op(200, xfy, and).
:- op(300, xfx, [are, is_a]).
:- op(300, fx, likes).
:- op(500, xf, or_not).
	

% Pretty Printer

% Initialisierung des Tab-Zaehlers.
pprint(Term):- pprint(Term ,0).
% Baum drucken.
pprint(Term ,N):-
Term =.. [F|Args], % Struktur zu Liste.
tab(N), write(F), nl, % Ausgabe des Mutterknotens.
              N1 is N+3, pprintl(Args,N1).
% Unterbaeume drucken.
pprintl([H|T],N):- pprint(H,N),
pprintl(T,N). pprintl([],_).
% Tabulator erhoehen. % Unterbaeume drucken.
% Drucke eine Schwester.
% Drucke die anderen Schwestern. % Termination.




s(s(NP,VP)) --> np(NP), vp(VP).
np(np(Det,N)) --> det(Det), n(N).
vp(vp(V,NP)) --> v(V), np(NP).
% Lexikon:
det(det(eine)) --> [eine].
det(det(die)) --> [die].
n(n(maus)) --> [maus].
n(n(katze)) --> [katze].
v(v(jagt)) --> [jagt].
v(v(klaut)) --> [klaut].


parse(L):-
	s(TREE,L,[]),
	pprint(TREE),
	nl,
	pprint_list(L).


pprint_list([]).
pprint_list([H|T]):-
	write(H), tab(1),
	pprint_list(T).

	
ex(1,[die,katze,jagt,eine,maus]).
ex(2,[die,katze,jagt,eine,maus,und,maeuse,klauen,katzen]).	
	
test(I):-
	ex(I,L),
	parse(L).




