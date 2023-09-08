import 'package:coffee_shop/constants/color_constants.dart';
import 'package:flutter/material.dart';

class ChooseMilk extends StatefulWidget {
  final String milkType;
  const ChooseMilk({super.key, required this.milkType});

  @override
  State<ChooseMilk> createState() => _ChooseMilkState();
}

class _ChooseMilkState extends State<ChooseMilk> {
  bool isSelected = false;
  void changeColor() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: changeColor,
            child: Container(
              height: 40,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorConstants.buttonColor,
                ),
                color: isSelected
                    ? ColorConstants.mainColor
                    : ColorConstants.buttonColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  widget.milkType,
                  style: TextStyle(
                    color: isSelected
                        ? ColorConstants.buttonColor
                        : ColorConstants.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
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
