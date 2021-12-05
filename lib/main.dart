import 'package:flutter/material.dart';
import 'header.dart';
import 'categories.dart';
import 'hamburger_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.teal[300],
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
        bottomAppBarColor: Colors.teal[300],
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.lime[600],
        ),
        cardColor: Colors.teal[300],
      ),
      debugShowCheckedModeBanner: false,
      home: const Hamburger(),
    );
  }
}

class Hamburger extends StatefulWidget {
  const Hamburger({Key? key}) : super(key: key);

  @override
  _HamburgerState createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: const Text('Hamburger App'),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              ),
            ],
          ),
          const Header(),
          const Categories(),
          const HamburgerList(),
        ],
      ),
      // Next line make visible all items that goes behind between the floating
      // button and bottom navigation bar
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(45),
        ),
        child: Container(
          color: Colors.black12,
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Row(
              children: [
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_alert),
                  color: Colors.white,
                ),
                const Spacer(),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark),
                  color: Colors.white,
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
