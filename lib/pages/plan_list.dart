import 'package:flutter/material.dart';

import '../theme.dart';

class PlanList extends StatefulWidget {
  const PlanList({
    Key? key,
  }) : super(key: key);

  @override
  _PlanListState createState() => _PlanListState();
}

class _PlanListState extends State<PlanList> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 50),
      child: Column(
        children: [
          planCard(0),
          SizedBox(
            height: 10,
          ),
          planCard(1),
          SizedBox(
            height: 10,
          ),
          planCard(2),
        ],
      ),
    );
  }

  Widget planCard(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
                width: 2,
                color: selectedIndex == index ? bluecolor : textcolor)),
        child: ListTile(
          leading: selectedIndex == index
              ? Image.asset(
                  'assets/images/checked.png',
                  width: 18,
                )
              : Image.asset(
                  'assets/images/check.png',
                  width: 18,
                ),
        ),
      ),
    );
  }
}
