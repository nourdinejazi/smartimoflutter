import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 40.0),
            const Header(title: "Tap'nPay"),
            const SizedBox(height: 40.0),
            Image.asset(
              'assets/img.png',
              width: 150.0,
              height: 150.0,
            ),
            const SizedBox(height: 40.0),
            const Text(
              'Enter your password',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Sora',
                color: Color(0xFF191919),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20.0),
            const PasswordInput(),
            const SizedBox(height: 10.0),
            const ForgotPasswordLink(),
            const Spacer(),
            const LoginButton(),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String title;

  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Image.network(
                  'https://dashboard.codeparrot.ai/api/assets/Z08_nnFEV176CUs1',
                  width: 20.0,
                  height: 20.0,
                ),
                const SizedBox(width: 2.0),
                const Text(
                  'Back',
                  style: TextStyle(
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                    color: Color(0xFF1D62CA),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Password',
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Sora',
            color: Color(0xFF191919),
            height: 1.5,
          ),
        ),
        const SizedBox(height: 4.0),
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(
              color: const Color(0xFFE1E3ED),
              width: 1.0,
            ),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  obscureText: _obscureText,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Sora',
                      color: Color(0xFFBAC2C7),
                      height: 1.5,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  size: 20.0,
                ),
                onPressed: _toggleVisibility,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ForgotPasswordLink extends StatelessWidget {
  const ForgotPasswordLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          // Handle forgot password tap
        },
        child: const Text(
          'Forgot password?',
          style: TextStyle(
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
            height: 1.5, // Line height 150%
            color: Color(0xFF1D62CA),
            decoration: TextDecoration.underline,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 304.0, // Width from Figma
      height: 45.0, // Height from Figma
      padding: const EdgeInsets.all(12.0), // Padding from Figma
      decoration: BoxDecoration(
        color: const Color(0xFF5732BF), // Background color from Figma
        borderRadius: BorderRadius.circular(4.0), // Radius from Figma
      ),
      child: const Center(
        child: Text(
          'Login',
          style: TextStyle(
            fontFamily: 'Sora', // Font from Figma
            fontWeight: FontWeight.w600, // Weight from Figma
            fontSize: 14.0, // Size from Figma
            color: Color(0xFFFFFFFF), // Color from Figma
            height: 1.5, // Line height from Figma
          ),
          textAlign: TextAlign.center, // Text alignment from Figma
        ),
      ),
    );
  }
}
