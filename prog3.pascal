{ === PROG 3 === }
Program ex3;
var n:integer;

{une fonction qui retourne le minimum de deux entiers}
Function Minimum(a,b:integer):integer;
begin
	if a<b then Minimum:=a
	else Minimum:=b;
end;

{ une fonction qui retourne l'entier 27}
Function LeNombre27 : integer;
begin
	LeNombre27:=27;
end;

{ le prog principal }
begin
	n:=12;
	writeln(LeNombre27+Minimum(n,3*(Minimum(10,4+5))));
end.