import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(49, 210, 177, 1),
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        actions: const <Widget>[
          Padding(padding: EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 25.0,
          ),
      ),
        ],
      
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[],
            ),
          ),
        ),
      ),
    );
  }
}