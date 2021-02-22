import 'package:flutter/material.dart';
import 'package:flutter_one/constants/theme_data.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                height: 10,
              ),
            ),
            SliverAppBar(
              centerTitle: true,
              title: Text(
                'Profile Template Page',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: (){},
                    )
              ],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)
              ),
              backgroundColor: CustomColors.mainOrange,
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Center(
                  child: Text(
                    'Profiles',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500
                    ),
                  ),
                )
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Card(
                  color: CustomColors.cardBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20.0),
                    splashColor: Colors.blue[200],
                    onTap: (){},
                    child: Container(
                        //width: 125,
                        // height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                  child: Image(
                                    image: AssetImage('assets/alarm_icon.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                    children: <Widget>[
                                      Text(
                                        'Firstname Lastname',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 22,
                                            letterSpacing: 1.5,
                                            color: CustomColors.cardTextBlue,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Text(
                                        'CREDENTIALS/SPECIALIZATION',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing: 1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Text(
                                        'Address',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing: 1,
                                            color: CustomColors.textCharcoalGrey,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.location_on_rounded,
                                              color: CustomColors.cardTextBlue,
                                            ),
                                            SizedBox(width: 5),
                                            Icon(Icons.email,
                                              color: CustomColors.cardTextBlue,),
                                            SizedBox(width: 5),
                                            Icon(Icons.local_phone_rounded,
                                              color: CustomColors.cardTextBlue,),
                                            SizedBox(width: 100),
                                          ]
                                      )
                                    ]
                                ),

                              ],
                            ),
                          ],

                        )
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                color: CustomColors.cardBlue,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                          child: Image(
                            image: AssetImage('assets/alarm_icon.png'),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                            children: <Widget>[
                              Text(
                                'Firstname Lastname',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 22,
                                    letterSpacing: 1.5,
                                    color: CustomColors.cardTextBlue,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                'CREDENTIALS/SPECIALIZATION',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                'Address',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    color: CustomColors.textCharcoalGrey,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on_rounded,
                                      color: CustomColors.cardTextBlue,
                                    ),
                                    SizedBox(width: 5),
                                    Icon(Icons.email,
                                      color: CustomColors.cardTextBlue,),
                                    SizedBox(width: 5),
                                    Icon(Icons.local_phone_rounded,
                                      color: CustomColors.cardTextBlue,),
                                    SizedBox(width: 100),
                                    Container(
                                        padding: EdgeInsets.symmetric(horizontal: 5),
                                        decoration: BoxDecoration(
                                          color: CustomColors.cardTextBlue,
                                          borderRadius: BorderRadius.circular(20),
                                        ),

                                        child:Row(
                                          children: <Widget>[
                                            Text(
                                              '3.8',
                                              style: TextStyle(
                                                  color: Colors.yellow
                                              ),
                                            ),
                                            SizedBox(width:5),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            )
                                          ],
                                        )
                                    )
                                  ]
                              )
                            ]
                        ),

                      ],
                    ),
                    Theme(
                      data:theme,
                      child: ExpansionTile(

                        title: Text(''),
                        children: <Widget>[
                          Text('Loyalty')
                        ],
                      ),
                    )

                  ],
                )
              )
            ),
          ],
        ),
      ),
    );
  }
}

