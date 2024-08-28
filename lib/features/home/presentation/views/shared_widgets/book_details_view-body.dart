import 'package:bookly_app/core/utility/styles.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'similar_books_list_view.dart';
import 'book_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Center(
              child: Column(
                children: [
                  BookDetailsSection(),

                  SizedBox(
                    height: 33,
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'You can also like',
                        style: Styles.textStyle18,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  SimilarBooksListView(),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
