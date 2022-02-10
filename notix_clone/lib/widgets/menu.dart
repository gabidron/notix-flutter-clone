import 'package:flutter/material.dart';

class Menu extends StatelessWidget implements PreferredSizeWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(75);

  final List<String> _navItems = const [
    "Solutions",
    "Pricing",
    "Partners",
    "Features",
    "Case Studies",
    "Get a demo",
    "Blog",
  ];
  final List<String> _options = const [];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Image.asset('assets/images/logo.png'),
        ),
        Container(
            child: Row(
          children: _navItems.map((e) => Text(e)).toList(),
        )),
        Container(
          child: Row(
            children: [
              const Text(
                "Login",
              ),
              const Text(
                "Ru",
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign up",
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
