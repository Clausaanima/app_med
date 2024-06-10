import 'package:flutter/material.dart';
import 'package:flutter_application_2/objects/cart_item_object.dart';
import 'package:flutter_application_2/objects/service_objects.dart';


class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Каталог услуг'),
      ),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          Service service = services[index];
          return Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12), // Закругляем углы
              border: Border.all(color: Colors.grey), // Добавляем рамку
            ),
            child: ListTile(
              title: Text(
                service.name,
                style: TextStyle(fontSize: 16),
              ),
            subtitle: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${service.duration}',
                        style: TextStyle( color: Colors.grey),
                      ),
                      Text('${service.price}\u20BD'),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Добавить',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            onTap: () {
              addToCart(service);
            },
            )
          );
        },
      ),
    );
  }
}