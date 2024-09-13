import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_message.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import 'feature_list_item.dart';
class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksStates>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess){
          return SizedBox(
            height:MediaQuery.of(context).size.height*0.15 ,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=> const FeatureListViewItem(aspectRatioNumber:2.9/4, imgUrl: '' ,),
              itemCount: 15,
            ),
          );
      } else if(state is SimilarBooksFailure) {
        return  CustomErrorMsg(errorMsg: state.errorMsg,);

        } else {
         return const CustomLoadingIndicator();
        }
      }
    );
  }
}
