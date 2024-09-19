
import 'package:bookly_app/core/utility/app_router.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kbookDetailsView,extra: bookModel);

      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.20,
        child: Row(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
              child: AspectRatio(
                aspectRatio: 2.6 / 4,
                child: SizedBox(
                  width: 80, // Adjusted width for image container
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
                      fit: BoxFit.cover, // Ensures the image fits the container
                      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 22), // Spacing between the image and text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start, // Vertically centers the content
                children: [
                  const SizedBox(height: 10),
                  Text(
                    bookModel.volumeInfo?.title ?? 'Unknown Title', // Book title
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis, // Ensures long text is truncated with ellipsis
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    bookModel.volumeInfo!.authors?[0] ?? 'Unknown Author', // Book author(s)
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis, // Ensures long text is truncated with ellipsis
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        '${bookModel.saleInfo?.listPrice?.amount?.toStringAsFixed(2) ?? 'free'} €', // Book price
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const Spacer(flex: 4,),
                      Text(
                        '⭐ ${bookModel.volumeInfo?.averageRating?.toStringAsFixed(1) ?? 'N/A'}', // Book rating
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(width: 4), // Small spacing between star rating and count
                      Text(
                        '(${bookModel.volumeInfo?.ratingsCount ?? 'N/A'})', // Rating count
                        style: const TextStyle(
                          color: Color(0xff848293),
                          fontSize: 16,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
//
// import '../../../../../core/utility/app_router.dart';
// import '../../../data/models/book_model.dart';
//
// class CustomBookItem extends StatelessWidget {
//   const CustomBookItem({super.key, required this.bookModel});
//  final BookModel bookModel;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         GoRouter.of(context).push(AppRouter.kbookDetailsView);
//       },
//       child: Container(
//         // decoration: BoxDecoration(
//         //   color: Colors.red,
//         // ),
//         margin:const EdgeInsets.only(bottom: 12),
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height * 0.20,
//
//         child: Row(
//           children: [
//             Column(
//               children: [
//                 SizedBox(
//                   height:  MediaQuery.of(context).size.height*0.20 ,
//                   child: AspectRatio(
//                     aspectRatio: 2.6/4,
//                     child: Container(
//
//                       //height: 110,
//                       width: 80, // Adjusted width for image container
//                       decoration: BoxDecoration(
//                         image:  DecorationImage(
//                           image:NetworkImage(bookModel.volumeInfo!.imageLinks?.thumbnail ??''),
//                           fit: BoxFit.cover, // Ensures the image fits the container
//                         ),
//                         borderRadius:
//                             BorderRadius.circular(8), // Optional rounded corners
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(width: 22), // Spacing between the image and text
//             const Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment:
//                     MainAxisAlignment.start, // Vertically centers the content
//                 children: [
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     'Harry Potter\nand the Goblet of Fire',
//                     maxLines:2,
//                     style: TextStyle(
//                       overflow: TextOverflow.ellipsis,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       decoration: TextDecoration.none,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'J.K. Rowling',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                       decoration: TextDecoration.none,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Row(
//                     children: [
//                       Text(
//                         '19.99\€',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 22,
//                           color: Colors.white,
//                           decoration: TextDecoration.none,
//                         ),
//                       ),
//                       Spacer(),
//                       Text(
//                         '⭐ 4.8',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                           color: Colors.white,
//                           decoration: TextDecoration.none,
//                         ),
//                       ),
//                       SizedBox(
//                           width:
//                               4), // Small spacing between star rating and count
//                       Text(
//                         '(2930)',
//                         style: TextStyle(
//                           color: Color(0xff848293),
//                           fontSize: 16,
//                           decoration: TextDecoration.none,
//                         ),
//                       ),
//                       Spacer(),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
