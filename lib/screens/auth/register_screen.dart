import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscurePassword = true;
  bool _isChecked = false;

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
              'Create an Account',
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
            // Textfield untuk Username
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Enter your username',
                labelStyle: TextStyle(color: Colors.white),
                hintStyle: TextStyle(
                  color: Color(0xFFE4F1F8),
                  fontSize: 17.28,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Textfield untuk Email
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                labelStyle: TextStyle(color: Colors.white),
                hintStyle: TextStyle(color: Color(0xFFE4F1F8)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Textfield untuk Password
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                labelStyle: TextStyle(color: Colors.white),
                hintStyle: TextStyle(color: Colors.white70),
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
            SizedBox(height: 24),
            // Checkbox untuk menyetujui syarat dan ketentuan aplikasi
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  checkColor: Colors.white, // Warna centang pada checkbox
                  activeColor: Color(0xFF543EE9), // Warna checkbox ketika aktif
                ),
                Flexible(
                  child: Text.rich(
                    TextSpan(
                      text: 'I agree to the ',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                      children: [
                        TextSpan(
                          text: 'Terms & Conditions',
                          style: TextStyle(
                            color: Color(0xFF543EE9),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            // Tombol untuk Registrasi
            ElevatedButton(
              onPressed: () {
                // Add registration logic here
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF543EE9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                'Register',
                style: TextStyle(color: Color(0xFFE4F1F8)),
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Or login with',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 12),
            // Tombol untuk Login dengan Google
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
                style: TextStyle(color: Color(0xFF0C042E)),
              ),
            ),
            SizedBox(height: 24),
            // TextButton untuk kembali ke halaman Login
            TextButton(
              onPressed: () {
                // Add navigation to login screen
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(primary: Colors.white),
              child: Text('Already have an account? Login here'),
            ),
          ],
        ),
      ),
    );
  }
}
