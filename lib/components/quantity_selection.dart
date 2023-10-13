import 'package:flutter/material.dart';

import 'material_button.dart';

class QuantitySelection extends StatefulWidget{
  const QuantitySelection({super.key});

  @override
  State<QuantitySelection> createState() => _QuantitySelectionState();
}

class _QuantitySelectionState extends State<QuantitySelection> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF2F2F2F),
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomMaterialButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              label: '+',
            ),
          ),
           Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              '$count',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: CustomMaterialButton(
              onPressed: () {
                if(count>1){
                  setState(() {
                    count--;
                  });
                }
              },
              label: '-',
            ),
          ),
        ],
      ),
    );
  }
}