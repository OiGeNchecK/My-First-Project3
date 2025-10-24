package Lesson_12_Loops;

public class Main {

static void main() {

    int[] arr = {-3, 7, 5, -80, 66, 8, 9, 10};

    for (int i = 0; i < arr.length; i++) {

        if (arr[i] % 2 == 0) {
            System.out.print(arr[i] + " ");
        }
    }
}
}