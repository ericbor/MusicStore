package music.dao;

import music.business.Product;

import java.util.List;

public interface ProductDao {

    public Product selectProduct(String productCode);

    public Product selectProduct(long productID);

    public List<Product> selectProducts();
}
