import 'package:flutter/material.dart';

import '../widgets/app_styledtext.dart';

class BundleOne extends StatelessWidget {
  const BundleOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/portfolio_one.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              child: IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            Positioned(
              top: 300,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: AppLargeText(color: Colors.black, text: 'Small Businesses', size: 28),
                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
