import 'package:flutter/material.dart';
import 'package:flutter_batch_10/pages/day_7/bloc/auth_bloc.dart';
import 'package:flutter_batch_10/utils/colors.dart';
import 'package:flutter_batch_10/utils/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    print('Splash Screen Init');
    Future.delayed(const Duration(seconds: 1), () {
      if (context.mounted) {
        if (context.read<AuthBloc>().state.isAuthenticated) {
          Navigator.pushReplacementNamed(context, AppRoutes.user);
        } else {
          Navigator.pushReplacementNamed(context, AppRoutes.login);
        }
      }
    });
    super.initState();
  }

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
                    style: TextStyle(color: AppColors.lighter, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 32),
                  FilledButton(
                    onPressed:
                        () => Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.homeCoffeePage,
                        ),
                    child: Text("Get Started"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
