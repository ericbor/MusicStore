package music.business;

import java.text.NumberFormat;
import java.io.Serializable;
import java.util.Locale;

public class LineItem implements Serializable {

    private Long lineItemId;
    private Product product;
    private int quantity = 1;

    public LineItem() {
    }

    public Long getLineItemId() {
        return lineItemId;
    }

    public void setLineItemId(Long lineItemId) {
        this.lineItemId = lineItemId;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Product getProduct() {
        return product;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public double getTotal() {

        double total = product.getPrice() * quantity;
        return total;
    }

    public String getTotalCurrencyFormat() {
        Locale usa = new Locale("en", "US");
        NumberFormat currency = NumberFormat.getCurrencyInstance(usa);
        return currency.format(this.getTotal());
    }
}