import 'package:flutter/material.dart';

class HamburgerList extends StatefulWidget {
  HamburgerList({Key? key}) : super(key: key);

  @override
  _HamburgerListState createState() => _HamburgerListState();
}

class _HamburgerListState extends State<HamburgerList> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: ListView.builder(itemBuilder: (context, index) => Stack(),),
      ),
    );
  }
}
