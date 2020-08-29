#include <string.h>
#include "parser.h"
#include "interpreter.h"

unsigned memory[65536];

int interpreter_interpret(void) {
    unsigned *mem_ptr = memory;
    unsigned idx = 0;
    unsigned long long *cur = code;
    char buf = 0;
    memset(memory, 0, sizeof(unsigned) * 65536);
    for (unsigned i = 0; i < size; ++i, ++cur) {
        buf = *(char*)cur;
        switch (buf) {
        case '>':
            ++idx;
            idx &= 0xffff;
            mem_ptr = memory + idx;
            break;
        case '<':
            --idx;
            idx &= 0xffff;
            mem_ptr = memory + idx;
            break;
        case '+':
            ++(*mem_ptr);
            break;
        case '-':
            --(*mem_ptr);
            break;
        case '.':
            putchar((char)*mem_ptr);
            break;
        case ',':
            *mem_ptr = getchar();
            break;
        case '[':
            if (!*mem_ptr) {
                i = ((unsigned*)cur)[1];
                cur = code + i;
            }
            break;
        case ']':
            if (*mem_ptr) {
                i = ((unsigned*)cur)[1];
                cur = code + i;
            }
            break;
        default:
            return 1;
        }
    }
    return 0;
}
