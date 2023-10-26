import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class_20/constant/appcolor.dart';
import 'package:flutter_class_20/views/widgets/bottom_nav_bar/bottom_nav_barhome.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}



class _OnboardingScreenState extends State<OnboardingScreen> {
  int _current = 0;
  final List textList = [1, 2, 3];
  final CarouselController _controller = CarouselController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueButtonColor,
      body: Padding(
        padding: EdgeInsets.only(left: 45,right: 45),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 450,
                  child: CarouselSlider(
                    items: const [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "\nYour holiday shopping \ndelivered to Screen \none\n",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            ),
                          
                          AutoSizeText(
                            "There's something for everyone \nto enjoy with Sweet Shop \nFavourites Screen 1\n\n",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "\nYour holiday shopping \ndelivered to Screen \none\n",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            ),
                          
                          AutoSizeText(
                            "There's something for everyone \nto enjoy with Sweet Shop \nFavourites Screen 2\n\n",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "\nYour holiday shopping \ndelivered to Screen \none\n",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            ),
                          
                          AutoSizeText(
                            "There's something for everyone \nto enjoy with Sweet Shop \nFavourites Screen 3\n\n",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                    carouselController: _controller,
                    options: CarouselOptions(
                      // Show the Context into the "large" when Sliding.
                      enlargeCenterPage: true,
                      aspectRatio: 1,
                      initialPage: 0,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                            print("Value = $_current");
                          });
                        },
                    ),
                    ),
                ),
                Positioned(
                  left: 0,
                  top: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: textList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: (_current == entry.key) ? 50 : 30,
                          height: 5,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: (_current == entry.key)
                                  ? Colors.white
                                  : Colors.grey),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Image.asset('assets/images/Icon.png'),
            const Spacer(),
            GestureDetector(
              onTap: () {
                if (_current == 0) {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 150),
                      curve: Curves.linear
                      );
                }
                if (_current == 1) {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 150),
                      curve: Curves.linear
                      );
                }
                if (_current == 2) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      )
                      );
                }
                setState(() {});
              },
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.only(left: 60, right: 60),
                  child: Row(
                    children: [
                      Text('Get Started',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Icon(Icons.arrow_forward_sharp),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ), 
        ),
    );
  }
}