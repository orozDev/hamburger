// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentSelectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, idx) => Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    margin: EdgeInsets.only(
                      left: idx == 0 ? 20 : 0,
                      right: 20,
                    ),
                    child: GestureDetector(
                      onTap: () => setState(() => currentSelectedItem = idx),
                      child: Card(
                        color: idx == currentSelectedItem
                            ? Colors.black.withOpacity(0.7)
                            : Colors.white,
                        child: Icon(
                          Icons.fastfood,
                          color: idx == currentSelectedItem
                              ? Colors.white
                              : Colors.black.withOpacity(0.7),
                        ),
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.only(
                    left: idx == 0 ? 20 : 0,
                    right: 20,
                  ),
                  width: 90,
                  child: Row(children: [
                    Spacer(),
                    Text('Burger'),
                    Spacer(),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
