import 'package:flutter/material.dart';

class SplashScreen3 extends StatefulWidget {
  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: SafeArea(
          child: Scaffold(
            body: Stack(
              children: [
                Expanded(
                  child: Image(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    image: AssetImage("assets/imgs/background.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: AlignmentDirectional.topStart,
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "Welcome!",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "   Hello There",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white70,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TabBar(
                            unselectedLabelStyle:
                            TextStyle(color: Colors.white),
                            labelPadding: EdgeInsets.all(6),
                            indicatorColor: Colors.white,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.white,
                            indicator: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            tabs: [
                              Text(
                                "Login",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "Sign Up",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      //height: 400,
                      child: TabBarView(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.black.withOpacity(0.1),
                                    ),
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: "Email Address",
                                      prefixIcon: Icon(Icons.email,
                                          color: Colors.white70),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.black.withOpacity(0.1),
                                    ),
                                  ),
                                  child: TextFormField(
                                    obscureText: true,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: "********",
                                      prefixIcon: Icon(Icons.security_rounded,
                                          color: Colors.white70),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  style: TextButton.styleFrom(
                                    fixedSize: Size(140, 30),
                                    backgroundColor: Colors.white,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.white38,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.black.withOpacity(0.1),
                                    ),
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: "First Name",
                                      prefixIcon: Icon(Icons.text_snippet,
                                          color: Colors.white70),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.black.withOpacity(0.1),
                                    ),
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: "Last Name",
                                      prefixIcon: Icon(Icons.text_snippet,
                                          color: Colors.white70),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.black.withOpacity(0.1),
                                    ),
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: "Email Address",
                                      prefixIcon: Icon(Icons.email,
                                          color: Colors.white70),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.black.withOpacity(0.1),
                                    ),
                                  ),
                                  child: TextFormField(
                                    obscureText: true,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: "********",
                                      prefixIcon: Icon(Icons.security_rounded,
                                          color: Colors.white70),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  style: TextButton.styleFrom(
                                    fixedSize: Size(140, 30),
                                    backgroundColor: Colors.white,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.white38,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
