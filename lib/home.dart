import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var buttonstate = false;
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/imgs/home.png",
            fit: BoxFit.fill,
          ),
          Text(
            "Welcome to FLINK! $name",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "A one stop platform to connect with your loved ones!",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.deepPurple,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Enter your Name",
              ),
              onChanged: (value) {
                name = value;
                setState(() {});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10.0,
                ),
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(buttonstate ? 40 : 10),
                  child: InkWell(
                    onTap: () async {
                      setState(() {
                        buttonstate = true;
                      });
                      await Future.delayed(
                        Duration(milliseconds: 400),
                      );
                      await Navigator.pushNamed(context, 'LoginScreen');
                      setState(() {
                        buttonstate = false;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      height: 40.0,
                      width: buttonstate ? 40 : 100.0,
                      alignment: Alignment.center,
                      child: buttonstate
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
