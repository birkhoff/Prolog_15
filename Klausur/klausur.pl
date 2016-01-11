
s --> a_block.
s --> b_block.
s --> a_block, b_block.

a_block --> [a].
a_block --> [a], a_block.
b_block --> [b].
b_block --> [b], b_block. 

eins_mit_drei([X,_,Y|T],[Y,_,X|T]).

vorletzt(L,X):-
	reverse(L,RL),
	[_,X|_]=RL.

muesli(L):-
	length(L,X),
	X < 4,
	not member(schokolade, L).
	
	
	min(X,Y,X):-
	  X < Y, !.
	min(X,Y,Y).
	
abs(X,R):-
	X >= 0, !,
	R = X. 
abs(X,R):-
	R is  X.

[1,2,3|T1], D2 = [4,5|T2]	

append dl( (DL1,DL2), (DL2,DL3), (DL3,T3), (DL1, T3) ).
	
reverse_call(F):-
	F =.. [FUNK|Args],
	reverse(Args, RArgs),
	RF =.. [FUNK|RArgs],
	call(RF).
	
	
	