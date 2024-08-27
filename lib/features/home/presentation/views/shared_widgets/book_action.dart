import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          CustomButton(
            text: '19.99€',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
          CustomButton(
            text: 'Free Preview',
            backgroundColor: Color(0xfff18263),
            textColor: Colors.white,
            fontSize: 16,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
          ),
        ],
      ),
    );
  }
}
