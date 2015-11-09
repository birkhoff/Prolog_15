
rect((X1,Y1),(X2,Y2),(X1,Y2),(X2,Y1)).


word(astante,  a,s,t,a,n,t,e). 
word(astoria,  a,s,t,o,r,i,a). 
word(baratto,  b,a,r,a,t,t,o). 
word(cobalto,  c,o,b,a,l,t,o). 
word(pistola,  p,i,s,t,o,l,a). 
word(statale,  s,t,a,t,a,l,e).


word(determiner,_,die). 
word(determiner,sing,der). 
word(noun,sing,katze).
word(noun,plu,katzen). 
word(noun,sing,maus). 
word(noun,plu,'mäuse').
word(verb,sing,jagt). 
word(verb,plu,jagen).


crossword(H1,H2, H3,V1,V2,V3):-

	word(H1, _,A1,_,A2,_,A3,_),
	word(H2, _,B1,_,B2,_,B3,_),
	word(H3, _,C1,_,C2,_,C3,_),

	word(V1, _,A1,_,B1,_,C1,_),
	word(V2, _,A2,_,B2,_,C2,_),
	word(V3, _,A3,_,B3,_,C3,_).
	
	

sentence(Word1,Word2,Word3,Word4,Word5):- 
         word(determiner,NUM1,Word1), 
         word(noun,NUM1,Word2), 
         word(verb,NUM1,Word3), 
         word(determiner,NUM2,Word4), 
         word(noun,NUM2,Word5).