#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define TRUE 1
#define FALSE 0
struct Node{
    char data[255];
    struct Node * next;
};
struct Node * head = NULL;

void insert_dictionary_order(char* word);
void printlist();
void process_user_input();

int main(void){

    process_user_input();
    printlist();
    return 0;
}

void insert_dictionary_order(char* word) {
    struct Node *temp = (struct Node*)malloc(sizeof(struct Node));
    if (temp==NULL){
        printf("No Memory available! Program Closing!");
        exit(1);
    }
    strncpy(temp->data, word, 255);

    if (head==NULL){ //empty list - need to add head!
        temp->next = NULL;
        head = temp;
    }
    else if (strcasecmp(temp->data, head->data)<0){ //less than head so need to replace head
        temp->next = head;
        head = temp;
    }
    else { //iterate through until find correct spot or end of linked list
        struct Node * iter = head;
        struct Node * next = head->next;
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

void printlist(){
    struct Node * iter = head;
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
        printf("Enter strings ('.' to stop) : ");
        char line[255];
        fgets(line, 255, stdin);
        if (strcmp(line, ".\n")==0){
            break;
        }
        
        char newString[20][20];
        int j=0; int ctr=0;
        for(int i=0;i<=(strlen(line));i++)
        {
            // if space or NULL found, assign NULL into newString[ctr]
            if(line[i]==' '||line[i]=='\0'||line[i]=='\t'||line[i]=='\n')
            {
                newString[ctr][j]='\0';
                ctr++;  //for next word
                j=0;    //for next word, init index to 0
            }
            else
            {
                newString[ctr][j]=line[i];
                j++;
            }
        }
        for(int i=0;i < ctr-1;i++) {
            if (newString[i]) {
                insert_dictionary_order(newString[i]);
            }
        }
        
//         int ptr = 0;
//         int wptr = 0;
//         char word[256];

//         while (line[ptr] != '\0') {
//             char c[1];
//             sscanf(&line[ptr], "%c", c);
//             if ((c[0] == ' ') || (c[0] == '\t') || (c[0] == '\n')) {
//                 if (strlen(word) > 0) {
//                     insert_dictionary_order(word);
//                     wptr = 0;
//                     memset(word, '\0', 256);
//                 }
//             } else {
//                 char *p = word + wptr;
//                 strcpy(p, c);
//                 wptr++;
//             }
//             ptr++;
//         }
    }
}
