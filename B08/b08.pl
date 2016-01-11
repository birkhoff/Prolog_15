% mit Parametern

a(t) --> b(t), c.

b(t) --> [ha].

c --> d(s,r), [hu].

% a(t,A,C):- b(t,A,B), c(B,C).
% b(t,[ha|T],T).
% c(A,C):- d(s,r,A,[hu|C]).


% mit Extrazielen
% a --> b, c {mag(popeye,spinat)}.
% b(t) --> [ha] {wizart(t),sailor(popeye)}.

% a(A,C):- b(A,B), c(B,C), mag(popeye, spinat).
% b(t,[ha|B],B):- wizart(t), sailor(popeye).


s(foo) --> b(foo) ,a, {X is 3 + 2}.

s(foo,X1,X3):-
	b(foo,X1,X2),
	a(X2,X3),
	X is 3 + 2.



% Grammatikregeln:

s --> np((nom,Num,_)), vp(Num).
np(KNG) --> det(KNG), n(KNG).
vp(Num) --> v(Num), np((akk,_,_)).


% Lexikon:

det((nom,sing,mas)) --> [der].
det((akk,sing,mas)) --> [den].
det((_,sing,fem)) --> [die].
det((_,sing,neu)) --> [das].
det((_,plur,_)) --> [die].
det((_,plur,_)) --> [].
n((_,sing,fem)) --> [maus].
n((_,plur,_)) --> [maeuse].
n((_,sing,fem)) --> [katze].
n((_,plur,_)) --> [katzen].
n((_,sing,mas)) --> [hund].
n((_,plur,mas)) --> [hunde].
n((_,sing,neu)) --> [pferd].
n((_,plur,neu)) --> [pferde].
v(sing) --> [jagt].
v(plur) --> [jagen].