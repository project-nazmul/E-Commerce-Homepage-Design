class ProductCategory{
  String name;
  String img;

  ProductCategory({required this.name, required this.img});

  static List productCategory = [
    ProductCategory(name: 'Desktop', img: 'images/category/desktop.jpg'),
    ProductCategory(name: 'Laptop', img: 'images/category/laptop.jpg'),
    ProductCategory(name: 'Mobile', img: 'images/category/mobile.jpg'),
    ProductCategory(name: 'AC', img: 'images/category/ac.jpg'),
    ProductCategory(name: 'Television', img: 'images/category/television.jpg'),
  ];
}