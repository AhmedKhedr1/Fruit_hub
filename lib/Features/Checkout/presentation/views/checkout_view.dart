import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/helper/get_user.dart';
import 'package:fruit_hub/Core/repos/orders_repo/orders_repo.dart';
import 'package:fruit_hub/Core/services/get_it_services.dart';
import 'package:fruit_hub/Core/widgets/build_app_bar.dart';
import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';
import 'package:fruit_hub/Features/Checkout/domain/entites/shipping_address_entity.dart';
import 'package:fruit_hub/Features/Checkout/presentation/manager/add_order_cubit/add_order_cubit.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/add_order_cubit_bloc_builder.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:fruit_hub/Features/cart/domain/entities/cart_entitey.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key, required this.cartEntitey});
  final CartEntitey cartEntitey;

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  late OrderEntity orderEntity;

  @override
  void initState() {
    super.initState();

    orderEntity = OrderEntity(
      cartEntitey: widget.cartEntitey,
      shippingAddressEntity: ShippingAddressEntity(),
      uId: getUserData().uId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddOrderCubit(getIt<OrdersRepo>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context,
            title: 'الشحن', leading: true, notification: true),
        body: Provider.value(
          value: orderEntity,
          child: AddOrderCubitBlocBuilder(child: CheckoutViewBody()),
        ),
      ),
    );
  }
}
