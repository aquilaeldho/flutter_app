import 'package:flutter/material.dart';


class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter Your Email',
              style: TextStyle(fontSize:  30),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                icon: Icon(Icons.mail),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height:  20),
            ElevatedButton(
              onPressed: () {
                // Implement the logic to send the password reset email here
              },
              child: const Text('Send Email'),
            ),
            const SizedBox(height:  10),
            TextButton(
              onPressed: () {
                // Navigate back to the sign-in page
                Navigator.pop(context);
              },
              child: const Text('Back to Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
