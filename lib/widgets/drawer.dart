import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurpleAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                accountName: Text("ADMIN"),
                accountEmail: Text("admin@xyz.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/imgs/avatar.png"),
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Icons.my_library_books,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Newsfeed",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.trending_up,
                      color: Colors.red,
                    ),
                  ),
                  Divider(
                    color: Colors.white10,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Icons.male_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Friends",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Divider(
                    color: Colors.white10,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
