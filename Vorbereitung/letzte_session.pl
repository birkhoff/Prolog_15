% Die Klausur beginnt um 14:30
% AP-Klausur in Hörsaal 6H, BN-Test in Hörsaal 6E

p(1).
p(2).
l(3).
l(4).


y(X,Y):- p(X),!,l(Y).


append_dl((H1,H2), (H2,T2), (H1,T2)).

achtung_cut(1).
achtung_cut(2):- !.
achtung_cut(3).


achtung_fieser_cut(a).

achtung_fieser_cut(X):-
	achtung_cut(X).

achtung_fieser_cut(b).
achtung_fieser_cut(c).




infinite_loop(X):-
	infinite_loop(X).
infinite_loop(circle).




call_list(L):-
	P =.. L,
	P.

swap_arguments(P,R):-
	P =.. [F|Args],
	reverse(Args,RArgs),
	R =.. [F|RArgs].
	
	
	


% 
% snakes_on_a_plane(L,R).
% snakes_on_a_plane([samuel_jackson,snake,dustin,zac],[samuel_jackson,dustin,zac])
%

snakes(L,R):-
	member(samuel_jackson,L),
	delete(L,snake,R).

%  5 * 4 * 3 *2 *1 



fak(X,Z):-
	fak(X,1,Z), !.
	
fak(0,Acc,Acc).

fak(X,Acc,R):-
	NewAcc is X * Acc,
	Y is X - 1, 
	fak(Y,NewAcc,R).
	
	
	
	
	
	
% ((ab)|(cd))*z	
	

s --> [z].
s --> [a,b], s.
s --> [c,d], s.
	
% a^n b^m wobei n und m nicht gleichzeitig null (mindestens ein a oder b)
	
a --> [a].
a --> [b].
a --> [a],a.
a --> [b],b.
b --> [b].
b --> [b],b.	

	
	

% hinter jede 5 eine 6 einfuegen 
%
% sechs([1,2,3,4,5],[1,2,3,4,5,6])
% 
% sechs([5,7],[5,6,7])
% sech([5,5,5],[5,6,5,6,5,6]).
%

sechs([],[]). 

sechs([5|T],[5,6|R]):-
	!,					% cut ist notwendig fuer ein deterministisches Ergebnis
	sechs(T,R).

sechs([E|T],[E|R]):-
	sechs(T,R).
	
	
	
	
	
	
	
	
	
	
	
	