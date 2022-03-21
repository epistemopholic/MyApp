import 'package:flutter/material.dart';

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Color(0xFF007AFF),
            ),
            Container(
              padding: EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * 0.80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/imgs/logo.png",
                    height: 220,
                    width: 300,
                  ),
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      isDense: true,
                      //contentPadding: EdgeInsets.all(10),
                      labelStyle: TextStyle(
                        color: Color(0xFF007AFF),
                        fontWeight: FontWeight.w400,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF007AFF),
                        ),
                      ),
                      label: Text("Email Address"),
                      border: OutlineInputBorder(),
                      hintText: "abc@xyz.com",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xFF007AFF),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      isDense: true,
                      labelStyle: TextStyle(
                        color: Color(0xFF007AFF),
                        fontWeight: FontWeight.w400,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF007AFF),
                        ),
                      ),
                      label: Text("Password"),
                      border: OutlineInputBorder(),
                      hintText: "******",
                      prefixIcon: Icon(
                        Icons.security,
                        color: Color(0xFF007AFF),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Text(
                      //   "Forgot Your Password?",
                      //   style: TextStyle(
                      //     color: Colors.black,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.login),
                    label: Text("Sign In"),
                    style: TextButton.styleFrom(
                      elevation: 10,
                      backgroundColor: Color(0xFF007AFF),
                      fixedSize: Size(120, 10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Positioned(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.forum,
                    color: Color(0xFF007AFF),
                  ),
                  label: Text(
                    "Create an Account!",
                    style: TextStyle(
                      color: Color(0xFF007AFF),
                    ),
                  ),
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.white,
                    fixedSize: Size(200, 10),
                  ),
                ),
                bottom: MediaQuery.of(context).size.height * 0.03,
                left: MediaQuery.of(context).size.height * 0.14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
