
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Login', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            // Email
            TextFormField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                labelText: 'Email'
              ),
            ),
            // Password
            TextFormField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                  labelText: 'Password'
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
                onPressed: (){},
                child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),)
            ),

          ],
        ),
      )
    );
  }
}
