import 'package:flutter/material.dart';

class KalkulatorButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;
  IconData? icon;
  final Function() onTap;

  KalkulatorButton({required this.backgroundColor, required this.foregroundColor, required this.text, required this.onTap});

  KalkulatorButton.Icon({required this.backgroundColor, required this.foregroundColor, required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          child: Center(
            child: icon == null
                ? Text(
                    text,
                    style: Theme.of(context).textTheme.headline4!.copyWith(color: foregroundColor),
                  )
                : Icon(
                    icon,
                    color: foregroundColor,
                  ),
          ),
        ));
  }
}
