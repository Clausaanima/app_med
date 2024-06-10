class Service {
  String name;
  int price;
  String duration;

  Service(this.name, this.price, this.duration);
}

List<Service> services = [
  Service('Услуга 1', 100, '1 час'),
  Service('Услуга 2', 50, '30 мин'),
  Service('Услуга 3', 80, '45 мин'),
];