#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define TRUE 1
#define FALSE 0
struct Node{
    char data[256];
    struct Node * next;
};
struct Node * dictionary = NULL;

void insert_dictionary_order(char* word);
void print_list();
void process_user_input();

int main(void){

    process_user_input();
    print_list();
    return 0;
}

void insert_dictionary_order(char* word) {
    struct Node *temp = (struct Node*)malloc(sizeof(struct Node));
    if (temp==NULL){
        printf("No Memory available! Program Closing!");
        exit(1);
    }
    strncpy(temp->data, word, 256);

    if (dictionary==NULL){ //empty list - need to add head!
        temp->next = NULL;
        dictionary = temp;
    }
    else if (strcasecmp(temp->data, dictionary->data)<0){ //less than head so need to replace head
        temp->next = dictionary;
        dictionary = temp;
    }
    else { //iterate through until find correct spot or end of linked list
        struct Node * iter = dictionary;
        struct Node * next = dictionary->next;
        int finished = FALSE;

        while(!finished){
           if (next == NULL){
               temp->next = NULL;
               iter->next = temp;
               finished = TRUE;
           }
           else if(strcasecmp(temp->data, next->data)<=0){
               temp->next = next;
               iter->next = temp;
               finished = TRUE;
           }
           else if(strcasecmp(temp->data, next->data)>0){
               iter = iter->next;
               next = iter->next;
            }
        }
    }
}

void print_list(){
    struct Node * iter = dictionary;
    int printcount =0;
    while(iter){
        printf("%s -> ", iter->data);
        if (printcount==10) {
            printf("\n");
            printcount =0;
        }
        printcount++;
        iter = iter->next;
    }
    printf("Null");
}

void process_user_input(){
    while (TRUE){
        int count = 0;
        printf("Enter strings ('.' to stop) : ");
        char line[256];
        fgets(line, 256, stdin);
        if (strcmp(line, ".\n")==0){
            break;
        }
        char * lineptr = line;
        while(*lineptr!='\0'){
            if(*lineptr==' '||*lineptr=='\t'||*lineptr=='\n') {
                lineptr++;
                continue;
            }
            char newString[256];
            sscanf(lineptr, "%s", newString);
            int length = strlen(newString);
            lineptr += length+1;
            insert_dictionary_order(newString);
        }
    }
}
