#include <stdio.h>
#include <stdint.h>

extern void pBin8b(uint8_t num);
extern void pBin16b(uint16_t num);
extern void Myputchar();
int main(){
    uint8_t num=235;
    uint16_t num1=235;

    pBin8b(num);
    Myputchar();
    pBin16b(num1);
    return 0;
}