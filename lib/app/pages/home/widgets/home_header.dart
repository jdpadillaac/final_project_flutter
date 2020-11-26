import 'package:flutter/material.dart';
import 'package:products_app/app/utils/colors.dart';
import 'package:products_app/app/utils/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _BuildSearchBox(),
        _IconBtnWithCounter(
          icon: Icons.menu,
          press: () {
            print('Hola?');
            return Drawer();
          },
        )
      ],
    );
  }
}

class _BuildSearchBox extends StatelessWidget {
  const _BuildSearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.7,
      height: 50,
      decoration: BoxDecoration(
        color: appThirdColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Buscar',
          prefixIcon: Icon(Icons.search),
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
          contentPadding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(10)),
        ),
      ),
    );
  }
}

class _IconBtnWithCounter extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback press;
  const _IconBtnWithCounter({
    Key key,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: getProportionateScreenWidth(50),
            width: getProportionateScreenWidth(50),
            decoration: BoxDecoration(
              color: appThirdColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: appThirdColor,
            ),
          ),
        ],
      ),
    );
  }
}
