import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

List<Map<String, dynamic>> shopItem = [
  {'image': 'assets/unsplash_NoVnXXmDNi0 (1).png'},
  {'image': 'assets/unsplash_NoVnXXmDNi0 (1).png'},
  {'image': 'assets/unsplash_NoVnXXmDNi0 (1).png'},
  {'image': 'assets/unsplash_NoVnXXmDNi0 (1).png'},
  {'image': 'assets/unsplash_NoVnXXmDNi0 (1).png'},
  {'image': 'assets/unsplash_NoVnXXmDNi0 (1).png'},
];

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  PageController shopController = PageController();
  int itemPage = 0;
  onChanged(int index) {
    setState(() {
      itemPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          height: 213,
          width: 343,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: shopController,
            onPageChanged: onChanged,
            itemCount: shopItem.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(shopItem[index]['image']),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(shopItem.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                height: 8,
                width: (index == itemPage) ? 15 : 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: (index == itemPage) ? Colors.black : Colors.grey),
              );
            }),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 280, top: 18),
          child: Text(
            'Size:7UK',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 210),
          child: Text('Nike Sneakers',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 70),
          child: Text(
            'Vision Alta Men’s Shoes Size (All Colours)',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 7),
          child: Row(
            children: [
              RatingBar.builder(
                itemSize: 18,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 5,
                ),
                onRatingUpdate: (rating) {
                  log(rating);
                },
              ),
              const Text('56,890')
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 22),
          child: Row(
            children: [
              Text(
                '2,999',
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              SizedBox(width: 10),
              Text(
                '1500',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(width: 10),
              SizedBox(width: 10),
              Text(
                '50% Off',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.pink),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 250),
          child: const Text(
            'Product Details',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        )
      ]),
    );
  }
}
