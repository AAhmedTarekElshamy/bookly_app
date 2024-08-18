import 'package:bookly_app/core/utility/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Custom_list_item.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50.0,left: 12),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 30,
          ),
          FeaturedBooksListView(),

        ],
      ),
    );
  }
}
