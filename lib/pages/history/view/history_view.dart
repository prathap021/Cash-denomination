// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Icon(Icons.history)),
      ),
    );
  }
}
