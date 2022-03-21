import 'package:flutter/material.dart';
import 'package:myapp/models/shop.dart';
import 'package:myapp/widgets/item_widget.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 3,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Color(0xFF007AFF),
        ),
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 180, top: 12),
            child: Icon(
              Icons.shopping_bag,
              color: Color(0xFF007AFF),
              size: 30,
            ),
          ),
        ),
        title: Text(
          "Catalog App",
          style: TextStyle(
            color: Color(0xFF007AFF),
            fontSize: 26,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Color(0xFF007AFF),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: ShoppingScreen().item.length,
        itemBuilder: (context, index) {
          return ItemWidget();
        },
      ),
    );
  }
}
