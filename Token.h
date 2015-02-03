#ifndef TOKEN_H
#define TOKEN_H

class Token
{
private:
	int type;
	union {
		int ival;
		int opval;
	} attribute;

public:
	Token(int t):type(t) {}
	Token(int t, int v):type(t)  { this->setAttr(t,v); }
	~Token() {}

	int getType() { return type; }
	int getAttr(int t);
	void setAttr(int t, int v);

	void show();
};

#endif

