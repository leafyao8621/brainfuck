typedef struct BM {
    struct BNode* head;
    struct BNode* tail;
} BM;

typedef struct WS {
    struct WNode* tail;
} WS;

BM* malloc_BM(void);
WS* malloc_WS(void);
int push_BM(BM* bm, int a, int b);
int push_WS(WS* ws, int a);
int pop_WS(WS* ws, int* out);
int get_match_c(BM* bm, int opos, int* flag, int* out);
int get_match_o(BM* bm, int cpos, int* flag, int* out);