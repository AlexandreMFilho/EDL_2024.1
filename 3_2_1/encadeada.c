#include <stdio.h>
#include <stdlib.h>


typedef struct no{
    int val;
    struct no* prox;
}no;

void printa(no*);

no *lista=NULL;

int main(){

    no *novo = NULL;
    novo = (no*) malloc(sizeof(no));
    novo->val = 1;
    novo->prox = NULL;
    lista = novo;
    
    novo = NULL; 
    novo = (no*) malloc(sizeof(no));
    novo->val = 2;
    novo->prox = NULL;
    lista->prox = novo;

    novo = NULL; 
    novo = (no*) malloc(sizeof(no));
    novo->val = 3;
    novo->prox = NULL;
    lista->prox->prox = novo;

    novo = NULL; 
    novo = (no*) malloc(sizeof(no));
    novo->val = 4;
    novo->prox = NULL;
    lista->prox->prox->prox = novo;

    novo = NULL;

    printa(lista); //Apenas para visualização da lista

    free(lista->prox->prox->prox);
    lista->prox->prox->prox = NULL;
    free(lista->prox->prox);
    lista->prox->prox = NULL;
    free(lista->prox);
    lista->prox = NULL;
    free(lista);
    lista = NULL;

}

void printa(no *list){
    printf("%d\n",list->val);
    if(list->prox != NULL){
        printa(list->prox);
    }
}

//gcc encadeada.c