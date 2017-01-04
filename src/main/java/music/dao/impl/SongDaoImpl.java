package music.dao.impl;

import music.business.Song;
import music.dao.SongDao;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class SongDaoImpl implements SongDao {

    private final String SELECT_ALL = "SELECT * FROM Song WHERE ProductId = ?";

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Song> getAllSongs(Long productId) {
        List<Song> songs = jdbcTemplate.query(SELECT_ALL, new BeanPropertyRowMapper(Song.class));
        return songs;
    }
}
