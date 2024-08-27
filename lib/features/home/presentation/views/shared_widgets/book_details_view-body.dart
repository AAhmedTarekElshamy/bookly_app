import 'dart:ui';
import 'package:bookly_app/core/utility/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'book_action.dart';
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
              padding: EdgeInsets.symmetric(horizontal: width * 0.25),
              child: FeatureListViewItem(),
            ),
            SizedBox(
              height: 43,
            ),
            Text(
              'The Jungle book',
              style: Styles.textStyle30.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Opacity(
              opacity: 0.7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '⭐',
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    ' 4.8 ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    ' (2243) ',
                    style: TextStyle(
                        color: Color(0xff848293),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BookAction(),
          ],
        ),
      ),
    );
  }
}

// MediaQuery.of(context).size.height/3,

// Container(
//   height: 50,
//   width: 170,
//   decoration: BoxDecoration(
//     color: Color(0xfff18263),
//     borderRadius: BorderRadius.only(
//         topRight: Radius.circular(16),
//         bottomRight: Radius.circular(16)),
//   ),
//   child: const Center(
//     child: Text(
//       'free preview',
//       style: TextStyle(
//         color: Colors.white,
//         fontSize: 18,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ),
// ),
