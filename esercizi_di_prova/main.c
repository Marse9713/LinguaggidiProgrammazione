#include <stdio.h>

int main(){

    int i = 1, j = 2, v[3] = {3, 4, 5};

    int foo(int i, int z){

        while((v[i--] += v[i]) < 20){

            z = v[i]++ + (v[j++]);
            printf(v[i], z);

        }
        return i;

    }

    printf(foo(j, v[j--]));
    printf(v[i], j);

}