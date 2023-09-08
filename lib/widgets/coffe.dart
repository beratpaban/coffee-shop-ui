import 'package:coffee_shop/constants/color_constants.dart';
import 'package:flutter/material.dart';

class Coffee extends StatefulWidget {
  final String imageUrl;
  final String coffeeType;
  final String coffeeName;
  final String coffePrice;

  const Coffee({
    super.key,
    required this.imageUrl,
    required this.coffeeType,
    required this.coffeeName,
    required this.coffePrice,
  });

  @override
  State<Coffee> createState() => _CoffeState();
}

class _CoffeState extends State<Coffee> {
  int count = 10;

  void decrease() {
    setState(() {
      count--;
    });
  }

  void increase() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        height: 100,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorConstants.secondaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: AssetImage(widget.imageUrl),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.coffeeType,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  widget.coffeeName,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  widget.coffePrice,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OPEN SANS',
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: 120,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(46, 158, 158, 158),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.buttonColor,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: decrease,
                        icon: Icon(
                          Icons.remove_rounded,
                          color: ColorConstants.mainColor,
                          size: 30,
                        ),
                      ),
                    ),
                    Text(
                      '$count',
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.buttonColor,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: increase,
                        icon: Icon(
                          Icons.add_rounded,
                          color: ColorConstants.mainColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
