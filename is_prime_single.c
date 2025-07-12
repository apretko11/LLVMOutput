#include <math.h>
#include <stdbool.h>
#include <stdio.h>

int main() {
    int n = 29;
    int cnt = 0;
    if (n <= 1 || ((n > 2) && (n%2 == 0)))
        printf("%d is NOT prime", n);
    else {
        if (n == 2) {
            printf("%d is prime", n);
            return 0;
        } else {
            for (int i = 3; i * i <= n; i+=2) {
                if (n % i == 0)
                    cnt++;
            }
            if (cnt > 0)
                printf("%d is NOT prime", n);
            else
                printf("%d is prime", n);
        }
    }
    return 0;
}
