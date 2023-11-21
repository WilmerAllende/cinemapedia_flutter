import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;
  const CustomBottomNavigation({Key? key, required this.currentIndex})
      : super(key: key);

  void onItemTapped(BuildContext context, int index) {
    context.go("/home/$index");
    /*switch(index){
      case 0:
        context.go("/home/0");
        break;
      case 1:
        context.go("/home/1");
        break;
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      elevation: 0,
      onTap: (value) => onItemTapped(context, value),
      items: const [
        BottomNavigationBarItem(label: "Inicio", icon: Icon(Icons.home_max)),
        BottomNavigationBarItem(
            label: "Categorias", icon: Icon(Icons.label_outline)),
        BottomNavigationBarItem(
            label: "Faboritos", icon: Icon(Icons.favorite_outline)),
      ],
    );
  }
}
