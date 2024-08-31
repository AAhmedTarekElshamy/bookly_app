import 'package:flutter/material.dart';
import '../../../../../core/utility/styles.dart';
import '../../../../home/presentation/views/shared_widgets/custom_book_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          CustomTextField(),
          SizedBox(
            height: 45,
          ),
          Text('Result',style: Styles.textStyle24,),

          SizedBox(
            height: 25,
          ),
        SearchResultListView(),
        ],
      ),
    );
  }
}
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder:  (context,index){
            return const CustomBookItem();
      },
      ),
    );
  }
}
