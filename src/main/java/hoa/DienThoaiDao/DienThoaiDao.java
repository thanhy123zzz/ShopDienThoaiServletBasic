package hoa.DienThoaiDao;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import hoa.Enity.DienThoai;

public class DienThoaiDao {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		String hostname = "localhost";
		String dbName = "quanlykhachhang";
		String username = "tienhoa";
		String password = "tienhoa25";
		return getConnection(hostname, dbName, username, password);
	}

	private static Connection getConnection(String hostname, String dbName, String username, String password)
			throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		String connectionURL = "jdbc:mysql://" + hostname + ":3306/" + dbName;
		Connection conn = DriverManager.getConnection(connectionURL, username, password);
		return conn;
	}

	public static int save(DienThoai e, InputStream image) {
		int status = 0;
		try {
			Connection con = DienThoaiDao.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into sanpham(name,thongtinchitiet,gia,soluong,image) values (?,?,?,?,?)");
			ps.setString(1, e.getName());
			ps.setString(2, e.getThongtinchitiet());
			ps.setInt(3, e.getGia());
			ps.setInt(4, e.getSoluong());

			if (image != null) {
				ps.setBlob(5, image);
			}

			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static int update(DienThoai e, InputStream image) {
		int status = 0;
		try {
			Connection con = DienThoaiDao.getConnection();
			PreparedStatement ps = con
					.prepareStatement("update sanpham set name=?,thongtinchitiet=?,gia=?,soluong=?,image=? where id=?");
			ps.setString(1, e.getName());
			ps.setString(2, e.getThongtinchitiet());
			ps.setInt(3, e.getGia());
			ps.setInt(4, e.getSoluong());
			ps.setInt(6, e.getId());

			if (image != null) {
				ps.setBlob(5, image);
			}

			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}
	public static int update(DienThoai e) {
		int status = 0;
		try {
			Connection con = DienThoaiDao.getConnection();
			PreparedStatement ps = con
					.prepareStatement("update sanpham set name=?,thongtinchitiet=?,gia=?,soluong=? where id=?");
			ps.setString(1, e.getName());
			ps.setString(2, e.getThongtinchitiet());
			ps.setInt(3, e.getGia());
			ps.setInt(4, e.getSoluong());
			ps.setInt(5, e.getId());
			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public static int delete(int id) {
		int status = 0;
		try {
			Connection con = DienThoaiDao.getConnection();
			PreparedStatement ps = con.prepareStatement("delete from sanpham where id=?");
			ps.setInt(1, id);
			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public static DienThoai getEmployeeById(int id) {
		DienThoai e = new DienThoai();

		try {
			Connection con = DienThoaiDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from sanpham where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setThongtinchitiet(rs.getString(3));
				e.setGia(rs.getInt(4));
				e.setSoluong(rs.getInt(5));
				
				Blob blob = rs.getBlob("image");
                
                InputStream inputStream = blob.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                 
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);                  
                }
                 
                byte[] imageBytes = outputStream.toByteArray();
                String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                 
                 
                inputStream.close();
                outputStream.close();
                
                e.setImage(base64Image);
                
			}
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return e;
	}
	
	public static List<DienThoai> find(String key) {
		List<DienThoai> list = new ArrayList<DienThoai>();

		try {
			Connection con = DienThoaiDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from sanpham where concat(name,gia) like '%"+key+"%'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				DienThoai e = new DienThoai();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setThongtinchitiet(rs.getString(3));
				e.setGia(rs.getInt(4));
				e.setSoluong(rs.getInt(5));
				String base64Image = null;
				Blob blob = rs.getBlob(6);
				if (blob != null) {
					InputStream inputStream = blob.getBinaryStream();
					ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
					byte[] buffer = new byte[4096];
					int bytesRead = -1;

					while ((bytesRead = inputStream.read(buffer)) != -1) {
						outputStream.write(buffer, 0, bytesRead);
					}

					byte[] imageBytes = outputStream.toByteArray();

					base64Image = Base64.getEncoder().encodeToString(imageBytes);

					inputStream.close();
					outputStream.close();
				}
				e.setImage(base64Image);

				list.add(e);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public static List<DienThoai> getAllEmployeeLimit(int start, int total) {
		List<DienThoai> list = new ArrayList<DienThoai>();

		try {
			Connection con = DienThoaiDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from sanpham limit " + (start - 1) + "," + total);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				DienThoai e = new DienThoai();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setThongtinchitiet(rs.getString(3));
				e.setGia(rs.getInt(4));
				e.setSoluong(rs.getInt(5));
				String base64Image = null;
				Blob blob = rs.getBlob(6);
				if (blob != null) {
					InputStream inputStream = blob.getBinaryStream();
					ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
					byte[] buffer = new byte[4096];
					int bytesRead = -1;

					while ((bytesRead = inputStream.read(buffer)) != -1) {
						outputStream.write(buffer, 0, bytesRead);
					}

					byte[] imageBytes = outputStream.toByteArray();

					base64Image = Base64.getEncoder().encodeToString(imageBytes);

					inputStream.close();
					outputStream.close();
				}
				e.setImage(base64Image);

				list.add(e);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public static List<DienThoai> getAllEmployees() {
		List<DienThoai> list = new ArrayList<DienThoai>();

		try {
			Connection con = DienThoaiDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from sanpham");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				DienThoai e = new DienThoai();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setThongtinchitiet(rs.getString(3));
				e.setGia(rs.getInt(4));
				e.setSoluong(rs.getInt(5));
				list.add(e);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}
