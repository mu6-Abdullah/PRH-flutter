import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:PRH/constants/theme_data.dart';
class ResourcePage extends StatefulWidget {
  @override
  _ResourcePageState createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {
  @override
  Widget build(BuildContext context) {
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
                'Resource Template Page',
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
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Card(
                  color: CustomColors.infoCardPinkBeige,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20.0),
                    splashColor: Colors.blue[200],
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                        width: 125,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start ,
                          children: [
                            Text(
                              'What is ______?',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 22,
                                  letterSpacing: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 11,
                                  color: CustomColors.textCharcoalGrey,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(
                height: 40,
                indent: 170,
                endIndent: 170,
                thickness: 4,
                color: CustomColors.infoCardPinkBeige,
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Resources',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    letterSpacing: 1.5,
                    color: CustomColors.textCharcoalGrey,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Card(
                  color: CustomColors.cardBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20.0),
                    splashColor: Colors.blue[200],
                    onTap: (){},
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        width: 125,
                        height: 65,
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                    'Resource Name',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 22,
                                      letterSpacing: 1.5,
                                      color: CustomColors.cardTextBlue,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Text(
                                    'SPECIALIZATION/INFO',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 1.5,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 50,),
                            IconButton(
                              icon: Icon(Icons.message,
                                color: CustomColors.cardTextBlue,
                              ),
                            ),
                            IconButton(
                                icon: Icon(Icons.local_phone_rounded,
                                  color: CustomColors.cardTextBlue,
                                ),

                            ),
                          ],
                        )
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Card(
                  color: CustomColors.cardBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20.0),
                    splashColor: Colors.blue[200],
                    onTap: (){},
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        width: 125,
                        height: 65,
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Resource Name',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 22,
                                      letterSpacing: 1.5,
                                      color: CustomColors.cardTextBlue,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Text(
                                  'SPECIALIZATION/INFO',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 1.5,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 50,),
                            IconButton(
                              icon: Icon(Icons.message,
                                color: CustomColors.cardTextBlue,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.local_phone_rounded,
                                color: CustomColors.cardTextBlue,
                              ),

                            ),
                          ],
                        )
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Card(
                  color: CustomColors.cardBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20.0),
                    splashColor: Colors.blue[200],
                    onTap: (){},
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        width: 125,
                        height: 65,
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Resource Name',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 22,
                                      letterSpacing: 1.5,
                                      color: CustomColors.cardTextBlue,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Text(
                                  'SPECIALIZATION/INFO',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 1.5,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 50,),
                            IconButton(
                              icon: Icon(Icons.message,
                                color: CustomColors.cardTextBlue,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.local_phone_rounded,
                                color: CustomColors.cardTextBlue,
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
