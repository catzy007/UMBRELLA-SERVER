#include "header.h"

void firstTimeStartUp(){
//some variables
	FILE *check, *checkcmd;
	char strCheck[35], command[255];
	char *password;
	int i,mark;
	
//check step 1
	check=popen("echo %windir%\\system32\\netsh.exe","r");
	fgets(strCheck,sizeof(strCheck),check);
	pclose(check);
	mark=0;
	for(i=3;i<sizeof(strCheck);i++){
		if(strCheck[i-3]=='e' && 
		strCheck[i-2]=='x' && 
		strCheck[i-1]=='e'){
			mark=1;
		}
		if(mark == 1){
			strCheck[i]='\0';
		}
	}
	//printf("%s\n",strCheck,sizeof(strCheck));
    if(!checkFile(strCheck)){
		system("color 0c");
		printf("Fatal Error!\nnetsh.exe not found!\n");
		getchar();
		exit(0);
	}
	
//check step 2
	randomPW(&password);
	//printf("%s",password); //debug line can be removed
	system("netsh wlan set hostednetwork mode=allow >nul");
	strcpy(command,"netsh wlan set hostednetwork ssid=HiddenNetwork key=");
	strcat(command, password);
	//printf("%s\n",command); //debug line can be removed
	checkcmd=popen(command,"r");
	fgets(strCheck,sizeof(strCheck),checkcmd);
	pclose(checkcmd);
	free(password);
	if(!keywdFinder(strCheck,"started.")){
		system("color 0c");
		system("netsh wlan stop hostednetwork >nul");
		printf("Fatal Error!\nCannot start hostednetwork, check your config and try again!\n");
		getchar();
		//exit(0);
	}
	//printf("\n%s",strCheck); //debug line can be removed
	system("netsh wlan stop hostednetwork >nul");
	
//setup step 1
	check=popen("echo %COMPUTERNAME%","r");
	fgets(strCheck,sizeof(strCheck),check);
	pclose(check);
	printf("Enter SSID you want to use. Default = %s",strCheck);
	printf("Leave empty to use default value.\n");
	printf("System@userSSID : \n");

//setup step 2
	randomPW(&password);
	printf("Enter Password you want to use. Default = %s\n",password);
	printf("Leave empty to use default value.\n");
	printf("System@userPASWD : \n");
}

void startUp(){
	system("netsh wlan stop hostednetwork");
}

int main(){
	//printf("Hello World\n");
	firstTimeStartUp();
	return 0;
}
