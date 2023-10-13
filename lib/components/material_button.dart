import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  // final double? height;
  // final double width;
  final void Function()? onPressed;
  final String label;

  const  CustomMaterialButton({
    super.key,
    required this.onPressed,
    required this.label,
    // this.height ,
    // this.width = 140 ,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.pink,
      // height: height,
      // minWidth: width,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
