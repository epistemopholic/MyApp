import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/imgs/sign_up.png",
                  fit: BoxFit.fill,
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(labelText: "First Name"),
                        validator: (value) {
                          if (value!.isEmpty)
                            return "Enter Your First Name";
                          else
                            return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "Last Name"),
                        validator: (value) {
                          if (value!.isEmpty)
                            return "Enter Your Last Name";
                          else
                            return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: "Email"),
                        validator: (value) {
                          if (value!.isEmpty)
                            return "Enter Your Email";
                          else
                            return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty)
                            return "Enter Password";
                          else
                            return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  child: Text("Sign Up"),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.pushNamed(context, 'LoginScreen');
                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already Have an Account?"),
                    TextButton(
                      child: Text("LOGIN NOW!"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
