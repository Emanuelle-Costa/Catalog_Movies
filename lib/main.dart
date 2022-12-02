import 'package:catalog_movies/listagem.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Listagem(),
    );
  }
}