import 'package:flutter_application_2/objects/service_objects.dart';

class CartItem {
  String name;
  int price;
  int quantity;

  CartItem({required this.name, required this.price, this.quantity = 1});
}

List<CartItem> cartItems = []; // Список для хранения элементов корзины

void addToCart(Service service) {
  // Проверяем, есть ли уже такая услуга в корзине
  bool alreadyInCart = false;
  for (var item in cartItems) {
    if (item.name == service.name) {
      item.quantity++; // Увеличиваем количество, если услуга уже была добавлена
      alreadyInCart = true;
      break;
    }
  }

  if (!alreadyInCart) {
    // Если услуги еще нет в корзине, добавляем новую
    cartItems.add(CartItem(name: service.name, price: service.price, quantity: 1));
  }
}