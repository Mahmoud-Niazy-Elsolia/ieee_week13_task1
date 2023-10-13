import 'package:flutter/material.dart';

class RateSelection extends StatefulWidget {
  const RateSelection({super.key});

  @override
  State<RateSelection> createState() => _RateSelectionState();
}

class _RateSelectionState extends State<RateSelection> {
  int currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width*.3,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
              onTap: (){
                setState(() {
                  currentIndex = index;
                });
              },
              child: Icon(
                Icons.star,
                color: currentIndex>= index ? Colors.red : Colors.grey,
              ),
            ),
            itemCount: 5,
          ),
        ),
        // Rate(
        //   iconSize: 25,
        //   color: Colors.pink,
        //   allowHalf: true,
        //   initialValue: rate,
        //   readOnly: false,
        //   onChange: (value) {
        //     setState(() {
        //       if(value>=.5&&value<=5){
        //         rate = value;
        //       }
        //     });
        //   },
        // ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '${currentIndex+1}.0',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
