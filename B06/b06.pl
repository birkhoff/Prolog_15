% swapfl/2

swapfl([FIRST|T],[LAST|SWAPPED2]):-
	reverse(T,[LAST|MIDDLE]),
	SWAPPED = [FIRST|MIDDLE],
	reverse(SWAPPED,SWAPPED2).
	
% delete_all/3

deleteall(_E,[],[]).

deleteall(E,[E|T],R):-
	deleteall(E,T,R).

deleteall(E,[H|T],[H|R]):-
	deleteall(E,T,R).
	

permute([],[]).	
permute(L,[E|T]):-
	member(E,L),
	delete(L,E,DEL),
	permute(DEL,T).
	
	
palindrom(L):-
	reverse(L,RL),
	L = RL.
	
	
% wiederhol/2
% einfachere Loesung zwei gleiche Teillisten 'TL' ergeben die Liste L

wiederhol(L):-
	append(TL,TL,L).
	
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	
% wiederhol/1 ruft das Hilfpraedikat wiederhol/2 auf

wiederhol2(L):-
	wiederhol([],L).

% wiederhol/2 haengt solange das erste Element einer Liste an den Akkumaltor 
% bis dieser gleich dem Rest der Liste ist

wiederhol(Acc,L):-
	Acc = L.
	
wiederhol(Acc,[H|T]):-
	append(Acc,[H],NewAcc),
	wiederhol(NewAcc,T).
	
	
/*

• In einer Straße stehen drei Häuser mit den Hausnummern 1, 2 und 3.
• Es gibt ein rotes, ein blaues und ein grünes Haus.
• In der Straße wohnt ein Engländer, eine Japanerin und eine Spanierin.
• In jedem Hau gibt es ein Haustier: eine Schnecke, ein Jaguar und einen Wolf.
• In dem roten Haus wohnt ein Engländer.
• Die Spanierin hält einen Jaguar.
• Die Japanerin wohnt rechts neben dem Haus, in dem die Schnecke gehalten wird.
• Die Schnecke lebt in dem Haus links vom blauen Haus.


	
	Nr1 \= Nr2,  Nr1 \= Nr3, Nr2 \= Nr3,
	Farbe1 \= Farbe2, Farbe1 \= Farbe3, Farbe2 \= Farbe3,
	Tier1 \= Tier2, Tier1 \= Tier3, Tier2 \= Tier3,
	Nat1 \= Nat2, Nat1 \= Nat3, Nat2 \= Nat3.
	
	
*/	





	
	

	
