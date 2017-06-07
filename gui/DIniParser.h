#ifndef DIniParser_h
	#define DIniParser_h
	
#include "xLib.h"
	


typedef struct _DIniNode{
	struct _DIniNode *next,*prev;
	char *id;
	char *string;
}DIniNode;

typedef struct _DIniContainer{
	struct _DIniContainer *next,*prev;
	char *id;
	DIniNode *firstnode;
	DIniNode *lastinsertednode;
}DIniContainer,*TIniStruct;


DIniNode *DIniNodeAdd(DIniNode *last,char *id,char *value);
DIniContainer *DIniContainerAdd(DIniContainer *sentinel,char *id);
DIniNode *DIniContainerNewNode(DIniContainer *container,char *id, char *value);

TIniStruct LoadIniFile(char *file);

char *DIniGet(TIniStruct st,char *chave);
char *DIniGetEx(TIniStruct st,char *section,char *chave);

#endif
