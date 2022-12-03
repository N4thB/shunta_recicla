import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  MenuCard({this.cardChild,required this.colour, this.OnPress});
  final Color colour;
  final Widget? cardChild;
  final VoidCallback? OnPress;




  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
