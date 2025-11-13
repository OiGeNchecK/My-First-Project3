package lesson_21_test;

import lesson_20_Automobil4ik.Car;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

class TestCar {

    @Test

    void shouldcanDrive() {

        Car kor4ik = new Car(15, 8, 2025);


        boolean result = kor4ik.canDrive();


        Assertions.assertTrue(result);
    }
    @Test
    void shouldNotDriveWhenTankIsEmpty() {

        Car kor4ik = new Car(0, 7, 2025);


        boolean result = kor4ik.canDrive();


        Assertions.assertFalse(result);
    }

    @Test
    void shouldCalculateRangeCorrectly() {

        Car kor4ik = new Car(50, 10, 2025);


        int range = (int) kor4ik.getRange();


        Assertions.assertEquals(500, range);
    }

}