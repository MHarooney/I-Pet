import 'package:flutter/material.dart';
import 'package:ipetfe/constants/i_pet_constants.dart';
import 'package:ipetfe/viewobject/tabIcon_data.dart';

import '../constants/theme.dart';
import '../widgets/item_card.dart';
import '../widgets/walk_item_card.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  AnimationController animationController;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: AppTheme.background,
  );

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    // tabBody = MyDiaryScreen(animationController: animationController);
    tabBody = Container(
      color: AppTheme.nearlyBlack,
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: ListView(
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                "Hi, Mahmoud",
                style: AppTheme.title,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: size.width * 0.7,
                  child: Text(
                    "Check out the new products, groups, events, places and more!",
                    style: IPetConst.contentBlack,
                  )),
              SizedBox(
                height: 50,
              ),
              ItemCard(),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Walk groups".toUpperCase(),
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Text("See All")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    WalkGroupCard(
                      imgScr: "assets/images/card_dog_1.png",
                      title: "Meet our lovely dogs walking with us",
                      location: "Valencia, Spain",
                      members: "8 memmbers",
                      orgBy: "Mahmoud",
                    ),
                    WalkGroupCard(
                      imgScr: "assets/images/card_dog_2.png",
                      title: "Meet our lovely dogs walking with us",
                      location: "Valencia, Spain",
                      members: "8 memmbers",
                      orgBy: "Mahmoud",
                    ),
                    // WalkGroupCard()
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
