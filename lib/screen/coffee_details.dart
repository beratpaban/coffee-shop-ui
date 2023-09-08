import 'package:coffee_shop/constants/color_constants.dart';
import 'package:coffee_shop/widgets/choose_milk.dart';
import 'package:flutter/material.dart';

class CoffeeDetails extends StatefulWidget {
  final String coffeeName;
  final String price;
  final String imageUrl;
  const CoffeeDetails(
      {super.key,
      required this.coffeeName,
      required this.price,
      required this.imageUrl});

  @override
  State<CoffeeDetails> createState() => _CoffeeDetailsState();
}

class _CoffeeDetailsState extends State<CoffeeDetails> {
  @override
  Widget build(BuildContext context) {
    final List<String> milkType = [
      'Oat Milk',
      'Soy Milk',
      'Almond Milk',
      'Skimmed Milk',
      'Semi-Skimmed ',
      'Lactose-Free Milk',
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.mainColor,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(55.0),
                    child: const Image(
                      image: AssetImage('assets/images/cappuccino.jpeg'),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(146, 108, 108, 108),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Cappuccino',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite_rounded,
                    color: ColorConstants.deleteColor,
                    size: 35,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  widget.coffeeName,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'A single espresso shot poured into hot foamy milk, with the surface topped with mildly sweetened cocoa powder and drizzled with scrumptious caramel syrup ... Read More',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Open Sans'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Choice of Milk',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  itemCount: milkType.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ChooseMilk(
                      milkType: milkType[index],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Price',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          widget.price,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Open Sans'),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstants.buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Köşe yarıçapını ayarla
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'BUY NOW',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'OPEN SANS',
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.mainColor),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
