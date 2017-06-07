#include "xLib.h"
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define ANY 1
#define SUBSTR 2
#define ONE 3


int ReadLineEx(int fd,char *buffer,size_t len,int timeout)
{
	fd_set rfds;
	struct timeval tv;
	int retval;
	char ch;
	int i=0,r;
	tv.tv_sec=timeout;
	tv.tv_usec=0;

	while(1){
			FD_ZERO(&rfds);
			FD_SET(fd,&rfds);

			retval=select(fd+1,&rfds,NULL,NULL,&tv);

			if(retval==-1){
				break;
			}
			if(retval)
			{
				if(FD_ISSET(fd,&rfds))
				{

					r=read(fd,&ch,1);

					if(r==-1){
						break;
					}
					if(ch=='\n')
						break;
					else{
						if(i<len)
						{
							buffer[i++]=ch;
						}
					}			
				}
				
			}
			else{
				break;
			}
			
	}
	buffer[i]='\0';
	return i;
}

int ReadLine(FILE *fp, char *buffer,size_t len, int *eof)
{	
	int ch,over=0;
	int total=0;
	*eof=0;
	do{
		ch=fgetc(fp);
		if(ch==EOF){
			over=1;
			*eof=1;
		}
		else if(ch=='\n'){
			over=1;
		}
		else if(total<len){
			buffer[total++]=ch;
		}
	}while(!over);
	buffer[total]='\0';
	return total;
}

char *ltrim(char *str)
{
	size_t i=0;
	size_t len=strlen(str);
	while(str[i]==' ' || str[i]=='\t')
		i++;
	if(i){
		memmove(str,str+i,len+1-i);
	}
	return str;
}

char *rtrim(char *str)
{
	
	size_t len=strlen(str);
	size_t i=len-1;
	if(len && i>=0)
	{
		while(i>=0 && (str[i]==' ' || str[i]=='\t'))
			i--;
		str[i+1]='\0';
	}
	
	return str;
}

int split(char *string, char by, int num, char *subs[])
{
	int i;
	char *ptr=string;
	subs[0]=ptr;
	for(i=1;i<num;i++)
	{
			ptr=index(ptr,by);
			if(ptr){
				*ptr='\0';
				subs[i]=++ptr;
			}
			else{
				break;
			}
	}
	return i;
}

TSplit CreateSplit(char *string, char by, int max)
{
	TSplit sp=(TSplit)malloc(sizeof(Split));
	int i,total;
	if(sp){
		sp->buffer=strdup(string);
		if(sp->buffer){
			i=0;
			total=1;
			while(sp->buffer[i])
			{
				if(sp->buffer[i]==by)
					total++;
				i++;
			}
			sp->indexes=(char **)malloc(sizeof(char *)*total);
			if(sp->indexes){
				sp->count=split(sp->buffer,by,max,sp->indexes);
				return sp;
			}
			free(sp->buffer);
		}
		free(sp);
	}
	return NULL;
}

int GetSplitCount(TSplit sp)
{
	if(sp){
		return sp->count;
	}
	return -1;
}

char *GetSplitItem(TSplit sp, int item)
{
	if(sp && sp->indexes && item>=0 && item<sp->count)
	{
		return sp->indexes[item];
	}
	return NULL;
}

void DestroySplit(TSplit sp)
{
	free(sp->indexes);
	free(sp->buffer);
}

int intag(char *string,char first,char last,char **ret)
{
	size_t len=strlen(string);
	if(len>2){
		if(string[0]==first){
			*ret=&string[1];
			if(string[len-1]==last){
				string[len-1]='\0';
				return 1;
			}
		}
			
	}
	return 0;
}

int regmatch(char *string, char *pattern)
{
	int next=0;
	int r;
	
	do {
		r=xlpv_pattern_parser(pattern,&next);			
	}while(r!=0);
	return 0;
	
}

int xlpv_pattern_parser(char *pattern, int *next)
{
	int i=0;
	int over=0;
	while(!over)
	{
		if(pattern[i]=='*'){
			while(pattern[i]=='*')
				i++;
			*next=i;
			return ANY;
		}else if(pattern[i]=='\0'){
			return 0;
		}			
	}
	return 0;
}
