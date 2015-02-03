boo: y.tab.o lex.yy.o Token.o Tree.o
	g++ -g -o boo y.tab.o lex.yy.o Token.o Tree.o -ll -ly
y.tab.o: y.tab.cpp
	g++ -g -c y.tab.cpp
lex.yy.o: lex.yy.cpp
	g++ -g -c lex.yy.cpp
y.tab.cpp: calc.y
	yacc -dv -o y.tab.cpp calc.y
lex.yy.cpp: calc.l
	lex -l -o lex.yy.cpp calc.l
Tree.o: Tree.cpp Tree.h
	g++ -g -c Tree.cpp
Token.o: Token.cpp Token.h
	g++ -g -c Token.cpp
clean:
	rm -f y.tab.* lex.yy.* *.o boo

