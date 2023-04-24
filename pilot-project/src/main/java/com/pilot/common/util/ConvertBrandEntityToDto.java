package com.pilot.common.util;

import com.pilot.dto.BrandDto;
import com.pilot.entity.BrandEntity;

public class ConvertBrandEntityToDto {

  public static BrandDto insertToBrand(BrandEntity brandEntity, boolean isUsedBrand) {

    BrandDto brandDto = new BrandDto();

    brandDto.setBrandId(brandEntity.getBrandId());
    brandDto.setBrandName(brandEntity.getBrandName());
    brandDto.setLogo(brandEntity.getLogo());
    brandDto.setDescription(brandEntity.getDescription());
    brandDto.setUsedBrand(isUsedBrand);
    return brandDto;

  }
}
