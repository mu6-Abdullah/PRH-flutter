import 'package:flutter/material.dart';
import 'package:flutter_one/constants/theme_data.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: CustomColors.mainOrange,
                borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  ),
                  Text(
                    'TITLE',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  )
                ]
              ),
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical:8, horizontal: 0),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.orange[900],
                  child: Text(
                    'Punjabi Resource Guide',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  height:50,
                  color: Colors.orange[800],
                  child: Text(
                    'A Handbook Full Of Resources Catered To The Needs Of Punjabi-Speaking Edmontonians',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                    color: Colors.orange[700],
                    child: Image(
                      image: AssetImage('assets/sylogo.png'),
                    ),
                ),
                Container(
                  color: Colors.orange[600],
                  child: IconButton(
                      icon: Icon(Icons.arrow_drop_down),
                      onPressed: (){}
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Card(
                        child: InkWell(
                          splashColor: Colors.orangeAccent,
                          onTap: (){},
                          child: Container(
                            width:100,
                            height: 100,
                            child: Center(
                              child: Text(
                                'Option'
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        child: InkWell(
                          splashColor: Colors.orangeAccent,
                          onTap: (){},
                          child: Container(
                            width:100,
                            height: 100,
                            child: Center(
                              child: Text(
                                  'Second Option'
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Card(
                        child: InkWell(
                          splashColor: Colors.orangeAccent,
                          onTap: (){},
                          child: Container(
                            width:200,
                            height: 100,
                            child: Center(
                              child: Text(
                                'Option w/Suboptions'
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      height: 50,
                      width: 100,
                      child: Image(
                        image: AssetImage('assets/canada_flag.png'),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  color: CustomColors.homePageFooterBlue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Compilation',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Simran K. Dhillon',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Additional Credits',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Ravia K. Dhaliwal',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Daman K. Grewal',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


