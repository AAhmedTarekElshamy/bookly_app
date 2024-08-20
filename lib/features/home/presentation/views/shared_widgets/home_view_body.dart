import 'package:bookly_app/core/utility/assets.dart';
import 'package:bookly_app/core/utility/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../../../../../constants.dart';
import 'Custom_list_item.dart';
import 'custom_app_bar.dart';
import 'custom_best_seller_item.dart';
import 'custom_best_seller_list_view.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 50.0, left: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SizedBox(
              height: 30,
            ),
            FeaturedBooksListView(),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(child: Text('  Best Seller', style: Styles.titleMedium)),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            BestSellerListView(),
          ],
        ),
      ),
    );
  }
}




