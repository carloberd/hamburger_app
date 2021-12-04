import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    // take the device size
    Size size = MediaQuery.of(context).size;

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: size.height / 5,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.teal[300],
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(45),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      // offset: Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                          radius: 35,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
