import 'package:abis_mobile/services/auth.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:abis_mobile/utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService authService = AuthService();

  final TextEditingController url = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool _isPasswordVisible = false;

  void login() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Log in',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Enter your login credentials to log in to your account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: MyColor.subTextColor,
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: username,
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIconConstraints:
                      const BoxConstraints(maxHeight: 30, maxWidth: 30),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SvgPicture.asset(
                      'assets/user.svg',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIconConstraints:
                      const BoxConstraints(maxHeight: 30, maxWidth: 30),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SvgPicture.asset(
                      'assets/lock.svg',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: MyColor.subTextColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                ),
                obscureText: !_isPasswordVisible,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => login(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColor.primaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: MyColor.textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
