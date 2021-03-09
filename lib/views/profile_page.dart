import 'package:flutter/material.dart';
import 'package:flutter_one/constants/page_classes.dart';
import 'package:flutter_one/constants/theme_data.dart';
import 'package:maps_launcher/maps_launcher.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Profile> profileList = [
    Profile(name: 'Profile 1 Name', specialization: 'Profile Specialization', address: 'Address here', phone: '780-123-4567', email: 'emailaddress@gmail.com',description: 'The following is a description for profile 1', picture: 'assets/grey_circle.png'),
    Profile(name: 'Profile 2 Name', specialization: 'Profile Specialization', address: 'Address here', phone: '780-123-4567', email: 'emailaddress@gmail.com',description: 'The following is a description for profile 2', picture: 'assets/grey_circle.png')
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
                'Psychologists',
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
                                  image: AssetImage(profileList[index].picture),
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
                                      profileList[index].name,
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
                                      profileList[index].specialization,
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
                                    profileList[index].address != 'null' ? Text(
                                      profileList[index].address,
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
                                    profileList[index].address != 'null' ? Icon(
                                      Icons.location_on_rounded,
                                      color: CustomColors.cardTextBlue,
                                    ): SizedBox(width: 0,),
                                    profileList[index].address != 'null' ? SizedBox(width: 30) : SizedBox(width: 0,),
                                    profileList[index].email != 'null' ? Icon(Icons.email,
                                      color: CustomColors.cardTextBlue,
                                    ) : SizedBox(width: 0),
                                    profileList[index].email != 'null' ? SizedBox(width: 30) : SizedBox(width: 0,),
                                    profileList[index].phone != 'null' ? Icon(Icons.local_phone_rounded,
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
                                        'Specializing in ' + profileList[index].description,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing: 0.5,
                                            color: CustomColors.textCharcoalGrey,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      profileList[index].address != 'null' ? Row(
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
                                            onPressed: () => MapsLauncher.launchQuery(profileList[index].address + ' Edmonton AB'),
                                          ),
                                          Text(profileList[index].address),
                                        ],
                                      ): SizedBox(height: 0),
                                      profileList[index].email != 'null' ? Row(
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
                                              launchURL('mailto:'+profileList[index].email);
                                            },
                                          ),
                                          Text(profileList[index].email),
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
                                                launchURL('tel:'+profileList[index].phone);
                                              }
                                          ),
                                          Text(profileList[index].phone),
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
                childCount: profileList.length,
                semanticIndexOffset: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}

