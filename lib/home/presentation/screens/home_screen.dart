import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Container(
      width: 20,
        height: 20,
        child: TextButton(
          onPressed: (){
            print(height);
            print(width);
          },
            child: Text("print"),
            ),
    );
  }
}