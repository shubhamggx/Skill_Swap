import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("LOgin "),
            ElevatedButton(
              onPressed: () {
                print("button clicked");
              },
              child: Text("Login"),
            ),
          ],
        ),
        
      ),
    );
  }
}
