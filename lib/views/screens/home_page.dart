import 'dart:math';
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

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
          "assets/images/stars.jpg",
        ),
      )),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: TweenAnimationBuilder(
                  duration: const Duration(
                    seconds: 10,
                  ),
                  curve: Curves.easeInOut,
                  tween: Tween(
                    begin: 0.0,
                    end: 2 * pi,
                  ),
                  builder: (context, val, _) {
                    return Transform.translate(
                      // offset: Offset(30, -90),
                      offset: Offset(-130, -90),
                      child: Transform.rotate(
                        angle: val,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Transform.scale(
                              scale: 1.3,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: Transform.scale(
                                  scale: 0.8,
                                  child: Transform.translate(
                                    offset: Offset(-0, -5),
                                    child: Image.network(
                                      "https://www.numerologistpro.com/images/planets/sun1000.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(0, -200),
                              child: Container(
                                height: 150,
                                width: 150,
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/jupiter.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(120, -160),
                              child: Container(
                                height: 150,
                                width: 150,
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/jupiter.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(190, -40),
                              child: Container(
                                height: 150,
                                width: 150,
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/jupiter.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(185, 90),
                              child: Container(
                                height: 150,
                                width: 150,
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/jupiter.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(90, 180),
                              child: Container(
                                height: 150,
                                width: 150,
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/jupiter.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(-40, 190),
                              child: Container(
                                height: 150,
                                width: 150,
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/jupiter.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(-155, 125),
                              child: Container(
                                height: 150,
                                width: 150,
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/jupiter.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(-190, 0),
                              child: Container(
                                height: 150,
                                width: 150,
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/jupiter.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(-140, -140),
                              child: Container(
                                height: 150,
                                width: 150,
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      "assets/images/jupiter.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: AnimatedDefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  duration: const Duration(
                    seconds: 20,
                  ),
                  child: TweenAnimationBuilder(
                    duration: const Duration(
                      seconds: 10,
                    ),
                    tween: Tween(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    builder: (context, val, _) {
                      return Align(
                        alignment: val,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: s.width,
                                child: const Text("data1"),
                              ),
                              Container(
                                width: s.width,
                                child: const Text("data2"),
                              ),
                              Container(
                                width: s.width,
                                child: const Text("data3"),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
