find(X,[X|_]):- !. % <- roter cut

find(X,[_|T]):-
	find(X,T).

find(_,[]):- false, !. % <- gruener cut

len(L, R):-
	len(L, 0, R).
	
len([], Acc,R):-
	R = Acc.
len([_|T], Acc, R):-
	len(T, succ(Acc),R).
	
	
integer(Number, positive):- Number > 0.
integer(0, zero).
integer(Number, negative):- Number < 0.


nth(0,[H|_T],H).
nth(X,[_H|T],R):-
	NewX is X - 1,
	nth(NewX,T,R).
	
%[1,2,3,4] [3,2,1,4]

swap_0_2([H1,H2,H3|T],[H3,H2,H1|T]).



slice(0,L,[],L):- !.

slice(X,[H|T],[H|TR2],R2):-
	NewX is X-1,
	slice(NewX,T,TR2,R2).
	

% (ab)+(cd)+
% abababababcdcdcdcdcdc

s -->  regel_a, regel_c.
regel_a --> [a], regel_b.

regel_b --> [b].
regel_b --> [b], regel_a.

regel_c --> [c], regel_d, {regel_d(L,[]),print(L)}. % native Prolog Syntax

regel_d --> [d].
regel_d --> [d], regel_c.


a(0) --> {!}.
a(X) --> [a], {NewX is X -1}, a(NewX).

a(0,L,L):- !.
a(X,[H|T1],T2):-
	H = a,
	NewX is X -1,
	a(NewX,T1,T2).
	
/*a(0, B, A) :- !,
		A=B.
a(A, [a|B], E) :-
	C is A+ -1,
	D=B,
	a(C, D, E).*/

% (Liste,T) L1=[1,2,3|T] L2=[4,5|T2]

app_dl((L1,T1),(L2,T2), (LR,TR)):-
	T1 = L2,
	T2 = TR,
	LR = L1.
	
% Liste zu Differenzliste

l_to_dl(L,(DL,T)):-
	append(L,T,DL).














	
	
	
	
	
	
	
	
	
	