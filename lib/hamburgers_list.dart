// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class HamburgersList extends StatefulWidget {
  const HamburgersList({Key? key}) : super(key: key);

  @override
  State<HamburgersList> createState() => _HamburgersListState();
}

class _HamburgersListState extends State<HamburgersList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;

    Widget firstImage = Container(
      height: 160,
      child: Image.asset('images/hamburger.png'),
    );


    Widget secondImage = Container(
      height: 160,
      child: Image.asset('images/hamburger2.png'),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, idx) {
            return Stack(
              children: [
                Container(
                  height: 300,
                  width: 200,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: items == idx ? 20 : 0,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // ! TODO Navigator
                    },
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(children: [
                          Text(
                            'Burger',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Spacer(),
                              Text(
                                '15.4 \$ USD',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 50,
                                height: 50,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
                Positioned(child: idx.isEven ? firstImage : secondImage, bottom: 30,)
              ],
            );
          },
        ),
      ),
    );
  }
}
