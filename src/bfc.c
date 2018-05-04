#include <stdio.h>
#include "srd.h"
#include "bm.h"

char* dat = "    .data\ndat:    .space 30000\n    .text\n    .globl main\nmain:\n    la    $t0, dat\n";
char* end = "    li     $v0, 10\n    syscall\n";
int main() {
    Src* a = init_from_file("test.bf");
    WS* ws = malloc_WS();
    BM* bm = malloc_BM();

    for (int i = 0; i < a->size; i++) {
        int temp;
        switch (a->src[i]) {
        case '[':
            push_WS(ws, i);
            break;
        case ']':
            pop_WS(ws, &temp);
            push_BM(bm, temp, i);
            break;
        }
    }
    fprintf(stdout, "%s", dat);
    for (int i = 0; i < a->size; i++) {
        int flag, out;
        int c = 0;
        switch (a->src[i]) {
        case '>':
            fprintf(stdout, "%s\n", "    addi   $t0, 1");
            break;
        case '<':
            fprintf(stdout, "%s\n", "    addi   $t0, -1");
            break;
        case '+':
            fprintf(stdout, "%s\n", "    lb     $t1, ($t0)\n    addi   $t1, 1\n    sb     $t1, ($t0)");
            break;
        case '-':
            fprintf(stdout, "%s\n", "    lb     $t1, ($t0)\n    addi   $t1, -1\n    sb     $t1, ($t0)");
            break;
        case '.':
            fprintf(stdout, "%s\n", "    li     $v0, 11\n    lb     $t1, ($t0)\n    move   $a0, $t1\n    syscall");
            break;
        case ',':
            break;
        case '[':
            c = 1;
            get_match_c(bm, i, &flag, &out);
            if (!flag) {
                break;
            }
            fprintf(stdout, "lab%d:\n    lb     $t1, ($t0)\n    beq    $t1, $zero, lab%d\n", i, out);
            break;
        case ']':
            c = 1;
            get_match_o(bm, i, &flag, &out);
            if (!flag) {
                break;
            }
            fprintf(stdout, "    lb     $t1, ($t0)\n    bne    $t1, $zero, lab%d\nlab%d:\n", out, i);
            break;
        }
        if (c && !flag) {
            perror("failure");
            break;
        }
    }
    fprintf(stdout, "%s", end);
    free_Src(a);
}
