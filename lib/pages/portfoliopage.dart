import 'package:flutter/material.dart';
import 'package:savup_app2/pages/bundle_page_one.dart';
import 'package:savup_app2/pages/bundle_page_two.dart';
import 'package:savup_app2/pages/bundle_page_three.dart';
import 'package:savup_app2/pages/bundle_page_four.dart';
import 'package:savup_app2/widgets/drawercolumnlist.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  List images = [
    'portfolio_one.png',
    'portfolio_two.png',
    'portfolio_three.png',
    'portfolio_four.png',
  ];
  List bundles = [
    'Small Businesses',
    'Bundle 2',
    'Bundle 3',
    'Bundle 4',
  ];
  List bundlePages = [
    const BundleOne(),
    const BundleTwo(),
    const BundleThree(),
    const BundleFour()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Portfolio',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                          image: DecorationImage(
                              image: AssetImage(
                                // ignore: prefer_interpolation_to_compose_strings
                                "assets/images/" + images[index],
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    const SizedBox(width: 75),
                    Column(
                      children: [
                        Text(bundles[index]),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bundlePages[index],
                              ),
                            );
                          },
                          child: const Text(
                            'View',
                            style: TextStyle(
                              backgroundColor: Color.fromRGBO(49, 210, 177, 1),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
