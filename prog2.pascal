{ === PROG2 === }
Program ex2;
var
	i,n : integer;
	nombre,somme : real
begin
	n:=10;
	somme:=10;
	{lire n reels et en faire la somme s'ils sont positifs}
	for i:=1 to n do begin
	    read(nombre);
	    if nombre>0 then
	       somme:=somme+nombre
	    else
		wrriteln("Je ne veux pas de nombre negatif")
	end;
	{en faire la moyenne}
	writeln(somme/n)
end.