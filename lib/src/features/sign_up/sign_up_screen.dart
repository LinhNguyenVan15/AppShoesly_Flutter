import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linhtest/src/components/widgets/wishlist_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(title: const Text("Sign Up")),
      body: Column(
        children: [
          Center(
             child: CupertinoButton(
              child: Text("Click Here"),
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.amber,
            ),
          ),
          const WishlistWidget()
        ],
      ),
    );
  }
}
