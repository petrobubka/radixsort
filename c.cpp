#include <iostream>
using namespace std;

void radixSort(int *array, int n) {
    int m = array[0];
    for (int i = 1; i < n; i++) {
        if (array[i] > m)
            m = array[i];
    }
    int *temp = new int[n];
    int *count = new int[10];
    int exp = 1;
    while (m / exp > 0) {
        for (int i = 0; i < 10; i++)
            count[i] = 0;
        for (int i = 0; i < n; i++)
            count[(array[i] / exp) % 10]++;
        for (int i = 1; i < 10; i++)
            count[i] += count[i - 1];
        for (int i = n - 1; i >= 0; i--) {
            temp[count[(array[i] / exp) % 10] - 1] = array[i];
            count[(array[i] / exp) % 10]--;
        }
        for (int i = 0; i < n; i++)
            array[i] = temp[i];
        exp *= 10;
    }
    delete[] temp;
    delete[] count;
}

int main() {
    int count = 40000;
    int array[count];
    int n = sizeof(array) / sizeof(array[0]);
    for (int j = 0; j < 2000; j++) {
        for (int i = 0; i < n; i++)
            array[i] = rand() % count;
        radixSort(array, n);
    }
    return 0;
}
