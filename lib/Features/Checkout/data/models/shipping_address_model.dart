import 'package:fruit_hub/Features/Checkout/domain/entites/shipping_address_entity.dart';

class ShippingAddressModel {
  String? name, email, address, city, phoneNum, floor;

  ShippingAddressModel(
      {this.name,
      this.email,
      this.address,
      this.city,
      this.phoneNum,
      this.floor});

  factory ShippingAddressModel.fromEntity(
      ShippingAddressEntity entity) {
    return ShippingAddressModel(
      name: entity.name,
      email: entity.email,
      address: entity.address,
      city: entity.city,
      phoneNum: entity.phoneNum,
      floor: entity.floor,
    );
  }
  tojson(){
    return {
      'name':name,
      'email':email,
      'address':address,
      'city':city,
      'phoneNum':phoneNum,
      'floor':floor
    };
  }
}
