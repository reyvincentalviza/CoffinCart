import java.util.ArrayList;

public class Cart {
    private static ArrayList<Product> items = new ArrayList<>();

    public static void add(Product p) {
        items.add(p);
    }

    public static ArrayList<Product> getItems() {
        return items;
    }

    public static double getSubtotal() {
        double total = 0;
        for (Product p : items) {
            total += p.getPrice();
        }
        return total;
    }

    public static void clear() {
        items.clear();
    }
}

