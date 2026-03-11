import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/generated/l10n.dart';

class BottomNavigationBarEntity {
  final String activeimage, inactiveimage;
  final String title;

  BottomNavigationBarEntity(
      {required this.activeimage,
      required this.inactiveimage,
      required this.title});
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      BottomNavigationBarEntity(
          activeimage: Assets.activehomeicon,
          inactiveimage: Assets.inactivehomeicon,
          title: S.current.home),
      BottomNavigationBarEntity(
          activeimage: Assets.activeproducticon,
          inactiveimage: Assets.inactiveproducticon,
          title: S.current.products),
      BottomNavigationBarEntity(
          activeimage: Assets.activeshoppingcart,
          inactiveimage: Assets.inactiveshoppingcart,
          title: S.current.cart),
      BottomNavigationBarEntity(
          activeimage: Assets.activeuser,
          inactiveimage: Assets.inactiveuser,
          title: S.current.account),
    ];
