

import 'package:bookly_app/core/utility/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/repositry/home_repo_implement.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash_feature/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kHomeView = '/HomeView';
  static const String kbookDetailsView ='/bookDetailsView';
  static const String kSearchView='/SearchView';
  // static const String kSplashView='/SplashView';
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
          path:kSearchView,
          builder: (context, GoRouterState state) {
            return const SearchView();
          },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
          path: kbookDetailsView,
        builder: (context,GoRouterState state)=>BlocProvider(
            create: (context) => SimilarBooksCubit(homeRepo:getIt.get<HomeRepoImp>()),
            child:   BookDetailsView(
              bookModel: state.extra as BookModel,
            )),
      ),

    ],
  );
}
