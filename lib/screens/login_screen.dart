import 'package:e_learning_apps/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    double borderRadius = 17.54; // Nilai radius yang seragam

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(color: Color(0xFF0C042E)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome Back!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFE4F1F8),
                fontSize: 24.88,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'A handful of model sentence structures',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFE4F1F8),
                fontSize: 14.91,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w300,
                height: 0.12,
                letterSpacing: -0.15,
              ),
            ),
            SizedBox(height: 24),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                hintStyle: TextStyle(
                  color: Color(0xFFE4F1F8),
                  fontSize: 17.28,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
                // prefixIcon: Icon(
                //   Icons.email,
                //   color: Colors.white,
                // ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                hintStyle: TextStyle(
                  color: Colors.white70,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              obscureText: _obscurePassword,
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // Add logic for forgot password
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14.03,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.underline,
                      height: 0.12,
                      letterSpacing: -0.14,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                // Add login logic here
              },
              style: ElevatedButton.styleFrom(
                //color button
                primary: Color(0xFF543EE9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                minimumSize: Size(double.infinity, 50), // Tinggi tombol
              ),
              child: Text(
                'Login',
                style: TextStyle(color: Color(0xFFE4F1F8)),
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Or login with',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () {
                // Add Google login logic here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              icon: Image.asset('assets/G.png', height: 24, width: 24),
              label: Text(
                'Sign in with Google',
                style: TextStyle(
                  color: Color(0xFF0C042E),
                ),
              ),
            ),
            SizedBox(height: 24),
            TextButton(
              onPressed: () {
                // Add navigation to registration screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text('Don\'t have an account? Register here'),
            ),
          ],
        ),
      ),
    );
  }
}
