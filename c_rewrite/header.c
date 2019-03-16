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

void randomSSID(char **outssid){
	FILE *check;
	char comname[30];
	int i=0;
	
	*outssid=malloc(sizeof(char)*30);
	check=popen("echo %COMPUTERNAME%","r");
	fgets(comname,sizeof(comname),check);
	pclose(check);
	
	while(comname[i]!='\0'){
		i++;
	}
	comname[i-1]='\040';
	strcpy(*outssid,comname);
	
}

void randomPW(char **outPasswd){
	/*
	example usage of this function
		char *paswd;
		randomPW(&paswd);
		printf("%s",paswd);
	*/
	char dicti[]="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	char tmpPasswd[8];
	*outPasswd=malloc(sizeof(char)*9);
	int i,val;
	
	srand(time(NULL));
	for(i=0;i<8;i++){
		val=rand()%62;
		tmpPasswd[i]=dicti[val];
	}
	tmpPasswd[i]='\0';
	
	strcpy(*outPasswd,tmpPasswd);
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

void iptValidator(char *input){
	char dicti[]="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	int i=0, j=0, strlen=0, mark=0;
	while(input[i]!='\0'){
		mark=0;
		for(j=0; j<sizeof(dicti)/sizeof(char); j++){
			if(input[i]!=dicti[j]){
				mark++;
			}
			if(mark==sizeof(dicti)/sizeof(char)){
				input[i]='-';
			}
		}
		i++;
	}
	input[i-1]='\040';
}

void umbrellaWriter(char *string){
	FILE *file1;
	file1=fopen("C:\\umbrella.cfg","w");
	fprintf(file1,"%s",string);
	fclose(file1);
}
void umbrellaReader(char *output){
	FILE *file1;
	file1=fopen("C:\\umbrella.cfg","r");
	char text[255];
	fgets(text,sizeof(text),file1);
	strcpy(output,text);
	fclose(file1);
}
