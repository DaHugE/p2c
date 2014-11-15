{ === PROG1 === }
Program ex1;
var
	i : integer;
	c : char;

{ fonction qui ecrit une ligne de n car et passe à la ligne }
procedure Ligne(car : char ; n : integer);
var
	i : integer;
begin
	for i:=1 to n do
	    write(car);
	writeln
end;

{ programme principal}
begin
	writeln("quel caractere voulez vous?");
	read(c);
	writeln("combien de fois?");
	read(i);
	Ligne(c;i);
end.
