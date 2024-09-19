import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utility/styles.dart';
import 'book_action.dart';
import 'feature_list_item.dart';
class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel, });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.27),
          child:    FeatureListViewItem(imgUrl:bookModel.volumeInfo?.imageLinks?.thumbnail ??'',),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          bookModel.volumeInfo?.title ??'N/A',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
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
            bookModel.volumeInfo?.authors![0] ??'N/A',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
         Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '⭐',
                style: TextStyle(fontSize: 14),
              ),
              Text(
               '${bookModel.volumeInfo?.averageRating ?? 0 }' ,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              ),
               Text(
                 '\t(${bookModel.volumeInfo?.ratingsCount ?? 0 })',
                style: const TextStyle(
                    color: Color(0xff848293),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
          BookAction(bookModel: bookModel,),
      ],
    );
  }
}

