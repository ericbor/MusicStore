package music.data;

import music.business.Customer;

import java.sql.*;

public class CustomerDB {

    public static void insert(Customer customer) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query
                = "INSERT INTO Customer (FirstName, LastName, Email, CompanyName, "
                + "Address1, Address2, City, State, Zip, Country, "
                + "CreditCardType, CreditCardNumber, CreditCardExpirationDate) "
                + "VALUES (?, ?, ?, ?, "
                + "?, ?, ?, ?, ?, ?, "
                + "?, ?, ?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, customer.getFirstName());
            ps.setString(2, customer.getLastName());
            ps.setString(3, customer.getEmail());
            ps.setString(4, customer.getCompanyName());
            ps.setString(5, customer.getAddress1());
            ps.setString(6, customer.getAddress2());
            ps.setString(7, customer.getCity());
            ps.setString(8, customer.getState());
            ps.setString(9, customer.getZip());
            ps.setString(10, customer.getCountry());
            ps.setString(11, customer.getCreditCardType());
            ps.setString(12, customer.getCreditCardNumber());
            ps.setString(13, customer.getCreditCardExpirationDate());

            ps.executeUpdate();

            //Get the customer ID from the last INSERT statement.
            String identityQuery = "SELECT @@IDENTITY AS IDENTITY";
            Statement identityStatement = connection.createStatement();
            ResultSet identityResultSet = identityStatement.executeQuery(identityQuery);
            identityResultSet.next();
            long customerID = identityResultSet.getLong("IDENTITY");
            identityResultSet.close();
            identityStatement.close();

            // Set the customer ID in the Customer object
            customer.setId(customerID);
        } catch (SQLException e) {
            System.err.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static void update(Customer customer) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "UPDATE Customer SET "
                + "FirstName = ?, "
                + "LastName = ?, "
                + "CompanyName = ?, "
                + "Address1 = ?, "
                + "Address2 = ?, "
                + "City = ?, "
                + "State = ?, "
                + "Zip = ?, "
                + "Country = ?, "
                + "CreditCardType = ?, "
                + "CreditCardNumber = ?, "
                + "CreditCardExpirationDate = ? "
                + "WHERE Email = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, customer.getFirstName());
            ps.setString(2, customer.getLastName());
            ps.setString(3, customer.getCompanyName());
            ps.setString(4, customer.getAddress1());
            ps.setString(5, customer.getAddress2());
            ps.setString(6, customer.getCity());
            ps.setString(7, customer.getState());
            ps.setString(8, customer.getZip());
            ps.setString(9, customer.getCountry());
            ps.setString(10, customer.getCreditCardType());
            ps.setString(11, customer.getCreditCardNumber());
            ps.setString(12, customer.getCreditCardExpirationDate());
            ps.setString(13, customer.getEmail());

            ps.executeUpdate();
        } catch (SQLException e) {
            System.err.println(e);
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static Customer selectCustomer(String email) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT * FROM Customer "
                + "WHERE Email = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            Customer customer = null;
            if (rs.next()) {
                customer = new Customer();
                customer.setId(rs.getLong("CustomerID"));
                customer.setFirstName(rs.getString("FirstName"));
                customer.setLastName(rs.getString("LastName"));
                customer.setEmail(rs.getString("Email"));
                customer.setCompanyName(rs.getString("CompanyName"));
                customer.setAddress1(rs.getString("Address1"));
                customer.setAddress2(rs.getString("Address2"));
                customer.setCity(rs.getString("City"));
                customer.setState(rs.getString("State"));
                customer.setZip(rs.getString("Zip"));
                customer.setCountry(rs.getString("Country"));
                customer.setCreditCardType(rs.getString("CreditCardType"));
                customer.setCreditCardNumber(rs.getString("CreditCardNumber"));
                customer.setCreditCardExpirationDate(rs.getString("CreditCardExpirationDate"));
            }
            return customer;
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static boolean emailExists(String email) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT Email FROM Customer "
                + "WHERE Email = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            System.err.println(e);
            return false;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
}