package org.iii.ee100.sample.game;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class GameDao {
	private static final String insertSTMT = "insert into game(name,publisher,platform,release_date) values (?, ?, ?, ?)";
	private static final String updateSTMT = "update game set name=?, publisher=?, platform=?, release_date=? where id=?";
	private static final String deleteSTMT = "delete from game where id=?";
	private static final String findAllSTMT = "select id,name,publisher,platform,release_date from game order by id";
	private static final String findByIdSTMT = "select id,name,publisher,platform,release_date from game where id=?";

	Connection conn = null;
	PreparedStatement pstmt = null;

	private Connection getConnection() throws SQLException {
		String connUrl = "jdbc:postgresql://localhost:5432/testdb";
		String user = "postgres";
		String password = "postgres";
		// conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
		HikariConfig config = new HikariConfig();
		config.setJdbcUrl(connUrl);
		config.setUsername(user);
		config.setPassword(password);
		config.addDataSourceProperty("cachePrepStmts", "true");
		config.addDataSourceProperty("prepStmtCacheSize", "250");
		config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");

		HikariDataSource ds = new HikariDataSource(config);
		return ds.getConnection();

	}

	public void insert(Game game) {
		ResultSet rs = null;
		try {
			PreparedStatement pstmt = getConnection().prepareStatement(insertSTMT, Statement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, game.getName());
			pstmt.setString(2, game.getPublisher());
			pstmt.setString(3, game.getPlatform());
			pstmt.setDate(4, game.getRelease_date());
			pstmt.executeUpdate();
			rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				game.setId(rs.getLong(1));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	public void update(Game game) {
		try {
			PreparedStatement pstmt = getConnection().prepareStatement(updateSTMT);
			pstmt.setString(1, game.getName());
			pstmt.setString(2, game.getPublisher());
			pstmt.setString(3, game.getPlatform());
			pstmt.setDate(4, game.getRelease_date());
			pstmt.setLong(5, game.getId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	public void delete(Long id) {
		try {
			PreparedStatement pstmt = getConnection().prepareStatement(deleteSTMT);
			pstmt.setLong(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	public ArrayList<Game> findAll() {
		ResultSet rs = null;
		Game game;
		ArrayList<Game> games = new ArrayList<Game>();
		try {
			PreparedStatement pstmt = getConnection().prepareStatement(findAllSTMT);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				game = new Game();
				game.setId(rs.getLong("id"));
				game.setName(rs.getString("name"));
				game.setPublisher(rs.getString("publisher"));
				game.setPlatform(rs.getString("platform"));
				game.setRelease_date(rs.getDate("release_date"));
				games.add(game);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		return games;
	}

	public Game findById(Long id) {
		Game game = new Game();
		ResultSet rs = null;
		ArrayList<Character> characters = new ArrayList<Character>();
		try {
//			PreparedStatement pstmt = getConnection().prepareStatement(findByGameIdSTMT);
//			pstmt.setLong(1, id);
//			rs = pstmt.executeQuery();
//			
//			while (rs.next()) {
//				character = new Character();
//				character.setC_id(rs.getLong("c_id"));
//				character.setGame_id(rs.getLong("game_id"));
//				character.setC_name(rs.getString("c_name"));
//				characters.add(character);
//			}
//			
			pstmt = getConnection().prepareStatement(findByIdSTMT);
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				game = new Game();
				game.setId(rs.getLong("id"));
				game.setName(rs.getString("name"));
				game.setPublisher(rs.getString("publisher"));
				game.setPlatform(rs.getString("platform"));
				game.setRelease_date(rs.getDate("release_date"));
				characters=findByGameId(rs.getLong("id"));
				game.setCharacter_list(characters);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
				
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		return game;
	}
	
	public ArrayList<Character> findByGameId(Long id) {
		Character character = new Character();
		ResultSet rs = null;
		
		String findByGameIdSTMT = "select c_id,game_id,c_name from character where game_id=?";
		ArrayList<Character> characters = new ArrayList<Character>();
		try {
			PreparedStatement pstmt = getConnection().prepareStatement(findByGameIdSTMT);
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				character = new Character();
				character.setC_id(rs.getLong("c_id"));
				character.setGame_id(rs.getLong("game_id"));
				character.setC_name(rs.getString("c_name"));
				characters.add(character);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
				
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		return characters;
	}
	
}
