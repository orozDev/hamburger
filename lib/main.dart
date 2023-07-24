// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:hamburger/categories.dart';
import 'package:hamburger/hamburgers_list.dart';
import 'header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        cardColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true),
        bottomAppBarColor: Colors.teal,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,
        ),
      ),
      home: Hamburger(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamburger extends StatefulWidget {
  const Hamburger({Key? key}) : super(key: key);

  @override
  State<Hamburger> createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: FlutterLogo(),
            ),
            ListTile(
              onTap: () {},
              title: Text('Menu Item'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Menu Item'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Menu Item'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Menu Item'),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('Deviver Me'),
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Menu',
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
            actions: [
              IconButton(
                  icon: Icon(Icons.shopping_cart),
                  tooltip: 'Shopping Cart',
                  onPressed: () {}),
            ],
          ),
          Header(),
          Categories(),
          HamburgersList(),
          HamburgersList(),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45),
        ),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  icon: Icon(Icons.add_alert),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.turned_in),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
