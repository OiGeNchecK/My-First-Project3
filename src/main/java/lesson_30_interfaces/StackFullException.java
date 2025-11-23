package lesson_30_interfaces;

public class StackFullException extends RuntimeException {
    public StackFullException(String message) {
        super(message);
    }
}