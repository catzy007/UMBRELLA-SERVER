#ifndef HEADER_H_INCLUDED
#define HEADER_H_INCLUDED

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>
#include "core.h"

int keywdFinder(const char *string, const char *keyword);
int checkFile(const char *filename);
void randomSSID(char **outssid);
void randomPW(char **outPasswd);
void iptValidator(char *input);
int umbrellaWriter(char *string);
int umbrellaDWriter(char *ssid, char *paswd);
void umbrellaReader(char *output);
void umbrellaDReader(char **ssid, char **paswd);
int umbrellaChecker(void);

#endif
