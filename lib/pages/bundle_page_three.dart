import 'package:flutter/material.dart';

class BundleThree extends StatelessWidget {
  const BundleThree({super.key});

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
                          image: AssetImage('assets/images/portfolio_three.png'),
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
                            topRight: Radius.circular(30))),
                  ))
            ],
          )),
    );;
  }
}