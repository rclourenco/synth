#ifndef xLib_h
	#define xLib_h



#include <stdlib.h>
#include <stdio.h>

typedef struct{
	char *buffer;
	char **indexes;
	int count;
}Split,*TSplit;

#define trim(X) ltrim(rtrim(X))
	
int ReadLineEx(int fd,char *buffer,size_t len,int timeout);
int ReadLine(FILE *fp, char *buffer,size_t len, int *eof);	
char *ltrim(char *str);
char *rtrim(char *str);

int intag(char *string,char first,char last,char **ret);
int split(char *string, char by, int num, char *subs[]);

int regmatch(char *string, char *pattern);
int xlpv_pattern_parser(char *pattern, int *next);

TSplit CreateSplit(char *string, char by, int max);
void DestroySplit(TSplit sp);
int GetSplitCount(TSplit sp);
char *GetSplitItem(TSplit sp, int item);

#endif
