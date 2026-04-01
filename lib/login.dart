import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, const Color.fromARGB(255, 36, 31, 95)],
            ),
          ),
        ),
        elevation: 20, //shadow
        title: Text(
          "Login",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 36, 31, 95),
          ),
          
        ),
      ),
      body: Container(
        // we need to put in it container to decorate the body background color
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, const Color.fromARGB(255, 36, 31, 95)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true, //yes  we are going to fill color in text box
                    fillColor: Colors.white.withOpacity(0.8),
                    label: Text("Email"),
                    hint: Text("Enter Your email"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15), //bordar radius
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),

                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    label: Text("Password"),
                    hint: Text("Enter your Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: ElevatedButton(
                    
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 5,
                      ),
                      onPressed: () {
                        print("Email button is clicked");
                      },
                      child: Text("Login"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 5,
                      ),
                      onPressed: () {
                        print("Signup button  is clicked");
                      },
                      child: Text("Sign Up"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
