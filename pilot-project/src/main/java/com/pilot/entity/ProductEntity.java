/**
 * 
 */
package com.pilot.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * @author Admin
 * @Since 13 thg 4, 2023
 * 
 */
@Entity
@Table(name = "PRODUCT")
public class ProductEntity {

  @Id
  @Column(name = "PRODUCT_ID", nullable = false)
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long productId;

  @Column(name = "PRODUCT_NAME", length = 100, nullable = true, unique = true)
  private String productName;

  @Column(name = "QUANTITY", nullable = true)
  private int quantity;

  @Column(name = "PRICE", nullable = true)
  private double price;

  @Column(name = "SALE_DATE", nullable = true)
  @Temporal(TemporalType.DATE)
  @DateTimeFormat(pattern = "dd-MM-YYYY")
  private Date saleDate;

  @Column(name = "IMAGE", length = 100, nullable = true)
  private String image;

  @Column(name = "DESCRIPTION", nullable = true)
  private String description;

  @ManyToOne
  @JoinColumn(name = "BRAND_ID", nullable = true)
  private BrandEntity brand;

  /**
   * @return the productId
   */
  public Long getProductId() {
    return productId;
  }

  /**
   * @param productId the productId to set
   */
  public void setProductId(Long productId) {
    this.productId = productId;
  }

  /**
   * @return the productName
   */
  public String getProductName() {
    return productName;
  }

  /**
   * @param productName the productName to set
   */
  public void setProductName(String productName) {
    this.productName = productName;
  }

  /**
   * @return the quantity
   */
  public int getQuantity() {
    return quantity;
  }

  /**
   * @param quantity the quantity to set
   */
  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

  /**
   * @return the price
   */
  public double getPrice() {
    return price;
  }

  /**
   * @param price the price to set
   */
  public void setPrice(double price) {
    this.price = price;
  }

  /**
   * @return the saleDate
   */
  public Date getSaleDate() {
    return saleDate;
  }

  /**
   * @param saleDate the saleDate to set
   */
  public void setSaleDate(Date saleDate) {
    this.saleDate = saleDate;
  }

  /**
   * @return the image
   */
  public String getImage() {
    return image;
  }

  /**
   * @param image the image to set
   */
  public void setImage(String image) {
    this.image = image;
  }

  /**
   * @return the description
   */
  public String getDescription() {
    return description;
  }

  /**
   * @param description the description to set
   */
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   * @return the brand
   */
  public BrandEntity getBrand() {
    return brand;
  }

  /**
   * @param brand the brand to set
   */
  public void setBrand(BrandEntity brand) {
    this.brand = brand;
  }


}
