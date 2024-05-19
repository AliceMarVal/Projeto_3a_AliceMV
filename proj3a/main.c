#include <stdio.h>

void troca(int vetor[], int i, int j){

	int aux = vetor[i];
	vetor[i] = vetor[j];
	vetor[j] = aux;
}

void permuta(int vetor[], int inf, int sup,int num){

	if(inf == sup){
		for(int i = 0; i <= sup; i++)
			printf("%d ", vetor[i]);
		printf("\n");
	}
	else{
		for(int i = inf; i <= sup; i++){
			troca(vetor, inf, i);
			permuta(vetor, inf + 1, sup, num++);
			troca(vetor, inf, i); 
		}
	}
}

int main(void)
{
	int v[100];

    for(int i = 1; i <= 100;i++){
        v[i-1] = i;
    }

	permuta(v, 0, 9, 1);

	return 0;
}