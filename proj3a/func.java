public class func {
    public int num = 0;

    public void troca(int vetor[], int i, int j){

        int aux = vetor[i];
        vetor[i] = vetor[j];
        vetor[j] = aux;
    }
    
    public int permuta(int vetor[], int inf, int sup){
        num++;
    
        if(inf == sup){
            for(int i = 0; i <= sup; i++)
                System.out.print(vetor[i]+" ");
            System.out.print("\n");
        }
        else{
            for(int i = inf; i <= sup; i++){
                troca(vetor, inf, i);
                permuta(vetor, inf + 1, sup);
                troca(vetor, inf, i); 
            }
        }
        return(num);
    }
}
