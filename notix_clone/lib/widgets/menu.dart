import 'package:flutter/material.dart';

import './menu_item.dart';

class Menu extends StatelessWidget implements PreferredSizeWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  final List<String> _navItems = const [
    "Solutions",
    "Pricing",
    "Partners",
    "Features",
    "Case Studies",
    "Get a demo",
    "Blog",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 32,
            margin: const EdgeInsets.only(right: 50),
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 75),
            child: Row(
              children: _navItems
                  .map(
                    (e) => MenuItem(
                      label: e,
                    ),
                  )
                  .toList(),
            ),
          ),
          Row(
            children: [
              const MenuItem(
                label: "Login",
              ),
              const MenuItem(
                label: "Ru",
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                height: 40,
                width: 120,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Center(
                    child: Text(
                      "Sign up",
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(255, 95, 55, 1)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: BorderSide(color: Colors.red)))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
