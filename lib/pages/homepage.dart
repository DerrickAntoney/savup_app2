import 'package:flutter/material.dart';
import 'package:savup_app2/widgets/drawercolumnlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          ' Hello Jenah,',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 25.0,
            ),
          ),
        ],
      ),
      drawer: const SafeArea(
        child: DrawerColumnList(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: double.infinity,
                  //width: 380.0,
                  decoration: const BoxDecoration(
                    color: Colors.white70,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: const Stack(
                    children: <Widget>[
                      CircleAvatar(
                        foregroundImage: AssetImage('assets/images/SavUp-128.png'),
                        backgroundColor: Colors.white,
                        radius: 25.0,
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
