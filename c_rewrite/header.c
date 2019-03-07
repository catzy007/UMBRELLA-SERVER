#include "header.h"

int keywdFinder(const char *string, const char *keyword){
	int i=0, j=0, keylength=0, mark=0;
	while(keyword[j]!='\0'){
		keylength++;
		j++;
	}
	while(string[i]!='\0'){
		j=0; mark=0;
		while(keyword[j]!='\0'){
			if(string[i+j]==keyword[j]){
				mark++;
			}
			j++;
		}
		if(mark==keylength){
			return 1;
		}
		i++;
	}
	return 0;
}

void randomPW(char **outPasswd){
	/*
	example usage of this function
		char *password;
		randomPW(&password);
		printf("%s",password);
	*/
	char dicti[]="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	char *tmpPasswd=malloc(sizeof(char)*9);
	*outPasswd=malloc(sizeof(char)*9);
	int i,val;
	
	srand(time(NULL));
	for(i=0;i<8;i++){
		val=rand()%62;
		tmpPasswd[i]=dicti[val];
	}
	tmpPasswd[i]='\0';
	
	strcpy(*outPasswd,tmpPasswd);
	free(tmpPasswd);
}

int checkFile(const char *filename){
    /* try to open file to read */
    FILE *file;
    if (file = fopen(filename, "r")){
        fclose(file);
        return 1;
    }
    return 0;
}
