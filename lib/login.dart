import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/imgs/login.png",
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 40.0),
                child: Column(
                  children: [
                    Text(
                      "Login into Your Account!",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Enter Your Email Address",
                              ),
                              validator: (value) {
                                if (value!.isEmpty)
                                  return "Enter Your Email Address";
                                else
                                  return null;
                              },
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Enter Your Password",
                              ),
                              validator: (value) {
                                if (value!.isEmpty)
                                  return "Please enter your password";
                                else
                                  return null;
                              },
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      child: Text("Sign In"),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.pushNamed(context, 'DashboardScreen');
                        }
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Forgot Password? ",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          "Click Here!",
                          style: TextStyle(
                            color: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      child: Text("REGISTER NOW!"),
                      onPressed: () {
                        Navigator.pushNamed(context, "SignUpScreen");
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
