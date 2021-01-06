import 'package:flutter/material.dart';
import 'package:ipetfe/constants/i_pet_constants.dart';
import 'package:ipetfe/constants/theme.dart';
import 'package:ipetfe/widgets/label.dart';

class ShareLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      // floatingActionButton: FloatingActionButton(
      //     backgroundColor: Colors.lightBlueAccent,
      //     child: Icon(Icons.add),
      //     onPressed: () {
      //       showModalBottomSheet(
      //           context: context,
      //           isScrollControlled: true,
      //           builder: (context) => SingleChildScrollView(
      //                   child: Container(
      //                 padding: EdgeInsets.only(
      //                     bottom: MediaQuery.of(context).viewInsets.bottom),
      //                 child: Text('Tasks'),
      //               )));
      //     }),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/dogsbg.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                    top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Center(
                  child: Text(
                    'You will find here all pets needs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        'Share you location',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'If we have better your location, we can do a '
                      '\nbetter job to find what you want and '
                      '\ndeliver it.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.5,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Center(
                        child: Label(
                          text: 'Yes, share my location.',
                          textColor: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/result-page');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppTheme.nearlyBlue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Center(
                          child: Label(
                            text: 'Yes, share my location',
                            myTxtStyle: IPetConst.labelTextStyle,
                          ),
                        ),
                        margin: EdgeInsets.only(top: 10.0),
                        width: double.infinity,
                        height: IPetConst.kCustomButtonHeight,
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Center(
                          child: Label(
                            text: 'No, choose location manually',
                            myTxtStyle: IPetConst.labelTextStyleTransparent,
                          ),
                        ),
                        margin: EdgeInsets.only(top: 10.0),
                        width: double.infinity,
                        height: IPetConst.kCustomButtonHeight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
