import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int homeIndex;
  final ValueChanged<int> onIndexSelected;

  const CustomBottomNavigationBar({
    Key key,
    @required this.homeIndex,
    @required this.onIndexSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double iconSize = 32;
    const Color iconColor = Color(0xFF243656);
    const selectedColor = Color(0xFF0070BA);

    // print(homeIndex);
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Row(children: [
                    IconButton(
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: homeIndex == 0 ? selectedColor : iconColor,
                        size: iconSize,
                      ),
                      onPressed: () => onIndexSelected(0),
                    ),
                    homeIndex == 0 ? Text('Productos') : SizedBox()
                  ]),
                ),
                Container(
                  child: Row(children: [
                    IconButton(
                      icon: Icon(
                        Icons.explore_outlined,
                        color: homeIndex == 1 ? selectedColor : iconColor,
                        size: iconSize,
                      ),
                      onPressed: () => onIndexSelected(1),
                    ),
                    homeIndex == 1 ? Text('Paises') : SizedBox()
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
