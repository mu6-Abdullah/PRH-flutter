import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_one/constants/theme_data.dart';
import 'package:flutter_one/views/pages/counselling_services.dart';
import 'package:flutter_one/views/pages/domestic_violence_supports.dart';
import 'package:flutter_one/views/pages/emergency_shelters.dart';
import 'package:flutter_one/views/pages/medical_professionals.dart';
import 'package:flutter_one/views/pages/psychologists.dart';
import 'package:flutter_one/views/profile_page.dart';
import 'package:flutter_one/views/resource_page.dart';
import 'package:flutter_one/views/translate_page.dart';

class HomePage3 extends StatefulWidget {
  HomePage3({Key key}): super(key:key);
  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: CustomColors.mainOrange,
              pinned: true,
              expandedHeight: 75.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                    'Punjabi Resource Guide',
                  style: TextStyle(
                    color: CustomColors.textCharcoalGrey,
                    fontFamily: 'Montserrat'
                  ),
                ),
              ),
            ),
            SliverAppBar(
              backgroundColor: CustomColors.mainOrange,
              pinned: false,
              expandedHeight: 100.0,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.fromLTRB(35, 5, 35, 15),
                centerTitle: true,
                title: Text(
                  'A Handbook Full Of Resources Catered To The Needs of Punjabi-Speaking Edmontonians',
                  style: TextStyle(
                      color: CustomColors.textCharcoalGrey,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                alignment: Alignment.centerRight,
                height: 400,
                child: Image(
                  image: AssetImage('assets/sylogo.png'),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: IconButton(
                  splashColor: Colors.orange[300],
                  color: CustomColors.textCharcoalGrey,
                    icon: Icon(Icons.arrow_drop_down),
                    onPressed: (){}
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: CustomColors.infoCardPinkBeige,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.red[200],
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProfilePage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                                'Profile',
                              style: TextStyle(
                                color: CustomColors.textCharcoalGrey,
                                fontFamily: 'Montserrat',
                                letterSpacing: 2,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: CustomColors.infoCardPinkBeige,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.red[200],
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TranslatePage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                                'Translate',
                              style: TextStyle(
                                letterSpacing: 2,
                                  color: CustomColors.textCharcoalGrey,
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: CustomColors.infoCardPinkBeige,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.red[200],
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ResourcePage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Definition + Resources',
                              style: TextStyle(
                                letterSpacing: 2,
                                color: CustomColors.textCharcoalGrey,
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),













            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: CustomColors.infoCardPinkBeige,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.red[200],
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PsychologistsPage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Psychologists',
                              style: TextStyle(
                                color: CustomColors.textCharcoalGrey,
                                fontFamily: 'Montserrat',
                                letterSpacing: 2,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: CustomColors.infoCardPinkBeige,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.red[200],
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MedicalProfessionalsPage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Medical Professionals',
                              style: TextStyle(
                                letterSpacing: 2,
                                color: CustomColors.textCharcoalGrey,
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: CustomColors.infoCardPinkBeige,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.red[200],
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CounsellingServicesPage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Counselling Services',
                              style: TextStyle(
                                letterSpacing: 2,
                                color: CustomColors.textCharcoalGrey,
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: CustomColors.infoCardPinkBeige,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.red[200],
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EmergencySheltersPage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Emergency Shelters',
                              style: TextStyle(
                                color: CustomColors.textCharcoalGrey,
                                fontFamily: 'Montserrat',
                                letterSpacing: 2,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: CustomColors.infoCardPinkBeige,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.red[200],
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DomesticViolenceSupportsPage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Domestic Violence Supports',
                              style: TextStyle(
                                letterSpacing: 2,
                                color: CustomColors.textCharcoalGrey,
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: CustomColors.infoCardPinkBeige,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.red[200],
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ResourcePage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Definition + Resources',
                              style: TextStyle(
                                letterSpacing: 2,
                                color: CustomColors.textCharcoalGrey,
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: CustomColors.infoCardPinkBeige,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.red[200],
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProfilePage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Profile',
                              style: TextStyle(
                                color: CustomColors.textCharcoalGrey,
                                fontFamily: 'Montserrat',
                                letterSpacing: 2,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: CustomColors.infoCardPinkBeige,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.red[200],
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TranslatePage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Translate',
                              style: TextStyle(
                                letterSpacing: 2,
                                color: CustomColors.textCharcoalGrey,
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: CustomColors.infoCardPinkBeige,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.red[200],
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ResourcePage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Definition + Resources',
                              style: TextStyle(
                                letterSpacing: 2,
                                color: CustomColors.textCharcoalGrey,
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    height: 100,
                    width: 100,
                    child: Image(
                      image: AssetImage('assets/canada_flag.png'),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 25),
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
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        Text(
                          'Simran K. Dhillon',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
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
                            fontFamily: 'Montserrat'
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
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
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