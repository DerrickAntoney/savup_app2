import 'package:flutter/material.dart';
import 'package:savup_app2/widgets/drawercolumnlist.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Transfer',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              foregroundImage: AssetImage('assets/images/SavUp-128.png'),
              backgroundColor: Colors.white,
              radius: 25.0,
            ),
          ),
        ],
      ),
      drawer: const SafeArea(
        child: DrawerColumnList(),
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
