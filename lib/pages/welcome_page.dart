import 'package:flutter/material.dart';

import 'home_page.dart';
import '../styles/app_colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: SizedBox(
          width: 200,
          height: 100,
          child: TextButton(
            child: Stack(
              children: const [
                Align(
                  alignment: Alignment.center,
                  child: Text("Enter Tinder"),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.arrow_forward_rounded),
                ),
              ],
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext pagecontext) {
                return const HomePage();
              }));
            },
          ),
        ),
      ),
    );
  }
}
