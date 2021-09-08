import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final Widget body;

  AppContainer({required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: body,
    );
  }
}
