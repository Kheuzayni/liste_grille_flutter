import 'package:flutter/material.dart';
import 'package:liste_grille/grid_page.dart';
import 'package:liste_grille/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo liste grille',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
        appBar: AppBar(title: Text("Koki, Louga, Sénégal"),),
        body: (orientation == Orientation.portrait)
            ? ListPage()
            : GridPage()
    );



  }
}
