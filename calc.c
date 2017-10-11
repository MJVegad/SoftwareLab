#include "hdr.h"


int compute(int a, int b, char c)
{
 int d;
  switch(c)
{
 case '+' : d=a+b;
            break;
 case '-' : d=a-b;
            break;
 case '*' : d=a*b;
            break;
 case '/' : d=a/b;
            break;

}
  return d;  
 
}
