public class Consumer {
    Producer producer = new Producer();

    public void consume() {
        System.out.println("Producer says: " + producer.produce());
    }
}
