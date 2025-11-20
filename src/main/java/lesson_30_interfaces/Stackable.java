package lesson_30_interfaces;

public interface Stackable {
    boolean isEmpty();
    boolean isFull();
    void push(int element);
    int pop();
    int peek();
}