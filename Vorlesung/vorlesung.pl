% fem/1
% fem(X). X ist weiblich.

fem(mia).
fem(ria).
fem(ana).
fem(jutta).

% mas/1
% mas(X). X ist maennlich.

mas(otto).
mas(johann).
mas(hans). 
mas(tom).

% et/2
% et(X,Y): X ist ein Elternteil von Y.

et(jutta, mia).
et(johann, mia).
et(jutta, otto).
et(mia, hans).
et(mia, jim).
et(mia, ana).
et(otto, tom).

% ehemann/2
% ehemann(X,Y): X ist Ehemann von Y.mas(jim).

ehemann(johann, jutta).
ehemann(otto, ria).


mutter(M,T):-
	et(M,T),
	fem(M).
	
sohn(T,M):-
	et(M,T),
	masc(T).

schwester(X,Y):-
	et(Z,X),
	et(Z,Y),
	fem(X),
	X \= Y.

grossvater(G,E):-
	et(V,E),
	et(G,V),
	masc(G).

geschw(X,Y):-
	et(Z,X),
	et(Z,Y),
	X \= Y.

cousine(C,AC):-
	et(E1,C),
	et(E2,AC),
	geschw(E1,E2),
	fem(C).
	
onkel(O,N):-
	et(E1,N),
	geschw(E1,G),
	(
		G = O;
	 	ehepartner(G,O)
	),
	mas(O).


enkelin(E,O):-
	et(V,E),
	et(O,V),
	fem(E).

schwager(S,D):-
	geschw(D,F),
	ehemann(S,F).

ehepartner(E1,E2):-
	ehemann(E1,E2);
	ehemann(E2,E1).



% Direct Train

directTrain(duesseldorf,koeln).
directTrain(koeln,paris).
directTrain(paris,berlin).
directTrain(duesseldorf,wuppertal).
directTrain(wuppertal,berlin).
directTrain(berlin,hannover).
directTrain(wuppertal,hannover).



% travelFromTo/2

travelFromTo(S,Z):-
	directTrain(S,Z).

travelFromTo(S,Z):-
	directTrain(S,ZZ),
	travelFromTo(ZZ,Z).


% travelFromTo/3,

travelFromTo(S,Z,0):-
	directTrain(S,Z).
	
travelFromTo(S,Z,N):-
	directTrain(S,ZZ),
	travelFromTo(ZZ,Z,NN),
	NN is N - 1.
	

% tausch12/2

tausch12([A,B|T],[B,A|T]).

% all_members/2


all_members([],_L).
all_members([H|T],L):-
	member(H,L),
	all_members(T,L).
	

haelfte(X,R):-
	number(X),
	R is X / 2.

haelfte(X,R):-
	number(R),
	X is R * 2.

double([],[]).
double([H|T],[DH|DT]):-
	DH is H * 2,
	double(T,DT).


reiss([],[],[]).
reiss([H1|T1],[H2|T2],[H1,H2|TR]):-
	reiss(T1,T2,TR).


s1 --> aa,s1,bb.
s1 --> [].

aa --> [a].
bb --> [b].

ss --> 	dd,ss,dd;
	   	cc,ss,cc;
	   	cc;
	 	dd;
		[].
		
cc -->	[c].
dd --> 	[d].


/*
det --> [].
adj --> [klein].
simple_adj --> adj, n.
a --> b(p), c(p).
a(p) --> [hu], {mag(popeye,spinat)}.
*/
det(T,T).
adj([klein|T],T).
simple_adj(A,C):-
	adj(A,B),
	n(B,C).
a(A,C):-
	b(p,A,B),
	c(p,B,C).
a(p,[hu|T],T):-
	mag(popeye,spinat).

% [ich,mag,spinat|REST], REST = []. [ich,mag,spinat]

append_dl((DL1,T1),(DL2,T2),(RDL,RT)):-
	DL1=RDL,
	T1=DL2,
	T2=RT.





