import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/main_view_body.dart';
import 'package:fruit_hub/Features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';

class MainViewBodyBlocConsumer extends StatelessWidget {
  const MainViewBodyBlocConsumer({
    super.key,
    required int selectedIndex,
    required List<Widget> pages,
  })  : _selectedIndex = selectedIndex,
        _pages = pages;

  final int _selectedIndex;
  final List<Widget> _pages;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartProductAdded) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('تمت العمليه بنجاح '),
            duration: Duration(seconds: 1),
          ));
        }
        if (state is CartItemRemoved) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('تمت حذف المنج بنجاح '),
            duration: Duration(seconds: 1),
          ));
        }
      },
      child: MainViewBody(selectedIndex: _selectedIndex, pages: _pages),
    );
  }
}
