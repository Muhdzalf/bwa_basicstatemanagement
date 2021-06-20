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
          planCard(0, 'Weekly', 'Good for learn', '\$5'),
          SizedBox(
            height: 10,
          ),
          planCard(1, 'Mountly', 'Good for starting up', '\$5'),
          SizedBox(
            height: 10,
          ),
          planCard(2, 'Yearly', 'Steady company', '\$5'),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Checkout Now',
              style: title.copyWith(fontSize: 16),
            ),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 11),
                minimumSize: Size(double.infinity, 50),
                shape: StadiumBorder()),
          )
        ],
      ),
    );
  }

  Widget planCard(int index, String titles, String subtitle, String price) {
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
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: selectedIndex == index
                    ? Container(
                        child: Image.asset(
                          'assets/images/checked.png',
                          height: 18,
                        ),
                      )
                    : Container(
                        child: Image.asset(
                          'assets/images/check.png',
                          height: 18,
                        ),
                      )),
            Expanded(
              flex: 4,
              child: ListTile(
                // leading: selectedIndex == index
                //     ? Image.asset(
                //         'assets/images/checked.png',
                //         width: 18,
                //       )
                //     : Image.asset(
                //         'assets/images/check.png',
                //         width: 18,
                //       ),
                title: Text(
                  titles,
                  style: bodytitle,
                ),
                subtitle: Text(
                  subtitle,
                  style: body.copyWith(color: whitecolor, fontSize: 12),
                ),
                trailing: Text(
                  price,
                  style: title.copyWith(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
