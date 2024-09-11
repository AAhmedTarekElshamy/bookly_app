import 'package:bookly_app/features/home/presentation/views/shared_widgets/home_view_body.dart';
import 'package:flutter/material.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const HomeViewBody();
  }
}
