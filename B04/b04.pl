% all_members/2

all_members([],_).
all_members([H|T],L):-
	member(H,L),
	all_members(T,L).




% Automaten definieren:

% start und Endzustaende 

a1(start,[q0]).
a1(end,[q0]).

% Ubergaenge

a1(q0,b,q0).
a1(q0,a,q1).
a1(q1,b,q1).
a1(q1,a,q0).


% fsa_accept/1 ruft das Hilfspraedikat fsa_accept/2 auf 

fsa_accept(L):-
	a1(start, STARTS),
	member(START,STARTS),
	fsa_accept(START,L).
	
% fsa_accept/2 erwartet einen Zustand und eine Liste von Literalen
% Ankerklausel wenn alle Zeichen abgearbeitet sind und wir in einem Endzustand sind, wird das Wort akzeptiert
	
fsa_accept(END,[]):-
	a1(end,ENDS),
	member(END,ENDS).

% wechseln des aktuellen Zustandes mithilfe unserer definierten Ubergaenge.
	
fsa_accept(STATE,[H|T]):-
	a1(STATE,H,NEW_STATE),
	fsa_accept(NEW_STATE,T).
	




% Transdingsbums


% start und Endzustaende 

t1(start,[q0]).
t1(end,[q0,q1]).

% Ubergaenge

t1(q0,[b,b],q0).
t1(q0,[a,a],q1).
t1(q1,[a,b],q0).
t1(q1,[b,b],q1).

% trans_accept/2 ruft das Hilfspraedikat tsa_accept/3 auf 

trans_accept(L1,L2):-
	t1(start, STARTS),
	member(START,STARTS),
	trans_accept(START,L1,L2).


% Hilfspraedikat trans_accept/2

trans_accept(END,[],[]):-
	t1(end,ENDS),
	member(END,ENDS).

% wechseln des aktuellen Zustandes mithilfe unserer definierten Ubergaenge.

trans_accept(STATE,[H1|T1],[H2|T2]):-
	t1(STATE,[H1,H2],NEW_STATE),
	trans_accept(NEW_STATE,T1,T2).























/*
% accept when List is empty or contains a b

fsa_accept([]).

fsa_accept([b|T]):-
	fsa_accept(T).
	
% when reading an "a" switches the state to not accept

fsa_accept([a|T]):-
	fsa_not_accept([T]).
	
fsa_not_accept([a|T]):-
	fsa_accept(T).
	
	
fsa_not_accept([a|T]):-
	fsa_not_accept([b|T]).


%trans_accepts copies the behaviour of fsa_accept

trans_accept([],[]).
trans_accept([b|T1],[b|T1]):-
	trans_accept(T1,T2).

trans_accept([a|T1],[a|T1]):-
	trans_not_accept(T1,T2).

% only difference that always a "b" is added to the second list
	
trans_not_accept([b|T1],[b|T1]):-
	trans_not_accept(T1,T2).

trans_not_accept([a|T1],[b|T1]):-
	trans_accept(T1,T2).
*/