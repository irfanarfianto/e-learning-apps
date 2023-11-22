import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password',
            style: TextStyle(
              color: Color(0xFFE4F1F8),
              fontSize: 17.28,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w500,
              height: 0,
            )),
        backgroundColor: Color(0xFF0C042E),
        iconTheme: IconThemeData(color: Color(0xFFE4F1F8)),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(color: Color(0xFF0C042E)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Forgot Your Password?',
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
              'Please enter your email address. You will receive a link to create a new password via email.',
              style: TextStyle(
                color: Color(0xFFE4F1F8),
                fontSize: 14.91,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w300,
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
                  borderRadius: BorderRadius.circular(17.54),
                ),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Add logic for sending reset password email
              },
              style: ElevatedButton.styleFrom(
                //color button
                primary: Color(0xFF543EE9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17.54),
                ),
                minimumSize: Size(double.infinity, 50), // Tinggi tombol
              ),
              child: Text(
                'Send Reset Link',
                style: TextStyle(color: Color(0xFFE4F1F8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
