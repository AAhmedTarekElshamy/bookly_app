import 'package:bookly_app/core/utility/assets.dart';
import 'package:bookly_app/core/utility/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:flutter/widgets.dart';

import '../../../../../constants.dart';

import 'custom_app_bar.dart';
import 'custom_book_item.dart';

import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,  // Background color for the entire screen
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(
                  height: 25,
                ),
                FeaturedBooksListView(),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Text(
                        'Best Seller',
                        style: Styles.titleMedium,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => const CustomBookItem(),
                childCount: 5,  // Number of items in the BestSellerListView
              ),
            ),
          ),
        ],
      ),
    );
  }
}










/*BestSellerListView(),*/