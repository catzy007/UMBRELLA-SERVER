#include "header.h"

void firstTimeStartUp(){
//some variables
	FILE *check, *checkcmd;
	char strCheck[35], command[255], userinput[30];
	char *ssid; char *paswd;
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
	randomPW(&paswd);
	//printf("%s",password); //debug line can be removed
	system("netsh wlan set hostednetwork mode=allow >nul");
	strcpy(command,"netsh wlan set hostednetwork ssid=HiddenNetwork key=");
	strcat(command, paswd);
	//printf("%s\n",command); //debug line can be removed
	checkcmd=popen(command,"r");
	fgets(strCheck,sizeof(strCheck),checkcmd);
	pclose(checkcmd);
	free(paswd);
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
	randomSSID(&ssid);
	printf("Enter SSID you want to use. Default = %s\n",ssid);
	printf("Leave empty to use default value.\n");
	printf("System@userSSID : ");
	fgets(userinput, 30, stdin);
	if(userinput[1]!='\0'){
		iptValidator(userinput);
		strcpy(ssid,userinput);
	}
	
//setup step 2
	randomPW(&paswd);
	printf("Enter Password you want to use. Default = %s\n",paswd);
	printf("Leave empty to use default value.\n");
	printf("System@userPASWD : ");
	fgets(userinput, 30, stdin);
	if(userinput[1]!='\0'){
		iptValidator(userinput);
		strcpy(paswd,userinput);
	}	
	
//submitting input to database
	//printf("%s %s\n",ssid,paswd); //debug_line_can_be_removed
	strcpy(command,"netsh wlan set hostednetwork ssid=");
	strcat(command,ssid);
	strcat(command,"key=");
	strcat(command,paswd);
	//printf("%s",command); //debug_line_can_be_removed
	umbrellaWriter(command);
	system(command);
}

void startUp(){
	system("netsh wlan stop hostednetwork");
}

int main(){
	//printf("Hello World\n");
	firstTimeStartUp();
	return 0;
}
