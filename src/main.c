#include <stdio.h>


int main()
{
    int a = 0;
    for( int i = 0; i < 10; i++ )
    {
        printf("Hello, World!\n");
    }

    if ( a == 0) {
        printf("Hello, World!\n");
    }
    else if ( a == 1) {
        printf("Hello, World!\n");
    }
    else
        printf("Hello, World!\n");

    do {
        printf("Hello, World!\n");
    } while ( a != 0 );
    return 0;
}
