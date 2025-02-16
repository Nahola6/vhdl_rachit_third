#include <stdio.h>

void decimalToBinary(int n) {
    for (int i = 31; i >= 0; i--) {
        printf("%d", (n >> i) & 1);
    }
}

int main() {
    int a, b;

    
    printf("Enter the first decimal number: ");
    scanf("%d", &a);
    printf("Enter the second decimal number: ");
    scanf("%d", &b);

    
    int result = a ^ b;

    
    printf("\nFirst number in binary: ");
    decimalToBinary(a);
    printf("\nSecond number in binary: ");
    decimalToBinary(b);
    printf("\nBitwise XOR result: ");
    decimalToBinary(result);
    printf("\nDecimal result: %d\n", result);

    return 0;
}
