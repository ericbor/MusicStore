package music.dao;

import music.business.Song;

import java.util.List;

public interface SongDao {
    public List<Song> getAllSongs(Long productId);
}
