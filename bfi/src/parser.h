#ifndef _PARSER_H_
#define _PARSER_H_

#include <stdio.h>

extern unsigned long long *code;
extern unsigned size;

int parser_load_from_file(FILE *fin);
void parser_finalize(void);
int parser_log_code(FILE *fout);

#endif
