import 'package:coffee_shop/constants/color_constants.dart';
import 'package:coffee_shop/screen/coffee_details.dart';
import 'package:coffee_shop/widgets/coffee_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    'Cappuccino',
    'Latte',
    'Americano',
    'Espresso',
    'Flat White'
  ];

  final List<String> coffeeName = const [
    'Drizzled with Caramel',
    'Cinnamon & Cocoa',
    'Bursting Blueberry',
    'Dalgona Whipped Macha',
    'Pumpkin Spice Latte',
    'Frappuccino',
  ];

  final List<String> imageUrl = const [
    'assets/images/drizzled.png',
    'assets/images/cinnamon.png',
    'assets/images/bursting.png',
    'assets/images/dalgona.png',
    'assets/images/pumpkin.jpeg',
    'assets/images/frapp.jpeg',
  ];

  final List<String> price = const [
    '70₺',
    '80₺',
    '90₺',
    '100₺',
    '100₺',
    '100₺',
  ];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorConstants.mainColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'déjà',
                        style: TextStyle(
                          height: 1,
                          color: ColorConstants.mutedColor,
                          fontFamily: 'Rosarivo',
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Brew',
                        style: TextStyle(
                          height: 1,
                          color: ColorConstants.textColor,
                          fontFamily: 'Rosarivo',
                          fontSize: 32,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstants.avatarBG,
                    radius: 32,
                    child: CircleAvatar(
                      backgroundColor: ColorConstants.mainColor,
                      radius: 30,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: ColorConstants.avatarBG,
                        backgroundImage:
                            const AssetImage('assets/images/profile.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: TextField(
                style: TextStyle(
                  color: ColorConstants.mutedColor,
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorConstants.searchBarColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: ColorConstants.mutedColor,
                    size: 30,
                  ),
                  hintText: 'Browse your favourite coffee...',
                  hintStyle: TextStyle(
                    color: ColorConstants.mutedColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: screenHeight / 1.583,
                        width: 50,
                        decoration: BoxDecoration(
                          color: ColorConstants.barColor,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Flat White",
                                style: TextStyle(
                                  color: ColorConstants.mutedColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "Espresso",
                                style: TextStyle(
                                  color: ColorConstants.mutedColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "Americano",
                                style: TextStyle(
                                  color: ColorConstants.mutedColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "Latte",
                                style: TextStyle(
                                  color: ColorConstants.mutedColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "Cappuccino",
                                style: TextStyle(
                                  color: ColorConstants.textColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: coffeeName.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 200 / 300,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CoffeeDetails(
                                  coffeeName: coffeeName[index],
                                  price: price[index],
                                  imageUrl: imageUrl[index],
                                ),
                              ),
                            );
                          },
                          child: CoffeeList(
                            coffeeName: coffeeName[index],
                            imageUrl: imageUrl[index],
                            price: price[index],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
