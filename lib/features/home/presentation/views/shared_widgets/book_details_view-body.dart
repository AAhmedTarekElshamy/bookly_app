import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feature_list_item.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Center(

             child: SizedBox(
               height: MediaQuery.of(context).size.height/3,
               child:  FeatureListViewItem(),

             ),
          )
        ],
      ),
    );
  }
}
// MediaQuery.of(context).size.height/3,