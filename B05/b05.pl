% ohne Akkumulator:

len1([],0).

len1([_|T],N):-
	N is X+1, 
	len1(T,X).
	
% mit Akkumulator:

len(L,R):-
	len(L,0,R).

len([],Acc,Acc).
len([_H|T],Acc,R):-
	NewAcc is Acc + 1,
	len(T,NewAcc,R).
	
%double_elements/2

double_elements([],[]).
double_elements([H|T1],[H2|T2]):-
	H2 is H * 2,
	double_elements(T1,T2).
	
