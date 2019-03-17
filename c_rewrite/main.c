#include "header.h"

void firstTimeSetUp(void){
	system("cls");
//some variables
	FILE *check, *checkcmd;
	char strCheck[35], command[255], userinput[30];
	char *ssid, *paswd;
	int i,mark,status=1;
	
//check step 1 - check if netsh.exe is exist
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
	//printf("%s\n",strCheck,sizeof(strCheck)); //debug_line_can_be_removed
    if(!checkFile(strCheck)){
		system("color 0c");
		printf("Fatal Error!\nnetsh.exe not found!\n");
		getchar();
		exit(0);
	}
	
//check step 2 - check if netsh wlan is working
	//set random profile
	randomPW(&paswd);//printf("%s",password); //debug_line_can_be_removed
	system("netsh wlan set hostednetwork mode=allow >nul");
	strcpy(command,"netsh wlan set hostednetwork ssid=HiddenNetwork key=");
	strcat(command, paswd); strcat(command," >nul"); 
	system(command); free(paswd);
	//printf("%s\n",command); //debug line can be removed
	
	//run random profile and check if hostednetwork working properly
	strcpy(command,"netsh wlan start hostednetwork");
	checkcmd=popen(command,"r");
	fgets(strCheck,sizeof(strCheck),checkcmd);
	pclose(checkcmd);
	system("netsh wlan stop hostednetwork >nul");
	if(!keywdFinder(strCheck,"The hosted network started.")){
		system("color 0c");
		system("netsh wlan stop hostednetwork >nul");
		printf("Fatal Error!\nCannot start hostednetwork, check your config and try again!\n");
		getchar();
		exit(0);
	}
	//printf("\n%s",strCheck); //debug line can be removed
	system("netsh wlan stop hostednetwork >nul");
	
//setup step 1 - determine system SSID
	reload1: fflush(stdin);
	system("cls");
	randomSSID(&ssid);
	printf("Enter SSID you want to use. Default = %s\n",ssid);
	printf("Leave empty to use default value.\n");
	printf("System@userSSID : ");
	fgets(userinput, 30, stdin);
	if(strlen(userinput)>25){
		goto reload1;
	}
	if(userinput[1]!='\0'){
		iptValidator(userinput);
		strcpy(ssid,userinput);
	}
	
//setup step 2 - determine system password
	reload2: fflush(stdin);
	system("cls");
	randomPW(&paswd);
	printf("Enter Password you want to use. Default = %s\n",paswd);
	printf("Leave empty to use default value.\n");
	printf("System@userPASWD : ");
	fgets(userinput, 30, stdin);
	if(strlen(userinput)>25){
		goto reload2;
	}
	if(userinput[1]!='\0'){
		iptValidator(userinput);
		strcpy(paswd,userinput);
	}	
	
//setup step 3 - storing ssid and password to config file 
	system("cls");
	//printf("%s %s\n",ssid,paswd); //debug_line_can_be_removed
	strcpy(command,"netsh wlan set hostednetwork ssid=");
	strcat(command,ssid); strcat(command,"key=");
	strcat(command,paswd); strcat(command," >nul");
	//printf("%s",command); //debug_line_can_be_removed
	if(!umbrellaWriter(command)){
		free(ssid);free(paswd);
		system("color 0c");
		printf("Fatal Error!\nCannot write configuration file to C:\\\n");
		getchar();
		exit(0);
	}
	if(!umbrellaDWriter(ssid, paswd)){
		free(ssid);free(paswd);
		system("color 0c");
		printf("Fatal Error!\nCannot write configuration file to C:\\\n");
		getchar();
		exit(0);
	}
	free(ssid);free(paswd);
}

void startUp(void){
	system("cls");
	FILE *checkcmd; char *paswd; char command[255], strCheck[255];
	
	//setting random network profile
	randomPW(&paswd);
	system("netsh wlan set hostednetwork mode=allow >nul");
	strcpy(command,"netsh wlan set hostednetwork ssid=HiddenNetwork key=");
	strcat(command, paswd); strcat(command," >nul"); 
	system(command); free(paswd);
	
	//running random profile and check if hostednetwork working properly
	strcpy(command,"netsh wlan start hostednetwork");
	checkcmd=popen(command,"r");
	fgets(strCheck,sizeof(strCheck),checkcmd);
	pclose(checkcmd);
	if(!keywdFinder(strCheck,"The hosted network started.")){
		system("netsh wlan stop hostednetwork >nul");
		system("color 0c");
		printf("Fatal Error!\nCannot start hostednetwork, check your config or\nrun as administrator and try again!\n");
		getchar();
		exit(0);
	}
	printf("Connect your network and press enter . . .");
	getchar();
	system("netsh wlan stop hostednetwork >nul");
}

void mainMenu(void){
	system("color 0b");
	int userinput; char command[255];
	char *ssid, *paswd;
	while(1){
		system("cls");
		printf("Welcome to UMBRELLA MyWifi\n");
		printf(" 1.) Start MyWifi\n");
		printf(" 2.) Stop MyWifi\n");
		printf(" 3.) Check Status\n");
		printf(" 4.) Change SSID and Password\n");
		printf(" 5.) Exit\n");
		printf("System@userInput : ");
		scanf("%d", &userinput);
		if(userinput == 1){
			fflush(stdin);
			umbrellaReader(command);
			system(command);
			system("netsh wlan start hostednetwork >nul");
			printf("System@Message : Hostednetwork is started!\n");
			printf("Press enter to continue . . ."); getchar();
		}else if(userinput == 2){
			fflush(stdin);
			system("netsh wlan stop hostednetwork >nul");
			printf("System@Message : Hostednetwork is stopped!\n");
			printf("Press enter to continue . . ."); getchar();
		}else if(userinput == 3){
			fflush(stdin);
			system("cls");
			umbrellaDReader(&ssid, &paswd);
			printf("MyWifi Information\n");
			printf("------------------\n");
			printf("    SSID                   : %s",ssid);
			printf("    KEY                    : %s\n",paswd);
			system("netsh wlan show hostednetwork");
			printf("Press enter to continue . . ."); getchar();
		}else if(userinput == 4){
			fflush(stdin);
			printf("System@Message : Please Wait . . .\n");
			system("netsh wlan stop hostednetwork >nul");
			firstTimeSetUp();
		}else if(userinput == 5){
			printf("System@Message : Exiting . . . \n");
			system("netsh wlan stop hostednetwork >nul");
			exit(0);
		}else{
			//printf("%d",userinput);
			printf("System@Message : Input Not Valid!");
			sleep(3);
		}
	}
}

int main(){
	system("title UMBRELLA - MyWifi");
	system("color 0b"); system("cls");
	if(!umbrellaChecker()){
		firstTimeSetUp();
	}
	startUp();
	mainMenu();
	return 0;
}
