package music.dao.impl;

import music.business.Product;
import music.dao.DBUtil;
import music.dao.ProductDao;
import music.dao.SongDao;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImpl implements ProductDao {

    private DataSource dataSource;
    private SongDao songDao;

    public void setSongDao(SongDao songDao) {
        this.songDao = songDao;
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    private final String SELECT_BY_CODE = "SELECT * FROM Product WHERE ProductCode = ?";
    private final String SELECT_BY_ID = "SELECT * FROM Product WHERE ProductID = ?";
    private final String SELECT_ALL = "SELECT * FROM Product";

    //This method returns null if a product isn't found.
    public Product selectProduct(String productCode) {
        //ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = connection.prepareStatement(SELECT_BY_CODE);
            ps.setString(1, productCode);
            rs = ps.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                p.setId(rs.getLong("ProductID"));
                p.setCode(rs.getString("ProductCode"));
                p.setTitle(rs.getString("ProductTitle"));
                p.setDescription(rs.getString("ProductDescription"));
                p.setPrice(rs.getDouble("ProductPrice"));
                p.setSongList(songDao.getAllSongs(p.getId()));
                return p;
            } else {
                return null;
            }
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);

            //pool.freeConnection(connection);
            try {
                connection.close();
            } catch (SQLException sqle) {
                System.err.println(sqle);
            }

        }
    }

    //This method returns null if a product isn't found.
    public Product selectProduct(long productID) {
        //ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = connection.prepareStatement(SELECT_BY_ID);
            ps.setLong(1, productID);
            rs = ps.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                p.setId(rs.getLong("ProductID"));
                p.setCode(rs.getString("ProductCode"));
                p.setTitle(rs.getString("ProductTitle"));
                p.setDescription(rs.getString("ProductDescription"));
                p.setPrice(rs.getDouble("ProductPrice"));
                p.setSongList(songDao.getAllSongs(productID));
                return p;
            } else {
                return null;
            }
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            //pool.freeConnection(connection);
            try {
                connection.close();
            } catch (SQLException sqle) {
                System.err.println(sqle);
            }

        }
    }

    //This method returns null if a product isn't found.
    public List<Product> selectProducts() {
        //ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = connection.prepareStatement(SELECT_ALL);
            rs = ps.executeQuery();
            ArrayList<Product> products = new ArrayList<Product>();
            while (rs.next()) {
                Product p = new Product();
                p.setCode(rs.getString("ProductCode"));
                p.setTitle(rs.getString("ProductTitle"));
                p.setDescription(rs.getString("ProductDescription"));
                p.setPrice(rs.getDouble("ProductPrice"));
                p.setSongList(songDao.getAllSongs(p.getId()));
                products.add(p);
            }
            return products;
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            //pool.freeConnection(connection);
            try {
                connection.close();
            } catch (SQLException sqle) {
                System.err.println(sqle);
            }
        }
    }
}