import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../widgets/app_disclaimer_widget.dart';
import '../widgets/button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double _gap = 10;
  @override
  Widget build(BuildContext context) {
    final Size wsize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        foregroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.orange,
                AppColors.pink,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Center(
            child: SizedBox(
              width: 360,
              child: AnimatedAlign(
                duration: const Duration(milliseconds: 300),
                alignment: wsize.width > wsize.height ? Alignment.center : Alignment.bottomCenter,
                curve: Curves.ease,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  //mainAxisAlignment: wsize.width > wsize.height
                  //? MainAxisAlignment.center
                  //: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: _gap * 10),
                      child: Image.asset(
                        height: 48,
                        "assets/logo_tinder.png",
                        color: AppColors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: AppDisclaimer(),
                    ),
                    SizedBox(height: _gap),
                    Button(
                      label: "Sign in with Apple".toUpperCase(),
                      icon: Image.asset(
                        "assets/logo_apple.png",
                        height: 16,
                      ),
                    ),
                    SizedBox(height: _gap),
                    Button(
                      label: "Sign in with Facebook".toUpperCase(),
                      icon: Image.asset(
                        "assets/logo_facebook.png",
                        height: 16,
                      ),
                    ),
                    SizedBox(height: _gap),
                    Button(
                      label: "Sign in with Phone Number".toUpperCase(),
                      icon: Image.asset(
                        "assets/bubble.png",
                        height: 16,
                      ),
                    ),
                    SizedBox(height: _gap),
                    SizedBox(height: _gap),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(AppColors.white),
                      ),
                      child: const Text("Trouble Signing In?"),
                    ),
                    SizedBox(height: _gap * 2),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
