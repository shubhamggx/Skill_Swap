import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN / REGISTRATION"),
        backgroundColor: Colors.lightBlue,
      ),
      
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text(" EMAIL"),
                  hint: Text("Enter your email id....."),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("PASSWORD"),
                  hint: Text("Enter your password"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      print("BUTTON LOGIN CLICKED");
                    },
                    child: Text("LOGIN"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      print("BUTTON SIGNUP CLICKED");
                    },
                    child: Text("SIGNUP"),
                  ),
                ),
              ],
            ),
            
            

          ],
        ),
      ),
    );
  }
}
