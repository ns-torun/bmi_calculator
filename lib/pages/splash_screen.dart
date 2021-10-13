import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'user_input.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToUser();
  }

  _navigateToUser() async {
    await Future.delayed(const Duration(seconds: 4), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const UserInput()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/bmi_logo.png'),
              radius: 100,
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEF7270),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 150)),
            TweenAnimationBuilder(
              tween: Tween(begin: 0.1, end: 1.0),
              duration: const Duration(seconds: 3),
              builder: (context, double size, _) => SizedBox(
                height: 50,
                width: 50,
                child: CircularProgressIndicator(
                  color: const Color(0xFFEF7270),
                  value: size,
                  strokeWidth: 6,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
