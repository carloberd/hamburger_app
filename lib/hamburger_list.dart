import 'package:flutter/material.dart';
import 'burger_page.dart';

class HamburgerList extends StatefulWidget {
  const HamburgerList({Key? key}) : super(key: key);

  @override
  _HamburgerListState createState() => _HamburgerListState();
}

class _HamburgerListState extends State<HamburgerList> {
  @override
  Widget build(BuildContext context) {
    int items = 8;

    Widget firstImage = Container(
      height: 160,
      child: Image.asset("images/1.png"),
      margin: const EdgeInsets.only(top: 25),
    );

    Widget secondImage = Container(
      height: 145,
      child: Image.asset("images/2.png"),
      margin: const EdgeInsets.only(top: 21),
    );

    Widget thirdImage = Container(
      height: 110,
      child: Image.asset("images/3.png"),
      margin: const EdgeInsets.only(top: 45),
    );

    Widget fourthImage = Container(
      height: 153,
      child: Image.asset("images/4.png"),
      margin: const EdgeInsets.only(top: 22),
    );

    Widget fifthImage = Container(
      height: 95,
      child: Image.asset("images/5.png"),
      margin: const EdgeInsets.only(top: 56),
    );

    Widget sixthImage = Container(
      height: 125,
      child: Image.asset("images/6.png"),
      margin: const EdgeInsets.only(top: 40),
    );

    Widget seventhImage = Container(
      height: 100,
      child: Image.asset("images/7.png"),
      margin: const EdgeInsets.only(top: 54),
    );

    Widget eighthImage = Container(
      height: 100,
      child: Image.asset("images/8.png"),
      margin: const EdgeInsets.only(top: 50),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: 200,
        margin: const EdgeInsets.only(top: 15),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) => Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.only(
                  left: 20,
                  right: items == index ? 20 : 0,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(BurgerPage.tag);
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          const Text(
                            'Burger',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const Spacer(),
                              const Text(
                                '12,99 €',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: Colors.white,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.teal[300],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    elevation: 3,
                    margin: const EdgeInsets.all(10),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(BurgerPage.tag);
                  },
                  child: index == 0
                      ? firstImage
                      : index == 1
                          ? secondImage
                          : index == 2
                              ? thirdImage
                              : index == 3
                                  ? fourthImage
                                  : index == 4
                                      ? fifthImage
                                      : index == 5
                                          ? sixthImage
                                          : index == 6
                                              ? seventhImage
                                              : eighthImage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
