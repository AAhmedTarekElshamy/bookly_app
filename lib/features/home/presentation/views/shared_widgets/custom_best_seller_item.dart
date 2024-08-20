import 'package:flutter/material.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //  // color: Colors.red,
      // ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.20,
      padding: const EdgeInsets.symmetric(
          horizontal: 16, vertical: 10), // Optional padding
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 110,
                width: 80, // Adjusted width for image container
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('lib/assets/images/testBestSeller.png'),
                    fit: BoxFit.cover, // Ensures the image fits the container
                  ),
                  borderRadius:
                      BorderRadius.circular(8), // Optional rounded corners
                ),
              ),
            ],
          ),
          const SizedBox(width: 22), // Spacing between the image and text
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:
                  MainAxisAlignment.start, // Vertically centers the content
              children: [
                Text(
                  'Harry Potter\nand the Goblet of Fire',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'J.K. Rowling',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      '19.99\€',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '⭐ 4.8',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(
                        width:
                            4), // Small spacing between star rating and count
                    Text(
                      ' (2930)',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
