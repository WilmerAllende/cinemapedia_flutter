// ignore: unused_import
import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../views/views.dart';

class HomeScreen extends StatelessWidget {
  static const name = "home-screen";
  final int pageIndex;
  const HomeScreen({Key? key, required this.pageIndex}) : super(key: key);

  final viewRoutes = const <Widget>[
    HomeView(),
    SizedBox(),
    FavoritesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
      bottomNavigationBar: CustomBottomNavigation(  currentIndex: pageIndex ),
    );
  }
}
