import 'package:flutter/material.dart';
import 'package:flutter_batch_10/utils/colors.dart';
import 'package:flutter_batch_10/utils/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shadowContainer,
      body: Stack(
        children: [
          Image.asset(
            'assets/image6.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Fall in Love with Coffee in Blissful Delight!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                    style: TextStyle(
                      color: AppColors.lighter,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 32),
                  FilledButton(
                    onPressed: () => Navigator.pushReplacementNamed(context, AppRoutes.homeCoffeePage), 
                    child: Text("Get Started")
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}