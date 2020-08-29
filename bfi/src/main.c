#include "parser.h"
#include "interpreter.h"

int main(int argc, const char **argv) {
    if (argc < 2) {
        puts("Please pass in source file");
        return 1;
    }
    FILE *fin = fopen(argv[1], "r");
    if (!fin) {
        printf("Cannot read %s\n", argv[1]);
        return 2;
    }
    int ret = parser_load_from_file(fin);
    fclose(fin);
    if (ret) {
        parser_finalize();
        switch (ret) {
        case 1:
            puts("Memory allocation error while parsing");
            return 3;
        case 2:
            puts("Unbalanced brackets");
            return 4;
        }
    }
    ret = interpreter_interpret();
    parser_finalize();
    if (ret) {
        printf("Unknown Error");
        return 5;
    }
    return 0;
}
