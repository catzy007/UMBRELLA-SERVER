#ifndef HEADER_H_INCLUDED
#define HEADER_H_INCLUDED

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>

int keywdFinder(const char *string, const char *keyword);
void randomPW(char **outPasswd);
int checkFile(const char *filename);

#endif
