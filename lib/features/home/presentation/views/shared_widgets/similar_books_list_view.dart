import 'package:flutter/material.dart';

import 'feature_list_item.dart';
class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*0.15 ,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=> const FeatureListViewItem(aspectRatioNumber:2.9/4, imgUrl: '' ,),
        itemCount: 15,
      ),
    );
  }
}
