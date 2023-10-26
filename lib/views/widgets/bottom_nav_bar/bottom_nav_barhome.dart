import 'package:flutter/material.dart';
import 'package:flutter_class_20/views/grocery_home/groceryhome.dart';
import 'package:flutter_class_20/views/widgets/custom_icons_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selected = 0;

  final screens = [
    const GroceryHome(),
    const Center(child: Text('To be Process 2')),
    const Center(child: Text('To be Process 3')),
    const Center(child: Text('To be Process 4')),
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selected],
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 7,
              spreadRadius: 3,
              offset: Offset.fromDirection(2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomIcons(
              onPressed: (){
                setState(() {
                _selected = 0;
                });
              },
              icon: Icons.home, 
              iconName: "Home", 
              selected: _selected == 0,
              ),
            CustomIcons(
              onPressed: (){
                setState(() {
                _selected = 1;
                });
              },
              icon: Icons.category, 
              iconName: "Category", 
              selected: _selected == 1,
              ),
            CustomIcons(
              onPressed: (){
                setState(() {
                _selected = 2;
                });
              },
              icon: Icons.favorite, 
              iconName: "Favorite", 
              selected: _selected == 2,
              ),
            CustomIcons(
              onPressed: (){
                setState(() {
                _selected = 3;
                });
              },
              icon: Icons.more_vert, 
              iconName: "More", 
              selected: _selected == 3,
              ),
          ],
        ),
      ),
      
    );
  }
}