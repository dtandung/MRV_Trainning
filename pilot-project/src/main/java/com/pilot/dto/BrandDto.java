package com.pilot.dto;

import org.springframework.stereotype.Component;

@Component
public class BrandDto {
  private Long brandId;
  private String brandName;
  private String description;
  private String logo;
  private boolean isUsedBrand;

  /**
   * 
   */
  public BrandDto() {
    // TODO Auto-generated constructor stub
  }

  /**
   * @param brandId
   * @param brandName
   * @param description
   * @param logo
   * @param isUsedBrand
   */
  public BrandDto(Long brandId, String brandName, String description, String logo,
      boolean isUsedBrand) {
    this.brandId = brandId;
    this.brandName = brandName;
    this.description = description;
    this.logo = logo;
    this.isUsedBrand = isUsedBrand;
  }

  /**
   * @return the brandId
   */
  public Long getBrandId() {
    return brandId;
  }

  /**
   * @param brandId the brandId to set
   */
  public void setBrandId(Long brandId) {
    this.brandId = brandId;
  }

  /**
   * @return the brandName
   */
  public String getBrandName() {
    return brandName;
  }

  /**
   * @param brandName the brandName to set
   */
  public void setBrandName(String brandName) {
    this.brandName = brandName;
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
   * @return the logo
   */
  public String getLogo() {
    return logo;
  }

  /**
   * @param logo the logo to set
   */
  public void setLogo(String logo) {
    this.logo = logo;
  }

  /**
   * @return the isUsedBrand
   */
  public boolean isUsedBrand() {
    return isUsedBrand;
  }

  /**
   * @param isUsedBrand the isUsedBrand to set
   */
  public void setUsedBrand(boolean isUsedBrand) {
    this.isUsedBrand = isUsedBrand;
  }

  
  

}
