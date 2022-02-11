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
          padding: const EdgeInsets.only(right: 15, top: 20),
          child: FractionallySizedBox(
            heightFactor: 1,
            child: Stack(
              children: [
                Text(
                  widget.label,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                Positioned(
                  top: 30,
                  child: Container(
                    color: Colors.red,
                    child: Text(
                      widget.label,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
