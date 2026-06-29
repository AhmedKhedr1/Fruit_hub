import 'package:bloc/bloc.dart';
import 'package:fruit_hub/Core/entities/product_entitey.dart';
import 'package:fruit_hub/Core/repos/product_repo/product_repo.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productRepo) : super(ProductsInitial());
  final ProductRepo productRepo;
  List<ProductEntitey> productslsit = [];

  Future<void> getproducts() async {
    emit(ProductsLoading());
    final result = await productRepo.getProducts();
    result.fold((failure) => emit(ProductsFailure(failure.message)),
        (products) => emit(ProductsSuccess(products)));
  }

  Future<void> getBestSelleingProducts() async {
    emit(ProductsLoading());
    final result = await productRepo.getBestSelleingProducts();
    result.fold((failure) => emit(ProductsFailure(failure.message)),
        (products) {
      productslsit = products;
      emit(ProductsSuccess(products));
    });
  }

  void searchProducts(String text) {
    if (text.trim().isEmpty) {
      emit(ProductsSuccess(productslsit));
      return;
    }

    final filteredProducts = productslsit.where((product) {
      return product.name!.contains(text);
    }).toList();

    emit(ProductsSuccess(filteredProducts));
  }
}
