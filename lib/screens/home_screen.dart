import 'package:flutter/material.dart';
import 'package:ieee_week13_task1/components/icon_button.dart';
import 'package:ieee_week13_task1/components/quantity_selection.dart';
import 'package:ieee_week13_task1/components/rate_selection.dart';
import 'package:ieee_week13_task1/components/size_selection.dart';
import '../components/details_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          onPressed: () {},
          icon: Icons.arrow_back_ios,
        ),
        actions: [
          CustomIconButton(
            onPressed: () {},
            icon: Icons.favorite_outline,
          ),
          CustomIconButton(
            onPressed: () {},
            icon: Icons.shopping_bag_outlined,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const SizeSelection(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Belgium EURO',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '20/21 Away by Adisas',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RateSelection(),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: QuantitySelection(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Details',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DetailsItem(
                            label: 'Material',
                            value: 'Polyester',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DetailsItem(
                            label: 'Shopping',
                            value: 'In 5 or 6 Days',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DetailsItem(
                            label: 'Returns',
                            value: 'Within 20 Days',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.pink,
                            ),
                            child: const Column(
                              children: [
                                Icon(
                                  Icons.shopping_bag_outlined,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  '\$98',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
