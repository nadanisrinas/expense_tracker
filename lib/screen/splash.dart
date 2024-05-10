import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a time-consuming task (e.g., loading data) for the splash screen.
    // Replace this with your actual data loading logic.
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(
              size: 100.0,
            ),
            SizedBox(height: 16.0),
            Text('Flutter Expense Tracker'),
          ],
        ),
      )
    );
  }
}