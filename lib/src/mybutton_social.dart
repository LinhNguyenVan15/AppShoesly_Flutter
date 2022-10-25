import 'package:flutter/material.dart';

class MyButtonSocial extends StatelessWidget {
  const MyButtonSocial({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: const Color(0xffE7E7E7))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xffF3F3F3),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      icon,
                      width: 10.0,
                      height: 10.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      text.toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
