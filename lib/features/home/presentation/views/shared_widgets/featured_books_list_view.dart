import 'package:flutter/material.dart';

import 'Custom_list_item.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*0.3 ,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=> CustomListViewItem(),
        itemCount: 5,
      ),
    );
  }
}
