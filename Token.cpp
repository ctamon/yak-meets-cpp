#include <stdio.h>
#include <stdlib.h>
#include "Token.h"
#include "Tree.h"
#include "y.tab.hpp"


int Token::getAttr(int t) 
{ 
	if (t == NUMBER) 
		return attribute.ival;
	else
		return attribute.opval;
}

void Token::setAttr(int t, int v)
{ 
	if (t == NUMBER) 
		attribute.ival = v; 
	else attribute.opval = v; 
}

void Token::show()
{
	switch(type) {
	case NUMBER:
		fprintf(stderr, "NUM[%d]\n", attribute.ival);
		break;
	case ADDOP:
		fprintf(stderr, "ADDOP[%d]\n", attribute.opval);
		break;
	case MULOP:
		fprintf(stderr, "MULOP[%d]\n", attribute.opval);
		break;
	default:
		fprintf(stderr, "[UNKNOWN]");
	}
}
	

