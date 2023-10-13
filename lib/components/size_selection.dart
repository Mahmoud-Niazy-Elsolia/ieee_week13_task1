import 'package:flutter/material.dart';

class SizeSelection extends StatefulWidget {
  const SizeSelection({super.key});

  @override
  State<SizeSelection> createState() => _SizeSelectionState();
}

class _SizeSelectionState extends State<SizeSelection> {
  int selectedIndex = 0;
  int currentImage =0;
  List<String> sizes = [
    'S',
    'M',
    'L',
    'XL',
    '2XL',
  ];
  List<String> images = [
    'assets/images/38087.jpg',
    'assets/images/ieee_image_task.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .72,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (imageIndex){
                    setState(() {
                      currentImage = imageIndex;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * .7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            images[index],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: images.length,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    // left: MediaQuery.of(context).size.width*.65/2,
                    left: 20,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    height : 10,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return  Padding(
                          padding: const EdgeInsets.only(
                            right: 5
                          ),
                          child: Container(
                            height: 10,
                            width: 25,
                            decoration: BoxDecoration(
                                color: currentImage==index ? Colors.pink : const Color(0xFF2F2F2F),
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                        );
                      },
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: index == selectedIndex
                            ? Colors.pink
                            : const Color(0xFF2F2F2F),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          sizes[index],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 15,
                );
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
