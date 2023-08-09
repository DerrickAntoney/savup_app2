import 'package:flutter/material.dart';
import 'package:savup_app2/widgets/drawercolumnlist.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'My Summary',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        actions: const <Widget>[
          Padding(padding: EdgeInsets.all(10.0),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[],
            ),
          ),
        ),
      ),
    );
  }
}

