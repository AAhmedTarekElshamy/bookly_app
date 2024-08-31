import 'package:bookly_app/core/utility/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utility/assets.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 14.0,right: 14,top: 24),
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo,height: 30,width: 90,),
          const Spacer(),
          const Spacer(),
          IconButton(onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          }, icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 22,)),

        ],
      ),
    );
  }
}