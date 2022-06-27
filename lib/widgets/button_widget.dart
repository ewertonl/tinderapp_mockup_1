import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.icon, required this.label});

  final Widget? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(
            color: AppColors.white,
            width: 2,
          ),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
        foregroundColor: MaterialStateProperty.all<Color>(AppColors.white),
        minimumSize: MaterialStateProperty.all<Size>(const Size.fromHeight(50)),
      ),
      child: Stack(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: icon ?? const SizedBox(),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(label),
        ),
      ]),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 1),
            content: Text("Not implemented yet."),
          ),
        );
      },
    );
  }
}
