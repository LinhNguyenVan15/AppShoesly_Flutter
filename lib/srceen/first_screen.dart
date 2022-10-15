import 'package:flutter/material.dart';

class TheFirstScreen extends StatelessWidget {
  const TheFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child:Scaffold(
        body: Center(
          child: Image(
            image: AssetImage('assets/images/onboarding.png'),
          ),
        ),
      ),
    );
  }
}
