import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
          label: "Inicio",
          icon: Icon(Icons.home_max)
        ),
        BottomNavigationBarItem(
          label: "Categorias",
          icon: Icon(Icons.label_outline)
        ),
        BottomNavigationBarItem(
          label: "Faboritos",
          icon: Icon(Icons.favorite_outline)
        ),
      ],
    );
  }
}