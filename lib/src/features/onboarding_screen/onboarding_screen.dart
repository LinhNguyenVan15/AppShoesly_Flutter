import 'package:flutter/material.dart';
import 'package:linhtest/src/features/sign_up/sign_up_screen.dart';
import '../../components/constants/image_constants.dart';
import '../../components/widgets/mybutton_social.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  void _onTapGetStart() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => const SignUpScreen(),
      ),
    );
  }

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
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _onTapGetStart,
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
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: const [
                      Expanded(
                        child: MyButtonSocial(
                          icon: icGoogle,
                          text: "google",
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: MyButtonSocial(
                          icon: icFacebook,
                          text: "facebook",
                        ),
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
