package music.business;

import java.io.Serializable;

public class Song implements Serializable {

    private Long songId;
    private String songTitle;
    private boolean playble;

    public boolean isPlayble() {
        return playble;
    }

    public void setPlayble(boolean playble) {
        this.playble = playble;
    }

    public Long getSongId() {
        return songId;
    }

    public void setSongId(Long songId) {
        this.songId = songId;
    }

    public String getSongTitle() {
        return songTitle;
    }

    public void setSongTitle(String songTitle) {
        this.songTitle = songTitle;
    }
}
