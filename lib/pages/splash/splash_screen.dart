import 'package:flutter/material.dart';

import 'package:getcash/pages/home/view/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}
