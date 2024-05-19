public class main {
    public static void main(String[] args){
        int vetor[] = new int[100];
        int n;
        func f = new func();

        for (int i = 1; i < vetor.length; i++) {
            vetor[i-1] = i;
        }

        n = f.permuta(vetor, 0, 8);
        System.out.println(n);
   }
}
