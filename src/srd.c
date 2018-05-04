#include <stdio.h>
#include <stdlib.h>
#include "srd.h"

Src* init_from_file(char* fn) {
    Src* opt = malloc(sizeof(Src));
    opt->size = 0;
    int buf_size = 500;
    opt->src = malloc(buf_size);
    FILE* inf = fopen(fn, "r");
    while (!feof(inf)) {
        char inc = fgetc(inf);
        switch (inc) {
        case '>':
        case '<':
        case '+':
        case '-':
        case ',':
        case '.':
        case '[':
        case ']':
            if (opt->size == buf_size) {
                buf_size <<= 1;
                opt->src = (char*)realloc(opt->src, buf_size);
            }
            opt->src[opt->size++] = inc;
        default:
            break;
        }
    }
    opt->src = (char*)realloc(opt->src, opt->size);
    return opt;
}

int free_Src(Src* src) {
    if (!src) {
        return 1;
    }
    free(src->src);
    free(src);
    return 0;
}
