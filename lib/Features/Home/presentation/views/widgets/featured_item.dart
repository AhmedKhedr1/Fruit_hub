import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/featured_item_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * .95,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  bottom: 0,
                  top: 0,
                  right: MediaQuery.sizeOf(context).width * .4,
                  child: Image.asset(
                    Assets.testimage,
                    fit: BoxFit.fill,
                  )),
              Container(
                width: MediaQuery.sizeOf(context).width / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          Assets.featureditemBackground,
                        ),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'عروض العيد',
                        style: TextStyless.regular13
                            .copyWith(color: Color(0xffFFFFFF)),
                      ),
                      Spacer(),
                      Text(
                        'خصم 25%',
                        style: TextStyless.bold19
                            .copyWith(color: Color(0xffFFFFFF)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      FeaturedItemButton(
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
