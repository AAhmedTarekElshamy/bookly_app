import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utility/styles.dart';
import '../../../../home/presentation/views/shared_widgets/custom_book_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          const  CustomTextField(),
          const  SizedBox(
            height: 45,
          ),
          Opacity(
            opacity: .8,
            child: Text('Search Result',style: Styles.textStyle18.copyWith(
              fontSize: 22,
            ),),
          ),

          const    SizedBox(
            height: 25,
          ),
          const  SearchResultListView(),
        ],
      ),
    );
  }
}
