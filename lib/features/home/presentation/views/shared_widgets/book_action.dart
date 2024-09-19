import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utility/functions/launcher.dart';
import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          bookModel.accessInfo!.webReaderLink !=null ?  CustomButton(
            onPressed: (){},
            text: 'Free',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ):const Text('sorry,it\'s a paid book',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          bookModel.accessInfo!.webReaderLink !=null ?     CustomButton(
            onPressed: (){
              openUrl(context,bookModel.accessInfo!.webReaderLink! );
            },
            text: ' Preview',
            backgroundColor: const Color(0xfff18263),
            textColor: Colors.white,
            fontSize: 16,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
          ):const Text('sorry,it\'s a paid book',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}


// String getText({BookModel bookModel}){
//   if()
// }