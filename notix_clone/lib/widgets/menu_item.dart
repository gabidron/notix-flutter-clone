import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  final String label;

  const MenuItem({Key? key, required this.label}) : super(key: key);

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  var textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) =>
          setState(() => textColor = const Color.fromRGBO(255, 95, 55, 1)),
      onExit: (_) => setState(() => textColor = Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Text(
          widget.label,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
