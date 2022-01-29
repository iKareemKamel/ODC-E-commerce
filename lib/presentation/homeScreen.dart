import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ecommerce/Shared/colors.dart';
import 'package:ecommerce/presentation/productScreen.dart';
import 'package:flutter/material.dart';

import 'Cart/cartScreen.dart';
import 'Categories/categoriesScreen.dart';
import 'menuScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = <Widget>[
    const ProductScreen(),
    CategoriesScreen(),
    cartScreen(),
    MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      currentIndex = index;
      setState(() {
        index = currentIndex;
      });
    }

    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        onItemSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(
              Icons.home,
              color: mainColor,
            ),
            title: Text("Home",style: TextStyle(color: Colors.deepOrange),),
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.local_mall_rounded,
              color: mainColor,
            ),
            title: Text("Categories",style: TextStyle(color: Colors.deepOrange)),
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.shopping_cart_rounded,
              color: mainColor,
            ),
            title: Text("Cart",style: TextStyle(color: Colors.deepOrange)),
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.menu,
              color: mainColor,
            ),
            title: Text("Menu",style: TextStyle(color: Colors.deepOrange)),
          ),
        ],
        selectedIndex: currentIndex,
      ),
    );
  }

  // BottomNavigationBar(
  // showUnselectedLabels: false,
  // showSelectedLabels: false,
  // selectedItemColor: mainColor,
  // unselectedItemColor: Colors.grey,
  // currentIndex: currentIndex,
  // onTap: _onItemTapped,
  // items: const [
  // BottomNavigationBarItem(
  // icon: Icon(Icons.home),
  // label: "Home",
  // ),
  // BottomNavigationBarItem(
  // icon: Icon(Icons.local_mall_rounded),
  // label: "Categories",
  // ),
  // BottomNavigationBarItem(
  // icon: Icon(Icons.shopping_cart_rounded),
  // label: "Cart",
  // ),
  // BottomNavigationBarItem(
  // icon: Icon(Icons.menu),
  // label: "Menu",
  // ),
  // ],
  // )
}
