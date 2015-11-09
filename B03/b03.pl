% Ankerklausel

add(0,0,0).

% rekursive Klausel

add(0,Y,R):-
	Y = succ(B),
	R = succ(R2),
	add(0,B,R2).

add(X,Y,R):-
	X = succ(A),
	R = succ(R2),
	add(A,Y,R2).