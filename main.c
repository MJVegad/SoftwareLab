#include<stdio.h>
#include "hdr.h"

int main(int argc, char* argv[])
{

 int a,b,res;
 char c;

 printf("%d", argc);

/*  int i;
  for(i=0;i<argc;i++)
   {
    printf("arg %d : %s\n",i,argv[i]);
    }
*/
  if(argc==4)
 {
    a=atoi(argv[1]);
    b=atoi(argv[2]);
    c=argv[3][0];
  }
 else
 {
    printf("Enter 1st no. : \n");
    scanf("%d",&a);

    printf("Enter 2nd no. : \n");
    scanf("%d",&b);

    printf("Enter operation: + | - | * | /");
    scanf(" %c",&c);
 }

    res=compute(a,b,c);
    
    show(res);

    return 0;

}
