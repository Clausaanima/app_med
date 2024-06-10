import 'package:flutter/material.dart';
import 'package:flutter_application_2/component/cart_item.dart';
import 'package:flutter_application_2/objects/cart_item_object.dart';


// Общая сумма всех услуг в корзине
double calculateTotalPrice(List<CartItem> cartItems) {
  double total = 0;
  for (var cartItem in cartItems) {
    total += cartItem.price * cartItem.quantity;
  }
  return total;
}

class CartScreen extends StatelessWidget {
  final List<CartItem> cartItems; // Список услуг в корзине

  CartScreen({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Корзина'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemWidget(
                  name: cartItems[index].name,
                  price: cartItems[index].price,
                  quantity: cartItems[index].quantity,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Общая сумма: ${calculateTotalPrice(cartItems)} руб.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Добавьте здесь навигацию к экрану оформления заказа
                  },
                  child: Text('Перейти к оформлению заказа'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}