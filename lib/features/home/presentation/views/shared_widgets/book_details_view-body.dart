import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feature_list_item.dart';
class BookDetailsViewBody extends StatelessWidget {
    BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width =  MediaQuery.of(context).size.width;
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Center(
            child: Padding(
               padding: EdgeInsets.symmetric(horizontal: width*0.20),
               child:  FeatureListViewItem(),

             ),
          )
        ],
      ),
    );
  }
}
// MediaQuery.of(context).size.height/3,