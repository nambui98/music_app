import 'package:flutter/material.dart';

class CustomBarWidget extends StatelessWidget {
  const CustomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0),
            border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.2), width: 1.0),
            color: Colors.white),
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Color.fromRGBO(0, 0, 0, 0.6),
              ),
              onPressed: () {
                print("your menu action here");
              },
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search", border: InputBorder.none),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.grid_view,
                color: Color.fromRGBO(0, 0, 0, 0.6),
              ),
              onPressed: () {
                print("your menu action here");
              },
            ),
          ],
        ),
      ),
    );
  }
}
