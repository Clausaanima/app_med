import 'package:flutter/material.dart';
import 'package:flutter_application_2/objects/cart_item_object.dart';
import 'package:flutter_application_2/screen/first_page.dart';
import 'package:flutter_application_2/screen/second_page.dart';
import 'package:flutter_application_2/screen/third_page.dart';

class MyNavigationPage extends StatefulWidget {
  @override
  _MyNavigationPageState createState() => _MyNavigationPageState();
}

class _MyNavigationPageState extends State<MyNavigationPage> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color.fromARGB(255, 28, 42, 241),
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return CatalogScreen();
      case 1:
        return CartScreen(cartItems: cartItems);
      case 2:
        return ThirdScreen();
      default:
        return Container();
    }
  }
}