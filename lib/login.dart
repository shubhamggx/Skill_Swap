import 'package:flutter/material.dart';
import 'package:skill_swap/sign_up.dart';
import 'package:skill_swap/Home.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          // flexible space is the property of appbar which is used to place custom widget like icon decoration etc//
          decoration: BoxDecoration(color: Colors.black),
        ),
        elevation: 20, //shadow
        title: Text(
          "LOGIN",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        // we need to put in it container to decorate the body background color
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fuente_original.jpeg"),
            fit: BoxFit.cover, // fit all the screen
          ),
          // gradient: LinearGradient(
          //   colors: [Colors.white, const Color.fromARGB(255, 36, 31, 95)],
          // ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true, //yes  we are going to fill color in text box
                    fillColor: Colors.transparent,
                    label: Text(
                      "Email",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    hint: Text(
                      "Enter Your email",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15), //bordar radius
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),

                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.transparent,
                    label: Text(
                      "Password",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    hint: Text(
                      "Enter your Password",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                        print("Login  button  clicked");
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
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
                        Navigator.push(
                          context, //current widget ki location / identity
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ), // sign up  me  push krdo
                        );
                        print("Signup button clicked");
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
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
