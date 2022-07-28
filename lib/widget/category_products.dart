import 'package:ecommerece_homepage/model/product_category.dart';
import 'package:flutter/material.dart';

class CategoryProducts extends StatelessWidget {
  CategoryProducts({Key? key}) : super(key: key);
  final List productCategory = ProductCategory.productCategory;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: productCategory.length,
      itemBuilder: (context, index) {
        return Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.bottomCenter,
            width: 150,
            margin:
            const EdgeInsets.only(right: 10, top: 5, bottom: 30),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(10, 10),
                    blurRadius: 10)
              ],
              color: Colors.orange,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    productCategory[index].name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Image.asset(
                      productCategory[index].img,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ))
              ],
            ));
      },
    );
  }
}

