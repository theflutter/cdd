#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

void First(char);
int count = 0, n = 0;
char prod[10][10], first[10];

int main()
{
    int i, j, choice;
    char c, ch;
    printf("how many productions:");
    scanf("%d", &count);
    printf("Enter %d productions:\n", count);
    for (i = 0; i < count; i++)
    {
        scanf("%s%c", prod[i], &ch);
    }
    do
    {
        n = 0;
        printf("Enter element to find first: ");
        scanf("%c", &c);
        First(c);
        printf("\n first(%c)={ ", c);
        for (i = 0; i < n; i++)
        {
            printf("%c", first[i]);
        }
        printf("}\n");
        printf("press 1 to continue: ");
        scanf("%d%c", &choice, &ch);
    } while (choice == 1);
    return 0;
}
void First(char c)
{
    int j;
    if (!(isupper(c)))
        first[n++] = c;
    for (j = 0; j < count; j++)
    {
        if (prod[j][0] == c)
        {
            if (prod[j][2] == '$')
                first[n++] = '$';
            else if (islower(prod[j][2]))
                first[n++] = prod[j][2];
            else
                First(prod[j][2]);
        }
    }
    // for (j = 0; j < n; j++){
    //     printf("%s", first[j]);
    // }
}
