#include <stdio.h>
#include <stdint.h>

extern void pBin8b(uint8_t num);
extern void pBin16b(uint16_t num);

int main(){
    uint8_t num=235;

    //pBin8b(num);
    printf("\n");
    pBin16b(num);
    return 0;
}