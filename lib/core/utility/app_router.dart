

import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
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
        path: '/SplashView',
        builder: (context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
          path:'/' ,
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
        builder: (context,GoRouterState state)=>BookDetailsView(),
      ),

    ],
  );
}
