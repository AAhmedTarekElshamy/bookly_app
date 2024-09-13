import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_message.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import '../../manager/newest_books_cubit/newest_books_states.dart';
import 'custom_book_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
        builder: (BuildContext context, state) {
      if (state is NewestBooksSuccess) {
        return
          //Expanded(
         // height: MediaQuery.of(context).size.height * 0.40,
         // child:
          SafeArea(
            child: SizedBox(
             // height: MediaQuery.of(context).size.height * 0.40,
              child: ListView.builder(
                shrinkWrap: false,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>   CustomBookItem(bookModel:state.books[index],),
                itemCount: state.books.length,

                      ),
            ),
          );
      } else if (state is NewestBooksFailure) {
        return CustomErrorMsg(
          errorMsg: state.errorMsg,
        );
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
