#include <stdlib.h>
#include "bm.h"

typedef struct BNode {
    int opos;
    int cpos;
    struct BNode* next;
} BNode;

typedef struct WNode {
    int pos;
    struct WNode* prev;
} WNode;

BM* malloc_BM(void) {
    BM* opt = malloc(sizeof(BM));
    opt->head = NULL;
    opt->tail = NULL;
    return opt;
}

WS* malloc_WS(void) {
    WS* opt = malloc(sizeof(WS));
    opt->tail = NULL;
    return opt;
}

int push_BM(BM* bm, int a, int b) {
    if (!bm) {
        return 1;
    }
    BNode* inp = malloc(sizeof(BNode));
    if (!inp) {
        return 2;
    }
    inp->opos = a;
    inp->cpos = b;
    inp->next = NULL;
    if (!bm->head) {
        bm->head = inp;
    } else {
        bm->tail->next = inp;
    }
    bm->tail = inp;
    return 0;
}

int push_WS(WS* ws, int a) {
    if (!ws) {
        return 1;
    }
    WNode* inp = malloc(sizeof(WNode));
    if (!inp) {
        return 2;
    }
    inp->pos = a;
    inp->prev = ws->tail;
    ws->tail = inp;
    return 0;
}

int pop_WS(WS* ws, int* out) {
    if (!ws) {
        return 1;
    }
    *out = ws->tail->pos;
    WNode* temp = ws->tail->prev;
    free(ws->tail);
    ws->tail = temp;
    return 0;
}

int get_match_c(BM* bm, int opos, int* flag, int* out) {
    if (!bm) {
        return 1;
    }
    for (BNode* bn = bm->head; bn; bn = bn->next) {
        if (bn->opos == opos) {
            *flag = 1;
            *out = bn->cpos;
            return 0;
        }
    }
    *flag = 0;
    *out = -1;
    return 0;
}

int get_match_o(BM* bm, int cpos, int* flag, int* out) {
    if (!bm) {
        return 1;
    }
    for (BNode* bn = bm->head; bn; bn = bn->next) {
        if (bn->cpos == cpos) {
            *flag = 1;
            *out = bn->opos;
            return 0;
        }
    }
    *flag = 0;
    *out = -1;
    return 0;
}