import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: ListView.builder(
        itemCount: 1000,
        itemBuilder: (BuildContext context, int index) {
          return Text(index.toString());
        },
      ),
    );
  }
}
