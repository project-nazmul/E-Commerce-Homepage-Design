import 'package:flutter/material.dart';

class TopCover extends StatelessWidget {
  const TopCover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                offset: Offset(10, 10),
                blurRadius: 10)
          ],
          color: Colors.deepOrange,
          image: DecorationImage(
              image: AssetImage('images/cover.jpg'),
              fit: BoxFit.cover)),
    );
  }
}
