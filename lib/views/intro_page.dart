import 'package:flutter/material.dart';
import 'package:PRH/constants/theme_data.dart';

import 'home_page3.dart';

class IntroPage extends StatefulWidget {
  IntroPage({Key key}): super(key:key);
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage('assets/sylogo.png'),
              width: 100,
            ),
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage3()));},
                style: ElevatedButton.styleFrom(
                  primary: CustomColors.mainOrange,
                ),
                child: Container(
                  width: 100,
                  height: 50,
                  child: Center(
                    child: Text(
                        'ਪੰਜਾਬੀ',
                        style: TextStyle(
                          color: CustomColors.textCharcoalGrey,
                          fontFamily: 'Montserrat',
                          letterSpacing: 2,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 30,),
              ElevatedButton(
                onPressed: () {Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage3()));},
                style: ElevatedButton.styleFrom(
                    primary: CustomColors.cardBlue
                ),
                child: Container(
                  width: 100,
                  height: 50,
                  child: Center(
                    child: Text(
                        'English',
                      style: TextStyle(
                        color: CustomColors.textCharcoalGrey,
                        fontFamily: 'Montserrat',
                        letterSpacing: 1.5,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),

        ],
      ),


    );
  }
}
