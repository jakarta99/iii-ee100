package org.iii.ee100.animour.halfway.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.home.entity.Animal;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class AnimalDaoImpl implements AnimalDao {

	private static final String insSql = "INSERT INTO animal(name, specie, color, found, upload, city, district) VALUES(?, ?, ?, ?, ?, ?, ?)";
	private static final String upSql = "UPDATE animal SET name=?, specie=?, color=?, found=?, upload=?, city=?, district=? WHERE animalId = ?";
	private static final String delSql = "DELETE FROM animal WHERE animalId=?";
	private static final String slcSql = "SELECT animalId, name, specie, color, found, upload, city, district FROM animal ORDER BY animalId";
	private static final String slconeSql = "SELECT animalId, name, specie, color, found, upload, city, district  FROM animal WHERE animalId=?";
	private static final String slc6 = "SELECT animalId, name, specie, color, found, upload, city, district FROM animal ORDER BY upload DESC FETCH FIRST 6 ROWS ONLY";
	HikariDataSource ds = getConnection();

	private HikariDataSource getConnection() {
		String connUrl = "jdbc:postgresql://localhost:5432/testdb";
		String user = "postgres";
		String pswd = "postgres";
		HikariConfig config = new HikariConfig();
		config.setJdbcUrl(connUrl);
		config.setUsername(user);
		config.setPassword(pswd);
		config.addDataSourceProperty("cachePrepStmts", "true");
		config.addDataSourceProperty("prepStmtCacheSize", "250");
		config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");

		HikariDataSource ds = new HikariDataSource(config);
		return ds;
	}

	public void insert(Animal animal) {
		ResultSet rs = null;

		try (Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(insSql, Statement.RETURN_GENERATED_KEYS);) {

			pstmt.setString(1, animal.getName());
			pstmt.setString(2, animal.getSpecie());
			pstmt.setString(3, animal.getColor());
			pstmt.setDate(4, animal.getFound());
			pstmt.setTimestamp(5, animal.getUpload());
			pstmt.setString(6, animal.getCity());
			pstmt.setString(7, animal.getDistrict());
			pstmt.executeUpdate();

			rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				animal.setAnimalId(rs.getLong(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}// end of insert

	public void update(Animal animal) {
		ResultSet rs = null;

		try (Connection conn = ds.getConnection(); 
				PreparedStatement pstmt = conn.prepareStatement(upSql);) {

			pstmt.setString(1, animal.getName());
			pstmt.setString(2, animal.getSpecie());
			pstmt.setString(3, animal.getColor());
			pstmt.setDate(4, animal.getFound());
			pstmt.setTimestamp(5, animal.getUpload());
			pstmt.setString(6, animal.getCity());
			pstmt.setString(7, animal.getDistrict());
			pstmt.setLong(8, animal.getAnimalId());
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public void delete(Long id) {
		ResultSet rs = null;

		try (Connection conn = ds.getConnection(); 
				PreparedStatement pstmt = conn.prepareStatement(delSql);) {
			pstmt.setLong(1, id);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public List<Animal> findAll() {
		ResultSet rs = null;
		Animal an = null;
		List<Animal> animals = new ArrayList<>();

		try (Connection conn = ds.getConnection(); 
				PreparedStatement pstmt = conn.prepareStatement(slcSql)) {
			rs = pstmt.executeQuery();

			while (rs.next()) {

				an = new Animal();
				an.setAnimalId(rs.getLong("animalId"));
				an.setName(rs.getString("name"));
				an.setSpecie(rs.getString("specie"));
				an.setColor(rs.getString("color"));
				an.setFound(rs.getDate("found"));
				an.setUpload(rs.getTimestamp("upload"));
				an.setCity(rs.getString("city"));
				an.setDistrict(rs.getString("district"));

				animals.add(an);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return animals;
	}

	public Animal findOne(Long id) {
		ResultSet rs = null;
		Animal an = null;

		try (Connection conn = ds.getConnection(); 
				PreparedStatement pstmt = conn.prepareStatement(slconeSql);) {
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				an = new Animal();

				an.setAnimalId(rs.getLong("animalId"));
				an.setName(rs.getString("name"));
				an.setSpecie(rs.getString("specie"));
				an.setColor(rs.getString("color"));
				an.setFound(rs.getDate("found"));
				an.setUpload(rs.getTimestamp("upload"));
				an.setCity(rs.getString("city"));
				an.setDistrict(rs.getString("district"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return an;
	}

	public List<Animal> findTopSix() {
		ResultSet rs = null;
		List<Animal> sixanimals = new ArrayList<>();
		Animal an = new Animal();

		try (Connection conn = ds.getConnection(); 
				PreparedStatement pstmt = conn.prepareStatement(slc6)) {
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				an = new Animal();
				an.setAnimalId(rs.getLong("animalId"));
				an.setName(rs.getString("name"));
				an.setSpecie(rs.getString("specie"));
				an.setColor(rs.getString("color"));
				an.setFound(rs.getDate("found"));
				an.setUpload(rs.getTimestamp("upload"));
				an.setCity(rs.getString("city"));
				an.setDistrict(rs.getString("district"));
				
				sixanimals.add(an);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return sixanimals;
	}

}
