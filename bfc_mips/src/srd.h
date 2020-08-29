typedef struct Src {
    int size;
    char* src;
} Src;

Src* init_from_file(char* fn);
int free_Src(Src* src);