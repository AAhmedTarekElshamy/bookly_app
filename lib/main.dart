import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utility/service_locator.dart';
import 'package:bookly_app/features/home/repositry/home_repo_implement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utility/app_router.dart';
import 'features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'features/home/presentation/views/home_view.dart';
import 'features/splash_feature/presentation/views/splash_view.dart';


void main() {
  runApp(const BooklyApp());

}

class BooklyApp extends StatelessWidget {
   const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
       BlocProvider(create:(context)=>FeaturedBooksCubit(homeRepo:getIt.get<HomeRepoImp>())),
        BlocProvider(create:(context)=>NewestBooksCubit(homeRepo:getIt.get<HomeRepoImp>())),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),

        routerConfig:AppRouter.router,
      ),
    );
  }

}

