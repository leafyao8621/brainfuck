#include "parser.h"

int main(void) {
    FILE *fin = fopen("in/test.bf", "r");
    FILE *fout = fopen("dump", "w");
    parser_load_from_file(fin);
    fclose(fin);
    parser_log_code(fout);
    fclose(fout);
    parser_finalize();
}
