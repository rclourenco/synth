#include "DIniParser.h"
#include "xLib.h"
#include <string.h>

char *DIniGetEx(TIniStruct st,char *section,char *chave)
{
	TIniStruct iterator;
	DIniNode *fr;
	if(st){
		for(iterator=st;iterator;iterator=iterator->next)
		{
			if(!strcmp(iterator->id,section)){
				for(fr=iterator->firstnode;fr;fr=fr->next)
				{
					if(!strcmp(fr->id,chave)){
						return fr->string;
					}
				}
				break;
			}
		}
	}
	return NULL;	
}

char *DIniGet(TIniStruct st,char *chave)
{
	return DIniGetEx(st,"root",chave);
}

TIniStruct LoadIniFile(char *file)
{
	FILE *fp;
	char buffer[256];
	char *subs[3];
	int eof,r;
	DIniContainer *curcontainer=NULL,*rootcontainer=NULL;
	rootcontainer=DIniContainerAdd(NULL,"root");
	if(rootcontainer){
		curcontainer=rootcontainer;
		fp=fopen(file,"rb");
		if(fp){
			do{
				r=ReadLine(fp,buffer,225,&eof);	
				trim(buffer);
				r=split(buffer,'=',2,subs);
				if(r==2){
					trim(subs[0]);trim(subs[1]);
					
					DIniContainerNewNode(curcontainer,subs[0],subs[1]);
				}else{
					if(intag(buffer,'[',']',&subs[0])){
						trim(subs[0]);
						curcontainer=DIniContainerAdd(curcontainer,subs[0]);
					}
				}
			}while(!eof);
			fclose(fp);
		}
	}
	return rootcontainer;
}

DIniNode *DIniContainerNewNode(DIniContainer *container,char *id, char *value)
{
	DIniNode *new=DIniNodeAdd(container->lastinsertednode,id,value);
	if(new){
		if(!container->firstnode)
			container->firstnode=new;
		container->lastinsertednode=new;
		return new;
	}
	return NULL;
}

DIniNode *DIniNodeAdd(DIniNode *sentinel,char *id,char *value)
{
	DIniNode *new=(DIniNode *)malloc(sizeof(DIniNode));
	if(new){
		
		new->id=strdup(id);
		if(new->id){
			new->string=strdup(value);
			if(new->string){
				if(sentinel){
					new->next=sentinel->next;
					new->prev=sentinel;
					sentinel->next=new;
				}
				else{
					new->next=NULL;
					new->prev=NULL;
				}
				return new;
			}
			free(new->id);
		}
		
		free(new);
	}
	return NULL;
}

DIniContainer *DIniContainerAdd(DIniContainer *sentinel,char *id)
{
	DIniContainer *new=(DIniContainer *)malloc(sizeof(DIniContainer));
	if(new){
		new->firstnode=NULL;
		new->lastinsertednode=NULL;
		new->id=strdup(id);
		if(new->id){
			if(sentinel){
					new->next=sentinel->next;
					new->prev=sentinel;
					sentinel->next=new;
			}
			else{
				new->next=NULL;
				new->prev=NULL;
			}
			return new;
			free(new->id);
		}
		free(new);
	}
	return NULL;
}

