class DiscountedProduct{
  String name;
  String discount;
  String price;
  String img;

  DiscountedProduct({required this.name, required this.discount, required this.price, required this.img});

  static List discountedProduct = [
    DiscountedProduct(name: 'iPhone 13 Pro', discount: '25%', price: '80000 Taka', img: 'images/product/iphone13pro.jpg'),
    DiscountedProduct(name: 'General AXGT', discount: '35%', price: '35000 Taka', img: 'images/product/generalaxgt.jpg'),
    DiscountedProduct(name: 'NVIDIA TV', discount: '15%', price: '25000 Taka', img: 'images/product/nvdiatv.jpg'),
    DiscountedProduct(name: 'Huawei Y6 Pro', discount: '30%', price: '15000 Taka', img: 'images/product/huaweiy6pro.jpg'),
    DiscountedProduct(name: 'Dell N4050 i5', discount: '50%', price: '16000 Taka', img: 'images/product/delln4050i5.jpg'),

  ];
}