import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animation",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Container(
                height: s.height * 0.8,
                width: s.width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SizedBox(
                  width: s.width,
                  child: TweenAnimationBuilder(
                    duration: const Duration(
                      seconds: 5,
                    ),
                    builder: (context, val, _) {
                      return Align(
                        alignment: val,
                        child: TweenAnimationBuilder(
                          duration: const Duration(
                            seconds: 5,
                          ),
                          tween: Tween(
                            begin: 0.0,
                            end: 2 * pi,
                          ),
                          curve: Curves.bounceOut,
                          builder: (context, val, _) {
                            return Transform.rotate(
                              angle: val,
                              child: CarouselSlider(
                                items: [
                                  Image.asset(
                                    "assets/images/jupiter.png",
                                    height: 150,
                                  ),
                                  Image.asset(
                                    "assets/images/jupiter.png",
                                    height: 150,
                                  ),
                                ],
                                options: CarouselOptions(
                                  autoPlay: true,
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                    tween: Tween(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
