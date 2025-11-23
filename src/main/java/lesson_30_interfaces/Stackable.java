package lesson_30_interfaces;

import java.util.Optional;

public interface Stackable {
    boolean isEmpty();
    boolean isFull();
    void push(int element) throws StackFullException;
    int pop();
    int peek();
    Optional<Integer> popOptional();
}