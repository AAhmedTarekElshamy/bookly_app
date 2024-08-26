import 'package:bookly_app/core/utility/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'feature_list_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.23),
              child: FeatureListViewItem(),
            ),
            SizedBox(
              height:43,
            ),
            Text('The Jungle book',style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold,

            ),),
            SizedBox(
              height:6,
            ),
            Opacity(
              opacity: 0.7,
              child: Text('Rudyard Kipling',style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
// MediaQuery.of(context).size.height/3,
