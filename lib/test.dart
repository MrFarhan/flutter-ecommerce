import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ecommerce",
      home: Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Column(
                    children: [
                      IconButton(
                        iconSize: 72,
                        icon: Icon(Icons.cancel),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text('Explore exciting deals around you.')
                    ],
                  ),
                  decoration: BoxDecoration(color: Colors.blue),
                ),
                ListTile(
                  title: Text("All Deals"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Categories"),
                ),
                ListTile(
                  title: Text("Wishlist"),
                ),
                ListTile(
                  title: Text("My Reviews"),
                ),
                ListTile(
                  title: Text("Settings"),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text("Ecommerce"),
          )),
    );
  }
}
