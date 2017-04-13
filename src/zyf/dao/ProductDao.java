package zyf.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import zyf.entity.Product;

public class ProductDao {
	/**
	 * 获取数据库连接
	 * @return Connection 对象
	 */
	public Connection getConnection(){
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/test";
			String user = "root";
			String password = "soysouce";
			conn=DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}

	/**
     * 分页查询所有商品信息
     * @param page 页数
     * @return List<Product>
     */
    public List<Product> find(int page){
        List<Product> list = new ArrayList<Product>();
        Connection conn = getConnection();
        String sql = "select* from tb_product order by id desc limit ?,?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, (page-1)*Product.PAGE_SIZE);
            ps.setInt(2, Product.PAGE_SIZE);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Product p=new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setNum(rs.getInt("num"));
                p.setPrice(rs.getDouble("price"));
                p.setUnit(rs.getString("unit"));
                list.add(p);
            }
            ps.close();
            conn.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;
    }
    
    /**
     * 查询总记录数
     * @return 总记录数
     */
    public int findCount(){
        int count=0;
        Connection conn = getConnection();
        String sql = "select count(1) from tb_product";
        try {
            Statement sta = conn.createStatement();
            ResultSet rs = sta.executeQuery(sql);
            if(rs.next()){
                count = rs.getInt(1);  //对总记录数赋值
            }
            rs.close();
            conn.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return count;        //返回总记录数
    }
	
}
