import 'package:flutter/material.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({super.key});

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(49, 210, 177, 1),
        centerTitle: true,
        title: const Text(
          'My goals',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text("Title"),
                Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  padding: const EdgeInsets.only(left: 14),
                  height: 52,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1
                      ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: const Row(
                    children: <Widget>[
                      /*Expanded(child: 
                      TextFormField(
                        autofocus: false,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          hintText: "Enter your goal title",
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width:0.0
                            )
                          ),

                        ),
                      ),)*/
                    ],
                  ),
                ),
                const Text("Description"),
                Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  padding: const EdgeInsets.only(left: 14),
                  height: 52,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1
                      ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
                const Text("Amount"),
                Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  padding: const EdgeInsets.only(left: 14),
                  height: 52,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 1
                      ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}