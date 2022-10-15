import 'package:flutter/material.dart';

void main() {
  const icGoogle = 'assets/images/ic_google.png';
  const icFacebook = 'assets/images/ic_facebook.png';
  runApp(
    const MaterialApp(
      home: DemoScreen(icGoogle: icGoogle,icFacebook: icFacebook),
    ),
  );
}

class DemoScreen extends StatelessWidget {
  const DemoScreen({
    Key? key,
    required this.icGoogle,
    required this.icFacebook,

  }) : super(key: key);

  final String icGoogle;
  final String icFacebook;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffF3F3F3),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    icGoogle,
                    width: 20,
                    height: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "google".toUpperCase(),
                    style:
                        const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffF3F3F3),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                  icFacebook,
                    width: 20,
                    height: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Facebook".toUpperCase(),
                    style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
