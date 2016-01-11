a --> b, c.
b --> c.
c --> [].
c --> [ha,hu].
d --> a, b, c, d.
d --> a, [hu], c.


a1(A,C):- b1(A,B), c1(B,C).
b1(A,B):- c1(A,B).
c1(A,A).
c1([ha,hu|B],B).
d1(A,E):- a1(A,B), b1(B,C), c1(C,D), d1(D,E).
d1(A,D):- a1(A,B), B=[hu|C], c1(C,D).


q0 --> [a], q1.
q0 --> [b], q0.

q1 --> [].
q1 --> [b], q1.
q1 --> [a], q0.


/*
S → A, S, B
S→ε
A→a B→b
*/

ss --> [].
ss --> aa, ss, bb.
aa --> [a].
bb --> [b].


s2 --> [].
s2 --> [d].
s2 --> [c].
s2 --> [d], s2 ,[d].
s2 --> [c], s2, [c].



/*

Erweiteren Sie die Grammatik mit den Regeln 
S→NPVP,
NP→DetN,
VP→V NP,
Det → eine|die|keine, 
N → katze|maus, 
V → jagt|klaut 
um Regeln, für
• Adjektive und
• Konjunktionen

*/


s   --> np, vp.
np  --> det, n.
vp  --> v, np.
det --> [eine];
		[die];
		[keine]. 
n   --> [katze];
        [maus]. 
v   --> [jagt];
        [klaut].



























