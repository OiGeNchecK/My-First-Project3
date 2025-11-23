package lesson_30_interfaces;

public class StackEmptyException extends RuntimeException {
    public StackEmptyException(String message) {
        super(message);
    }
}
