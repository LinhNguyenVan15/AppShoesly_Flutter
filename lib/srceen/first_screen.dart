import 'package:flutter/material.dart';

class TheFirstScreen extends StatelessWidget {
  const TheFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff101010),
      body: Center(
        child: Text(" Test",style: TextStyle(color: Color(0xffFFFFFF)),),
      ),

    );
  }
}

