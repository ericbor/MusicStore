package music.dao.impl;

import music.business.Product;
import music.business.Song;
import music.dao.ProductDao;
import music.dao.SongDao;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImpl implements ProductDao {

    private JdbcTemplate jdbcTemplate;
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private final String SELECT_BY_CODE = "SELECT Product.*, Song.SongTitle, Song.Playble FROM Product JOIN Song ON Product.ProductId=Song.ProductID WHERE Product.ProductCode  = ?";
    private final String SELECT_BY_ID = "SELECT Product.*, Song.SongTitle, Song.Playble FROM Product JOIN Song ON Product.ProductId=Song.ProductID WHERE Product.ProductId = ?";
    private final String SELECT_ALL = "SELECT * FROM Product JOIN Song ON Product.ProductId=Song.ProductID";

/*    //This method returns null if a product isn't found.
    public Product selectProduct(String productCode) {
        Product product = (Product) jdbcTemplate.queryForObject(SELECT_BY_CODE, new Object[]{productCode}, new BeanPropertyRowMapper(Product.class));
        return product;
    }

    //BeanPropertyRowMapper - no need for cutsom RowMapper
    public Product selectProduct(long productID) {
        Product product = (Product) jdbcTemplate.queryForObject(SELECT_BY_ID, new Object[]{productID}, new BeanPropertyRowMapper(Product.class));
        return product;
    }

    //This method returns null if a product isn't found.
    public List<Product> selectProducts() {
        List<Product> products = jdbcTemplate.query(SELECT_ALL, new BeanPropertyRowMapper(Product.class));
        return products;
    }*/

    public final static RowMapper<Product> productMapper = BeanPropertyRowMapper.newInstance(Product.class);
    public final static RowMapper<Song> songMapper = BeanPropertyRowMapper.newInstance(Song.class);

    public Product selectProduct(long productID) {
        return jdbcTemplate.query(SELECT_BY_ID,
                new ResultSetExtractor<Product>() {
                    public Product extractData(ResultSet rs) throws SQLException, DataAccessException {
                        Product product = null;
                        int row = 0;
                        while (rs.next()) {
                            if (product == null) {
                                product = productMapper.mapRow(rs, row);
                            }
                            product.addSong(songMapper.mapRow(rs, row));
                            row++;
                        }
                        return product;
                    }

                }, productID);
    }

    public Product selectProduct(String productCode) {
        return jdbcTemplate.query(SELECT_BY_CODE,
                new ResultSetExtractor<Product>() {
                    public Product extractData(ResultSet rs) throws SQLException, DataAccessException {
                        Product product = null;
                        int row = 0;
                        while (rs.next()) {
                            if (product == null) {
                                product = productMapper.mapRow(rs, row);
                            }
                            product.addSong(songMapper.mapRow(rs, row));
                            row++;
                        }
                        return product;
                    }

                }, productCode);
    }

    public List<Product> selectProducts() {
        return jdbcTemplate.query(SELECT_ALL,
                new ResultSetExtractor<List<Product>>() {
                    public List<Product> extractData(ResultSet rs) throws SQLException, DataAccessException {
                        List<Product> products = new ArrayList<Product>();
                        Long productId = null;
                        Product product = null;
                        int orderIdx = 0;
                        int itemIdx = 0;
                        while (rs.next()) {
                            // first row or when order changes
                            if (product == null || !productId.equals(rs.getLong("productId"))) {
                                productId = rs.getLong("productId");
                                product = productMapper.mapRow(rs, orderIdx++);
                                itemIdx = 0;
                                products.add(product);
                            }
                            product.addSong(songMapper.mapRow(rs, itemIdx++));
                        }
                        return products;
                    }

                });
    }
}