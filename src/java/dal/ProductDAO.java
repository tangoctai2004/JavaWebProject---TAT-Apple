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
}