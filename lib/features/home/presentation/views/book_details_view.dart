import 'package:bookly_app/features/home/presentation/views/shared_widgets/book_details_view-body.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            size: 28,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 28,
              ))
        ],
      ),
      body: const BookDetailsViewBody(),
    );
  }
}
