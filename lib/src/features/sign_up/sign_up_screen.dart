import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linhtest/src/components/widgets/wishlist_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);



  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}



class _SignUpScreenState extends State<SignUpScreen> {

  final dataStr='''
  {
  "name": "John Smith",
  "email": "john@example.com"
}
  ''' ;
  @override
  Widget build(BuildContext context) {
    final json=jsonDecode(dataStr);
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(title: const Text("Sign Up")),
      body: Column(
        children: [
          Text(json['name']??''),
          Center(
             child:  CupertinoButton(
                child:  Text("Click Here"),
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.amber,
            ),
          ),
          const WishlistWidget(),
          SizedBox(
            height: 400,
            child: PageView(
              children: [
                Container(
                  child:  Text("data1"),
                  color: Colors.amber,
                ),
                Container(
                   child:  Text("data2"),
                  color: Colors.green,
                ),
                Container (
                  child:  Text("data3"),
                  color: Colors.deepOrange,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30)
                .copyWith(bottom: 20),
            child: InkWell(
              onTap: (){},
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff101010)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "Get Started".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

