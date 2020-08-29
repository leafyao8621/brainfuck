#include <stdlib.h>
#include "parser.h"

unsigned long long *code;
unsigned size;

int parser_load_from_file(FILE *fin) {
    unsigned short idx = 0;
    unsigned long long *stack = malloc(sizeof(unsigned long long) * 1000);
    code = malloc(sizeof(unsigned long long) * 1000);
    unsigned long long *cur = code;
    unsigned long long *cur_stack = stack;
    unsigned cap_stack = 1000;
    unsigned cap_code = 1000;
    unsigned size_stack = 0;
    if (!code || !stack) {
        return 1;
    }
    for (int in = fgetc(fin); !feof(fin); in = fgetc(fin)) {
        switch (in) {
        case '>':
        case '<':
        case '+':
        case '-':
        case '.':
        case ',':
            ++size;
            if (size > cap_code) {
                cap_code <<= 1;
                code = realloc(code, sizeof(unsigned long long) * cap_code);
                if (!code) {
                    return 1;
                }
                cur = code + size;
            }
            *(char*)cur = (char)in;
            ++cur;
            break;
        case '[':
            ++size_stack;
            if (size_stack) {
                cap_stack <<= 1;
                stack = realloc(stack, sizeof(unsigned long long) * cap_stack);
                if (!stack) {
                    return 1;
                }
                cur_stack = stack + size_stack;
            }
            *(unsigned short*)cur_stack = idx;
            ((unsigned*)cur_stack)[1] = size;
            ++cur_stack;
            ++size;
            if (size > cap_code) {
                cap_code <<= 1;
                code = realloc(code, sizeof(unsigned long long) * cap_code);
                if (!code) {
                    return 1;
                }
                cur = code + size;
            }
            *(char*)cur = (char)in;
            ((unsigned short*)cur)[1] = idx++;
            ++cur;
            break;
        case ']':
            if (!size_stack) {
                free(stack);
                return 2;
            }
            --size_stack;
            --cur_stack;
            ++size;
            if (size > cap_code) {
                cap_code <<= 1;
                code = realloc(code, sizeof(unsigned long long) * cap_code);
                if (!code) {
                    return 1;
                }
                cur = code + size;
            }
            *(char*)cur = (char)in;
            ((unsigned short*)cur)[1] = *(unsigned short*)cur_stack;
            ((unsigned*)cur)[1] = ((unsigned*)cur_stack)[1];
            ((unsigned*)(code + ((unsigned*)cur_stack)[1]))[1] = size - 1;
            ++cur;
            break;
        default:
            break;
        }
    }
    free(stack);
    if (size_stack) {
        return 2;
    }
    return 0;
}

void parser_finalize(void) {
    free(code);
}

int parser_log_code(FILE *fout) {
    unsigned long long *cur = code;
    char buf = 0;
    for (unsigned i = 0; i < size; ++i, ++cur) {
        buf = *(char*)cur;
        switch (buf) {
        case '>':
        case '<':
        case '+':
        case '-':
        case '.':
        case ',':
            fprintf(fout, "idx: %u\n", i);
            fprintf(fout, "cmd: %c\n\n", buf);
            break;
        case '[':
        case ']':
            fprintf(fout, "idx: %u\n", i);
            fprintf(fout, "cmd: %c\n", buf);
            fprintf(fout, "lbl: %hu\n", ((unsigned short*)cur)[1]);
            fprintf(fout, "jmp: %u\n\n", ((unsigned*)cur)[1]);
            break;
        default:
            return 1;
        }
    }
    return 0;
}
