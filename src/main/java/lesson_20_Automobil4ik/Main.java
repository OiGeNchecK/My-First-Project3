package lesson_20_Automobil4ik;

public class Main {
    static void main() {

        Car kor4ik = new Car(15, 8, 2025);

        System.out.println(kor4ik);
        System.out.println("Може їхати: " + kor4ik.canDrive());
        System.out.println("Допущена: " + kor4ik.isAllowedToDrive());
        System.out.println("Дистанція: " + kor4ik.getRange() + " км");
    }
}