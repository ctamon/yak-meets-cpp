CC = g++
YACC = yacc
LEX = lex
CFLAGS = -g -Wall
DFLAGS = -DDEBUG
YACCFLAGS = -dv
LECFLAGS = -l
LIBS = -ll -ly
SRC = y.tab.cpp lex.yy.cpp Token.cpp Tree.cpp Eval.cpp
OBJ = y.tab.o lex.yy.o Token.o Tree.o Eval.o
TARGET = boo

all: $(TARGET) $(OBJ)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(DFLAGS) -o $@ $(OBJ) $(LIBS)

.c.o:
	$(CC) $(CFLAGS) $(DFLAGS) -c $<

y.tab.cpp: calc.y
	yacc -dv -o y.tab.cpp calc.y

lex.yy.cpp: calc.l
	lex -l -o lex.yy.cpp calc.l

clean:
	rm -f y.tab.* lex.yy.* y.output $(OBJ) $(TARGET)

