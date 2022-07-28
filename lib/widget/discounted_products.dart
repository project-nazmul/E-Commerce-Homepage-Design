import 'package:ecommerece_homepage/model/discounted_product.dart';
import 'package:flutter/material.dart';

class DiscountedProducts extends StatelessWidget {
  DiscountedProducts({Key? key}) : super(key: key);
  final products = DiscountedProduct.discountedProduct;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Container(
          width: 170,
          padding: const EdgeInsets.only(
            top: 8,
          ),
          margin: const EdgeInsets.only(bottom: 40, top: 5, right: 10),
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, 10),
                    blurRadius: 10)
              ],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(55),
                  topLeft: Radius.circular(55)),
              color: Colors.deepOrangeAccent),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green),
                        child: Text(
                            DiscountedProduct.discountedProduct[index].discount,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold))),
                  )),
              Expanded(
                  flex: 1,
                  child: Text(products[index].discount,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))),
              Expanded(
                  flex: 1,
                  child: Text(DiscountedProduct.discountedProduct[index].name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))),
              Expanded(
                  flex: 3,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(55),
                          topLeft: Radius.circular(55)),
                      child: Image.asset(
                        DiscountedProduct.discountedProduct[index].img,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )))
            ],
          ),
        );
      },
    );
  }
}
