import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:PRH/constants/page_classes.dart';
import 'package:PRH/constants/theme_data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:maps_launcher/maps_launcher.dart';

class PsychologistsPage extends StatefulWidget {
  @override
  _PsychologistsState createState() => _PsychologistsState();
}

class _PsychologistsState extends State<PsychologistsPage> {
  List<Profile> psychologistProfiles = [
    Profile(name: 'Bharat Sharma', specialization: 'Registered Psychotherapist', address: '2923 66 St NW', phone: '780 666 7351' , email: 'null', description: 'Addiction,  Anger Management and behavioural Issues', picture: 'assets/grey_circle.png'),
    Profile(name: 'Harpreet Kaur Gill', specialization: 'Registered Psychologist/ PhD', address: '8215-112 Street Suite 506', phone: '587 401 3154', email: 'null', description: 'Depression, anxiety, relationship issues', picture:'assets/grey_circle.png' ),
    Profile(name: 'Jasbir Grewal', specialization: 'Registered Prov. Psychologist' , address: '2307 90b St SW', phone: '587 852 5456', email:'null' , description: 'Anxiety, Depression, Trauma and PTSD', picture:'assets/grey_circle.png' ),
    Profile(name: 'Rupinder Bains', specialization: 'Psychologist', address: 'null' , phone: '587 906 1467', email: 'null', description: 'Self Esteem, anxiety, Stress', picture: 'assets/grey_circle.png'),
    Profile(name: 'Ajay Pandhi', specialization: 'Psychologist' , address: '75St 105 Ave NW' , phone: '866 301 4736', email: 'null', description: 'Trauma and PTSD, codependency, Relationship Issues' , picture: 'assets/grey_circle.png'),
    Profile(name: 'REACH Services', specialization: 'Psychological Services', address: '12547 129 St NW', phone: '587 400 2328', email:'mu6@ualberta.ca' , description: 'Offers psychological services', picture: 'assets/grey_circle.png'),
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
                      'Psychologist Profiles',
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
                margin: const EdgeInsets.symmetric(horizontal: 160, vertical: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColors.cardBlue,
                ),
                height: 5,
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
                                  image: AssetImage(psychologistProfiles[index].picture),
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
                                      psychologistProfiles[index].name,
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
                                      psychologistProfiles[index].specialization,
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
                                    psychologistProfiles[index].address != 'null' ? Text(
                                      psychologistProfiles[index].address,
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
                                    psychologistProfiles[index].address != 'null' ? Icon(
                                      Icons.location_on_rounded,
                                      color: CustomColors.cardTextBlue,
                                    ): SizedBox(width: 0,),
                                    psychologistProfiles[index].address != 'null' ? SizedBox(width: 30) : SizedBox(width: 0,),
                                    psychologistProfiles[index].email != 'null' ? Icon(Icons.email,
                                      color: CustomColors.cardTextBlue,
                                    ) : SizedBox(width: 0),
                                    psychologistProfiles[index].email != 'null' ? SizedBox(width: 30) : SizedBox(width: 0,),
                                    psychologistProfiles[index].phone != 'null' ? Icon(Icons.local_phone_rounded,
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
                                        psychologistProfiles[index].description,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing: 0.5,
                                            color: CustomColors.textCharcoalGrey,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      psychologistProfiles[index].address != 'null' ? Row(
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
                                              onPressed: () => MapsLauncher.launchQuery(psychologistProfiles[index].address + ' Edmonton AB'),
                                          ),
                                          Text(psychologistProfiles[index].address),
                                        ],
                                      ): SizedBox(height: 0),
                                      psychologistProfiles[index].email != 'null' ? Row(
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
                                              launchURL('mailto:'+psychologistProfiles[index].email);
                                            },
                                          ),
                                          Text(psychologistProfiles[index].email),
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
                                                launchURL('tel:'+psychologistProfiles[index].phone);
                                              }
                                          ),
                                          Text(psychologistProfiles[index].phone),
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
                childCount: psychologistProfiles.length,
                semanticIndexOffset: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
