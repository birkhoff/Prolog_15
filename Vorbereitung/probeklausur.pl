/*1) Praedikat schreiben
	Liste umdrehen und an sich selbst anhaengen 
	Tipp verwenden sie reverse und append
	umgedreht_doppelt(L,R)
	umgedreht_doppelt([1,2],[2,1,2,1])
*/	

umgedreht_doppelt(L,R):-
	reverse(L,RL),
	append(RL,RL,R).

/*2) a) Liste umdrehen und die Liste [yolo] anfuegen Tip verwenden sie reverse
													und append
	yolo(L,R)
	yolo([1,2],[2,1,yolo])

	b) Liste umdrehen und yolo vorne anfuegen, verwenden sie KEIN append
	yolo2([1,2],[yolo,2,1] )
*/

yolo1(L,R):-
	reverse(L,RL),
	append(RL,[yolo],R).

yolo2(L,R):-
	reverse(L,RL),
	R = [yolo|RL].

/*3) wenn jayz in liste bitch loeschen Tip verwenden Sie member und delete
	jayz(L,R).
	jayz([1,2,jayz,bitch], [1,2,jayz]).
*/	

jayz(L,R):-
	member(jayz,L),
	delete(L,bitch,R).
	
/*4) setzen Sie Parameter in die Grammatik ein, dass die Sprache 
	a^n b^m c^n akzeptiert wird
s−−>a( ), b( ), c( ). 


s −−>a(N), b(M), c(N).

a(0) −−> [].
a(New) −−> [a], a(Count), {New is Count+1}. 
b(0) −−> [].
b(New) −−> [b], b(Count), {New is Count+1}.
c(0) −−> [].
c(New) −−> [c], c(Count), {New is Count+1}. 
*/
/*
5) zaehlen sie alle a in einer Liste
a_in_l(L,X)
a_in_l([a,a,a,b],3)
*/

a_in_l(L,X):-
	a_in_l(L,0,X).

a_in_l([],Acc,Acc):- !.

a_in_l([a|T],Acc,R):-
	NewAcc is Acc +1,
	a_in_l(T,NewAcc,R).

a_in_l([H|T],Acc,R):-
	H \= a,
	a_in_l(T,Acc,R).


s --> [f].
s --> [a,b,c,d], s.


