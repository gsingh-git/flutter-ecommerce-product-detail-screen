class Product {
  final int id;
  final String name;
  final String picture;
  final String description, shortDescription;
  final double oldPrice;
  final double price;

  Product(
      {this.id,
      this.name,
      this.description,
      this.shortDescription,
      this.picture,
      this.oldPrice,
      this.price});
}
