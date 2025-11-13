package FiboNa4e;

class Main {

    static int fibonacci(int n) {

        if (n == 0) return 0;
        if (n == 1 || n == 2) return 1;


        return fibonacci(n - 1) + fibonacci(n - 2);
    }

    public static void main(String[] args) {
        int n = 10;
        System.out.println("Число Фібоначчі №" + n + " = " + fibonacci(n));
    }
}