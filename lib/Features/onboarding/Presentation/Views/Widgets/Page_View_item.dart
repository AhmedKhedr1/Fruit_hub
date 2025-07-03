import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
 const  PageViewItem(
      {super.key,
      required this.backgorundimage,
      required this.image,
      required this.title_ar,
      required this.subtilte, required this.isVisiable});
  final String backgorundimage, image, title_ar, subtilte;
 final bool isVisiable;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            SvgPicture.asset(
              backgorundimage,
              fit: BoxFit.fill,
              width: double.infinity,
              height: 544,
            ),
            Positioned(
                left: 0,
                right: 0,
                top: 250,
                child: SvgPicture.asset(
                  image,
                  height: 270,
                  width: 250,
                  fit: BoxFit.scaleDown,
                )),
            Visibility(
              visible:isVisiable ,
              child: Positioned(
                top: 40,
                right: 20,
                child: Text('تخط'),
              ),
            )
          ],
        ),
        SizedBox(
          height: 64,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('مرحبًا بك في'),
            Text('HUB'),
            Text('Fruit'),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Text(textAlign: TextAlign.center, subtilte)
      ],
    );
  }
}
