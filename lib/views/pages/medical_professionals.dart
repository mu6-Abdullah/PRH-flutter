import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:PRH/constants/page_classes.dart';
import 'package:PRH/constants/theme_data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:maps_launcher/maps_launcher.dart';
class MedicalProfessionalsPage extends StatefulWidget {
  @override
  _MedicalProfessionalsPageState createState() => _MedicalProfessionalsPageState();
}

class _MedicalProfessionalsPageState extends State<MedicalProfessionalsPage> {

  List<Profile> mpProfileList = [
    Profile(name: 'Dr. Sukhdeep Dulai', specialization: 'General Checkups + Vaccinations', address: '8440 112ST NW', phone: '780-407-6198',email: 'null', description: 'Specializing in general check-ups and travel vaccinations.', picture : 'assets/grey_circle.png'),
    Profile(name: 'Dr Jagdeep Brar', specialization: 'Specialization in Women and Kids' , address: '#304–6203 28 Ave', phone: '780-756-9677' , email: 'null', description: 'Punjabi speaking Indian doctor (GP) in Edmonton specializing in men, women and kids health issues.' , picture: 'assets/grey_circle.png'),
    Profile(name: 'Dr Pramod K Verma', specialization: 'Family Medicine', address: '2911 66 St NW', phone: '780-450-2400',email: 'null' , description: 'Hindi and Punjabi speaking Indian doctor - specializing in gynecology (OBGYN) in Edmonton offering a wide variety of medical services in regards to female and natal health.' ,picture: 'assets/grey_circle.png'),
    Profile(name: 'Dr. Rajinder Cheema', specialization: 'Family Medicine', address: '14030 23 Ave NW', phone: '780-757-4220' ,email: 'null' , description:'Specializing in Family Medicine' ,picture: 'assets/grey_circle.png'),
    Profile(name: 'Dr. Avi Aulakh', specialization: 'Alcohol and Substance Addiction' , address: '6730 75 Street NW 2ND-FLOOR', phone:'780-761-6767' ,email: 'null' , description: 'Savera Medical Centre is a clinic dedicated towards aiding those struggling with opioid, alcohol and other substance addictions.',picture: 'assets/grey_circle.png'),
  ];
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                height: 10,
              ),
            ),
            SliverAppBar(
              centerTitle: true,
              title: Text(
                'Medical Professionals',
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
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index){
                    return Container(
                      // padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Card(
                        color: CustomColors.cardBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                                  // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                  child: Image(
                                    image: AssetImage(mpProfileList[index].picture),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        mpProfileList[index].name,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 22,
                                            letterSpacing: 1.5,
                                            color: CustomColors.cardTextBlue,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        mpProfileList[index].specialization,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing: 1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      mpProfileList[index].address != 'null' ? Text(
                                        mpProfileList[index].address,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing: 1,
                                            color: CustomColors.textCharcoalGrey,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ): SizedBox(height: 0),
                                    ]
                                )
                              ],
                            ),
                            Theme(
                              data:theme,
                              child: ExpansionTile(
                                title: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(width: 90),
                                      mpProfileList[index].address != 'null' ? Icon(
                                        Icons.location_on_rounded,
                                        color: CustomColors.cardTextBlue,
                                      ): SizedBox(width: 0,),
                                      mpProfileList[index].address != 'null' ? SizedBox(width: 30) : SizedBox(width: 0,),
                                      mpProfileList[index].email != 'null' ? Icon(Icons.email,
                                        color: CustomColors.cardTextBlue,
                                      ) : SizedBox(width: 0),
                                      mpProfileList[index].email != 'null' ? SizedBox(width: 30) : SizedBox(width: 0,),
                                      mpProfileList[index].phone != 'null' ? Icon(Icons.local_phone_rounded,
                                        color: CustomColors.cardTextBlue,
                                      ) : SizedBox(width: 0,),
                                      SizedBox(width: 30),
                                    ]
                                ),
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: CustomColors.lighterCardtextBlue,
                                        borderRadius: BorderRadius.circular(20.0)

                                    ),
                                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                    margin: EdgeInsets.fromLTRB(10, 10, 10, 30),
                                    // margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Specializing in ' + mpProfileList[index].description,
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              letterSpacing: 0.5,
                                              color: CustomColors.textCharcoalGrey,
                                              fontWeight: FontWeight.w500
                                          ),
                                        ),
                                        mpProfileList[index].address != 'null' ? Row(
                                          children: <Widget>[
                                            RawMaterialButton(
                                              constraints: BoxConstraints(
                                                  minWidth: 50
                                              ) ,
                                              fillColor: CustomColors.lighterCardtextBlue,
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.all(6.0),
                                              child: Icon(
                                                Icons.location_on_rounded,
                                                color: CustomColors.cardTextBlue,
                                              ),
                                              onPressed: () => MapsLauncher.launchQuery(mpProfileList[index].address + ' Edmonton AB'),
                                            ),
                                            Text(mpProfileList[index].address),
                                          ],
                                        ): SizedBox(height: 0),
                                        mpProfileList[index].email != 'null' ? Row(
                                          children: <Widget>[
                                            RawMaterialButton(
                                              constraints: BoxConstraints(
                                                  minWidth: 50
                                              ) ,
                                              fillColor: CustomColors.lighterCardtextBlue,
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.all(6.0),
                                              child: Icon(
                                                Icons.email,
                                                color: CustomColors.cardTextBlue,
                                              ),
                                              onPressed: (){
                                                launchURL('mailto:'+mpProfileList[index].email);
                                              },
                                            ),
                                            Text(mpProfileList[index].email),
                                          ],
                                        ): SizedBox(height: 0),
                                        Row(
                                          children: <Widget>[
                                            RawMaterialButton(
                                                constraints: BoxConstraints(
                                                    minWidth: 50
                                                ) ,
                                                child: Icon(
                                                  Icons.local_phone_rounded,
                                                  color: CustomColors.cardTextBlue,
                                                ),
                                                shape: CircleBorder(),
                                                padding: EdgeInsets.all(6.0),
                                                fillColor: CustomColors.lighterCardtextBlue,
                                                onPressed: () {
                                                  launchURL('tel:'+mpProfileList[index].phone);
                                                }
                                            ),
                                            Text(mpProfileList[index].phone),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                childCount: mpProfileList.length,
                semanticIndexOffset: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
