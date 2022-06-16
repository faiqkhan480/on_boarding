import 'package:e_purse/utils/constants.dart';
import 'package:e_purse/utils/style_properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/assets.dart';
import '../utils/size_config.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  List<String> titles = ["Pay School Fees", "Pay Utility Bills", "Transfer Money"];
  List<String> content = [
    "With ePurse, you can easily pay school fees using any preferred method of payment in the app.",
    "Buy Airtime, Data Subscription, Cable TV Subscription and Electricity Tarrif. payment.",
    "Easily send money to any one nationwide with the ePurse fund transfer feature.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Constants.primaryColor,
              borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(20)
              )
          ),
          width: double.infinity,
          height: SizeConfig.screenHeight * .50,
        ),

        PageView.builder(
          itemCount: Assets.onBoarding.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  height: SizeConfig.screenHeight * .50,
                  padding: const EdgeInsets.only(top: 40, bottom: 30),
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(Assets.onBoarding.elementAt(index), height: SizeConfig.screenHeight * .28),
                ),

                SizedBox(height: 80,),

                Text(titles.elementAt(index), style: TextStyles.heading28(),),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60, bottom: 80.0, top: 20),
                  child: Text(content.elementAt(index), style: TextStyles.regularText(), textAlign: TextAlign.center),
                ),
              ],
            );
          }
        ),

        Positioned(
          left: 0,
            right: 0,
            top: 60,
            child: Image.asset(Assets.logo,  height: SizeConfig.screenHeight * .05),
        ),

        Positioned(
          left: 0,
          right: 0,
          bottom: 100,
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.primaryColor
            ),
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () => null,
              icon: Icon(CupertinoIcons.chevron_forward),
              color: Colors.white,
              iconSize: 30,
            ),
          ),
        )
      ],
    );
  }
}
