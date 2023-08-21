#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>

char productions[20][20];
int nps;

void addToResult(char* arr,char val)
{
    int k;
    for(k=0;arr[k]!='\0';k++){
        if(arr[k]==val) return;
    }
    arr[k]=val;
    arr[k+1]='\0';
}

void FIRST(char* result,char c)
{
    char subresult[20];
    int fesp=0;
    result[0]='\0';
    subresult[0]='\0';

    if(islower(c)){
        addToResult(result,c);
        return;
    }
    for(int i=0;i<nps;i++){
        if(productions[i][0]==c){
            int j=2;
            if(productions[i][j]=='$'){
                addToResult(result,'$');
            }
            else{
                while(productions[i][j]!='\0'){
                    fesp=0;
                    FIRST(subresult,productions[i][j]);
                    for(int k=0;k<subresult[k]!='\0';k++){
                        addToResult(result,subresult[k]);
                    }
                    for(int k=0;k<subresult[k]!='\0';k++){
                        if(subresult[k]=='$'){
                            fesp=1;
                            break;
                        }
                    }
                    if(fesp==1) j++;
                    else break;
                }
            }
        }
    }
    return;
}

int main()
{
    char result[20];
    int choice=1;
    char c;
    printf("Enter no of productions= ");
    scanf("%d",&nps);
    printf("Enter the productions= \n");
    for(int i=0;i<nps;i++){
        scanf("%s",&productions[i]);
    }
    while(choice==1){
        printf("The first= ");
        scanf(" %c",&c);
        FIRST(result,c);
        printf("{");
        for(int i=0;result[i]!='\0';i++){
            printf("%c ",result[i]);
        }
        printf("}");
        printf("\npress 1 to continue: ");
        scanf("%d",&choice);
    } 
}