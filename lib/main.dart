import 'package:flutter/material.dart';

const icGoogle = 'assets/images/ic_google.png';
const icFacebook = 'assets/images/ic_facebook.png';
const imgOnBoarDing = 'assets/images/onboarding.png';

void main() {
  runApp(
    const MaterialApp(
      home: DemoScreen(),
    ),
  );
}

class DemoScreen extends StatelessWidget {
  const DemoScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 126, bottom: 70),
                child: Image.asset(imgOnBoarDing, width: 236, height: 196),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  "Enjoy The New Arrival Product",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 36),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(top: 20, bottom: 107, left: 45, right: 45),
                child: Text(
                  "Get your dream item easily and safely with Shoesly. and get other interesting offers",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff6F6F6F),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30)
                    .copyWith(bottom: 20),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30 ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: const [
                      Expanded(
                        child: MyButtonSocial(icon: icGoogle,text: "google",),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: MyButtonSocial(icon: icFacebook,text: "facebook",),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
