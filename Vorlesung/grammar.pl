% Grammatikregeln:


manly_compliment([no,homo]).
manly_compliment([_H|T]):-
	manly_compliment(T).



s --> np((nom,Num,GEN),_), vp(Num,GEN).
np(KNG,GEN) --> det(KNG), adj(KNG,COMP), n(KNG), manly(GEN,COMP).
vp(Num,GEN) --> v(Num), np((akk,_,_),GEN).


det((nom,sing,mas)) --> [der].
det((akk,sing,mas)) --> [den].
det((nom,sing,fem)) --> [die].
det((nom,sing,neu)) --> [das].
det((nom,plur,_)) --> [die].
det((_,plur,_)) --> [].
det((akk,sing,neu)) --> [ein].
n((nom,sing,fem)) --> [nora].
n((nom,plur,fem)) --> [maedchen].
n((nom,sing,mas)) --> [max].
n((nom,sing,mas)) --> [mike].
n((nom,plur,mas)) --> [jungs].
n((akk,plur,neu)) --> [augen].
n((akk,sing,neu)) --> [gesicht].

v(sing) --> [hat].
v(plur) --> [haben].

adj((akk,plur,neu), compliment) --> [schoene].
adj((akk,sing,neu), compliment) --> [schoenes].
adj((_,_,_), no_compliment) --> [].


manly(mas,compliment) --> [no, homo].
manly(_,no_compliment) --> [].
manly(fem,_) --> [].