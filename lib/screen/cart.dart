import 'package:coffee_shop/constants/color_constants.dart';
import 'package:coffee_shop/widgets/coffe.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainColor,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Center(
              child: Text(
                'Cart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          const Coffee(
            imageUrl: 'assets/images/bursting.png',
            coffeeType: 'Cappuccino',
            coffeeName: 'Bursting Blueberry',
            coffePrice: '100₺',
          ),
          const Coffee(
            imageUrl: 'assets/images/cinnamon.png',
            coffeeType: 'Cappuccino',
            coffeeName: 'Cinnamon & Cocoa',
            coffePrice: '70₺',
          ),
          const Coffee(
            imageUrl: 'assets/images/pumpkin.jpeg',
            coffeeType: 'Coffe Latte',
            coffeeName: 'Pumpkin Spice Latte',
            coffePrice: '100₺',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2.0, color: ColorConstants.secondaryColor),
                  bottom: BorderSide(
                      width: 2.0, color: ColorConstants.secondaryColor),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        color: ColorConstants.barColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Apply Coupon Code',
                            style: TextStyle(
                              color: ColorConstants.buttonColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: ColorConstants.buttonColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 30.0,
                      right: 30.0,
                      top: 20,
                      bottom: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Charges',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '20₺',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 30.0,
                      right: 30.0,
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Taxes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '100₺',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Grand Total',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '390₺',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              width: 400,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Köşe yarıçapını ayarla
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'PAY NOW',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.mainColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
