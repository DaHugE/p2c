# Makefile pour Pascal2C
TFLEX=JFlex.Main 
TCUP=java_cup.Main 
SRCFLEX=p2c.lex
SRCCUP=p2c.cup
JSRC=Yylex
CSRC=parser
all : Main.class
Main.class : $(JSRC).java sym.java $(CSRC).java
	javac $(JSRC).java sym.java $(CSRC).java
$(JSRC).java : $(SRCFLEX) sym.java
	java $(TFLEX) $(SRCFLEX)
sym.java : $(SRCCUP)
	java $(TCUP) $(SRCCUP)
clean :
	rm *.class *~ *.java
