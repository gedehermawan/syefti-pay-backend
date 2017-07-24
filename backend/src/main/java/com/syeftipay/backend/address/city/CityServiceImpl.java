package com.syeftipay.backend.address.city;

import com.syeftipay.backend.address.province.Province;
import com.syeftipay.backend.address.province.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CityServiceImpl implements CityService{
  @Autowired
  CityRepository cityRepository;

  @Autowired
  ProvinceService provinceService;

  @Override
  public List<City> findAll() {
    return cityRepository.findAll();
  }

  @Override
  public List<City> findAllByProvince(long provinceId) {
    Province province = provinceService.findById(provinceId);
    return cityRepository.findAllByProvince(province);
  }

  @Override
  public City findById(long id) {
    City city = cityRepository.findOne(id);

    if(city == null){
      throw new CityNotFoundException(id);
    }

    return city;
  }
}
