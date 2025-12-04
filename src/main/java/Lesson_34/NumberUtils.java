package Lesson_34;

import java.util.ArrayList;
import java.util.List;

public class NumberUtils {

    public long getSum(List<Integer> numbers) {

        long sum = 0;

        for (Integer number : numbers) {
            sum += number;

        }
        return sum;
    }
    public List<Integer> multiplyOddNumber(List<Integer> numbers) {

        List<Integer> result = new ArrayList<>();

        for (Integer number : numbers) {

            if (number % 2 != 0) {
                int multiplied = number * 2;
                result.add(multiplied);
            }
        }

        return result;
    }
}
