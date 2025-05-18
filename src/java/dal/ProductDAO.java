/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

/**
 *
 * @author tnteheh
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

public class ProductDAO extends DBContext {
    //Lấy toàn sản phẩm theo Category VD: iphone, ipad
    public List<Product> getProductsByCategory(int categoryId) {
        List<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT ProductID, BrandID, CategoryID, ProductName, Description, BasePrice, ImageURL, ImageColorURL, CreatedAt FROM Products WHERE CategoryID = ?";
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, categoryId);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Product product = new Product(
                    rs.getInt("ProductID"),
                    rs.getInt("BrandID"),
                    rs.getInt("CategoryID"),
                    rs.getString("ProductName"),
                    rs.getString("Description"),
                    rs.getDouble("BasePrice"),
                    rs.getString("ImageURL"),
                    rs.getString("ImageColorURL"),
                    rs.getString("CreatedAt")
                );
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
    
    //Lấy 5 sản phẩm mới nhất
    public List<Product> getFeaturedProducts(int limit) {
        List<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT TOP 5 ProductID, BrandID, CategoryID, ProductName, Description, BasePrice, ImageURL, ImageColorURL, CreatedAt "
                       + "FROM Products ORDER BY CreatedAt DESC";

            PreparedStatement stmt = connection.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Product product = new Product(
                    rs.getInt("ProductID"),
                    rs.getInt("BrandID"),
                    rs.getInt("CategoryID"),
                    rs.getString("ProductName"),
                    rs.getString("Description"),
                    rs.getDouble("BasePrice"),
                    rs.getString("ImageURL"),
                    rs.getString("ImageColorURL"),
                    rs.getString("CreatedAt")
                );
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
    //Lấy Banner theo từng category
    public String getBannerByCategoryID(int categoryID) {
        String bannerURL = null;
        String sql = "SELECT BannerURL FROM Banners WHERE CategoryID = ?";
        
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, categoryID);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                bannerURL = rs.getString("BannerURL");
            }
            
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return bannerURL;
    }
    //Tìm kiếm theo tên sản phẩm
    public List<Product> searchProductsByName(String keyword) {
        List<Product> products = new ArrayList<>();
        try {
            String sql = "SELECT ProductID, BrandID, CategoryID, ProductName, Description, BasePrice, ImageURL, ImageColorURL, CreatedAt "
                       + "FROM Products WHERE ProductName LIKE ?";
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, "%" + keyword + "%");
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Product product = new Product(
                    rs.getInt("ProductID"),
                    rs.getInt("BrandID"),
                    rs.getInt("CategoryID"),
                    rs.getString("ProductName"),
                    rs.getString("Description"),
                    rs.getDouble("BasePrice"),
                    rs.getString("ImageURL"),
                    rs.getString("ImageColorURL"),
                    rs.getString("CreatedAt")
                );
                products.add(product);
            }
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
}