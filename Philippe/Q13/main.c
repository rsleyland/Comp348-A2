#include <stdio.h>
#include <string.h>
#include <stdlib.h>

struct Node
{
  char s[255];
  struct Node *next;
};

typedef struct Node Node;

Node *head = NULL;
Node *current = NULL;

void insert_dictionay_order(char *word)
{
    Node *newNode = malloc(sizeof(Node));
    
    if (newNode == NULL) {
        printf("No more memory");
        exit(1);
    }
    
    strcpy(newNode->s, word);
    
    if (head == NULL) {
        head = newNode;
    } else if (strcasecmp(head->s, newNode->s) > 0) {
        newNode->next = head;
        head = newNode;
    } else {
        current = head;
        
        while (current->next != NULL && strcasecmp(current->next->s, newNode->s) < 0) {
            current = current->next;
        }
        
        newNode->next = current->next;
        current->next = newNode;
    }
}

void print_list()
{
    Node *ptr = head;
    while (ptr != NULL)
    {
        printf("%s -> ", ptr->s);
        ptr = ptr->next;
    }
    printf("NULL");
}

int main(int argc, const char * argv[]) {
    while (1) {
        char str[1000];
        printf("Enter strings (enter . to exit): ");
        gets(str);

        if (strcmp(str, ".") == 0)
            break;

        int ptr = 0;
        int wptr = 0;
        char word[256];

        while (str[ptr] != '\0') {
            char c[1];
            sscanf(&str[ptr], "%c", c);
            if ((c[0] == ' ') || (c[0] == '\t') || (c[0] == '\n')) {
                if (strlen(word) > 0) {
                    insert_dictionay_order(word);
                    wptr = 0;
                    memset(word, '\0', 256);
                }
            } else {
                char *p = word + wptr;
                strcpy(p, c);
                wptr++;
            }
            ptr++;
        }
    }
    
    print_list();
    
    return 0;
}
