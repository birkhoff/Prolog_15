% Ankerklausel

add(0,0,0).

% rekursive Klauseln
% wur zaehlen Y runter

add(0,Y,R):-
	Y = succ(B),	% Y ist Nachfolger von B
	R = succ(R2),	% R ist der Nachfolger von R2
	add(0,B,R2).

% wir zaehlen X runter

add(X,Y,R):-
	X = succ(A),	% X ist Nachfolger von A
	R = succ(R2),
	add(A,Y,R2).
	
	
	
	
% X ist groesser als Y

% Anker klausel

greater_than(succ(_),0).

% rekursive Klausel

greater_than(succ(X),succ(Y)):-
	greater_than(X,Y).
