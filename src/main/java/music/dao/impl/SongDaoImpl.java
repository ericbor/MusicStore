package music.dao.impl;

import music.business.Product;
import music.business.Song;
import music.dao.DBUtil;
import music.dao.SongDao;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SongDaoImpl implements SongDao {

    private final String SELECT_ALL = "SELECT * FROM Song WHERE ProductId = ?";

    private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public List<Song> getAllSongs(Long productId){
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
            ps.setLong(1, productId);
            rs = ps.executeQuery();
            List<Song> songs = new ArrayList<Song>();
            while (rs.next()) {
                Song song = new Song();
                song.setSongTitle(rs.getString("SongTitle"));
                song.setPlayble(rs.getBoolean("Playble"));
                songs.add(song);
            }
            return songs;
        } catch (SQLException e) {
            System.err.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            try {
                connection.close();
            } catch (SQLException sqle) {
                System.err.println(sqle);
            }
        }
    }
}
