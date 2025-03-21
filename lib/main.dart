import 'package:flutter/material.dart';

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
      theme: ThemeData.dark(),
      home: const HomeScreen(),

    );
  }
}
