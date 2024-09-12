import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_message.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import 'feature_list_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
        builder: (context, state) {
      if (state is SuccessState) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => FeatureListViewItem(
              imgUrl:
                  state.books[index].volumeInfo!.imageLinks?.thumbnail ?? '',
            ),
            itemCount: 5,
          ),
        );
      } else if (state is LoadingState) {
        return const CustomLoadingIndicator();
      } else if (state is FailureState) {
        return CustomErrorMsg(
          errorMsg: state.errorMsg,
        );
      } else {
        return const Text('Oops there was an error');
      }
    });
  }
}
