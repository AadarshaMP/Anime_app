import 'package:flutter/material.dart';
import 'package:anime_app/screens/home_screen.dart';
import 'package:anime_app/screens/favorites_screen.dart';
import 'package:anime_app/screens/search_screen.dart';
void main(){
  runApp(const AnimeApp());
}

class AnimeApp extends StatelessWidget{
  const AnimeApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Anime App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavBarScreen(),

    );
  }
}

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});
  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;

  //List of Screen for Navigation
  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    FavoritesScreen(),
  ];

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anime App'),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}

