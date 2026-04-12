import 'package:fruit_hub/Core/entities/product_entitey.dart';

ProductEntitey getdummyproduct() {
  return ProductEntitey(
      imageUrl: null,
      name: 'Apple',
      code: '123',
      description: 'fresh apple',
      price: 1.99,
      isFeatured: true,
      isOrganic: true,
      revews: [],
      expirationMonths: 5,
      numOfCalories: 52,
      unitAmount: 2,
      avgRating: 4.5);
}

List<ProductEntitey> getdummyproducts() {
  return [
    getdummyproduct(),
    getdummyproduct(),
    getdummyproduct(),
    getdummyproduct(),
    getdummyproduct(),
    getdummyproduct(),
  ];
}
