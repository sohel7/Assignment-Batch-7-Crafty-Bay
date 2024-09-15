import 'package:crufty_bay/ui/screens/cart_screen.dart';
import 'package:crufty_bay/ui/screens/category_screen.dart';
import 'package:crufty_bay/ui/screens/home_screen.dart';
import 'package:crufty_bay/ui/screens/wishlist_screen.dart';
import 'package:crufty_bay/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

class MainButtonNavScreen extends StatefulWidget {
  const MainButtonNavScreen({super.key});

  @override
  State<MainButtonNavScreen> createState() => _MainButtonNavScreenState();
}

class _MainButtonNavScreenState extends State<MainButtonNavScreen> {

  int _selectedIndex = 0;
  final List<Widget> _screens = const[
    HomeScreen(),
    CategoryScreen(),
    CartsScreen(),
    WishListScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (index){
          _selectedIndex= index;
          if (mounted){
            setState(() {

            });
          }
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home' ),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'Category'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Carts'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: 'Wishlist'),
          ]
      ),

    );
  }
}
