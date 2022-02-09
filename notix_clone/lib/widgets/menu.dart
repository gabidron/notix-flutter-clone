import 'package:flutter/material.dart';

class Menu extends StatelessWidget implements PreferredSizeWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(),
        Container(),
        Container(),
      ],
    );
  }
}
