import 'package:PRH/views/pages/addiction_supports.dart';
import 'package:PRH/views/pages/court_supports.dart';
import 'package:PRH/views/pages/emergency_funding.dart';
import 'package:PRH/views/intro_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:PRH/constants/theme_data.dart';
import 'package:PRH/views/pages/counselling_services.dart';
import 'package:PRH/views/pages/distress_crisis_lines.dart';
import 'package:PRH/views/pages/domestic_violence_supports.dart';
import 'package:PRH/views/pages/emergency_shelters.dart';
import 'package:PRH/views/pages/legal_assistance.dart';
import 'package:PRH/views/pages/medical_professionals.dart';
import 'package:PRH/views/pages/physical_and_mental_health.dart';
import 'package:PRH/views/pages/psychologists.dart';
import 'package:PRH/views/profile_page.dart';
import 'package:PRH/views/resource_page.dart';
import 'package:PRH/views/translate_page.dart';

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
            SliverToBoxAdapter(

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
                alignment: Alignment.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: CustomColors.textCharcoalGrey,
                                fontFamily: 'Montserrat',
                                letterSpacing: 2,
                                fontSize: 13,
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
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                letterSpacing: 2,
                                color: CustomColors.textCharcoalGrey,
                                fontFamily: 'Montserrat',
                                fontSize: 13,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                              textAlign: TextAlign.center,
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
                            MaterialPageRoute(builder: (context) => LegalAssistancePage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Legal Assistance',
                              textAlign: TextAlign.center,
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
                            MaterialPageRoute(builder: (context) => DistressCrisisLinesPage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Distress and Crisis Lines',
                              textAlign: TextAlign.center,
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
                            MaterialPageRoute(builder: (context) => PhysicalAndMentalHealthPage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Physical and Mental Health',
                              textAlign: TextAlign.center,
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
                            MaterialPageRoute(builder: (context) => EmergencyFundingPage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Emergency Funding',
                              textAlign: TextAlign.center,
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
                            MaterialPageRoute(builder: (context) => CourtSupportsPage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Court Supports',
                              textAlign: TextAlign.center,
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
                            MaterialPageRoute(builder: (context) => AddictionSupportsPage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Addiction Support',
                              textAlign: TextAlign.center,
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
                            MaterialPageRoute(builder: (context) => IntroPage()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              'Home Page Example',
                              textAlign: TextAlign.center,
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