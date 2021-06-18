import 'package:bwa_basicstatemanagement/pages/plan_list.dart';
import 'package:bwa_basicstatemanagement/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navycolor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 53),
                child: Image.asset('assets/images/goal.png'),
              ),
              RichText(
                text: TextSpan(text: 'Upgrade to ', style: title, children: [
                  TextSpan(
                      text: 'Pro', style: title.copyWith(color: bluecolor)),
                ]),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Go unlock all features and\nbuild your own bussines bigger',
                style: body,
                textAlign: TextAlign.center,
              ),
              PlanList()
            ],
          ),
        ),
      ),
    );
  }
}
