import 'package:flutter/material.dart';

class AboutusScreen extends StatefulWidget {
  const AboutusScreen({Key? key}) : super(key: key);

  @override
  State<AboutusScreen> createState() => _AboutusScreenState();
}

class _AboutusScreenState extends State<AboutusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aboutus Screen"),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Go to different screen")),
      ),
    );
  }
}
