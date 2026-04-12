import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/ProductDetails/presentation/views/widgets/curve_cliper.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({
    super.key,
    required this.image,
  });

  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 420,
          width: double.infinity,
          color: Color(0xffF3F5F7),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ClipPath(
            clipper: CurveClipper(),
            child: Container(
              height: 40,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 150,
          child: Image.network(
            image,
            width: 221,
            height: 167,
          ),
        ),
        Positioned(
          right: 16,
          top: 50,
          child: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios_new_outlined, size: 20)),
          ),
        ),
      ],
    );
  }
}
