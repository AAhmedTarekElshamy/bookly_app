import 'package:flutter/material.dart';

import '../../../../../core/utility/styles.dart';
import 'book_action.dart';
import 'feature_list_item.dart';
class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.27),
          child: const FeatureListViewItem(),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'The Jungle book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
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
        const SizedBox(
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
          height: 25,
        ),
        BookAction(),
      ],
    );
  }
}

