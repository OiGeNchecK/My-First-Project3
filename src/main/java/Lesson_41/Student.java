package Lesson_41;

import lombok.Data;

@Data
@RequiredArgsConstructor
public class Student {
    private String name;
    private int age;
    private double grade;
}