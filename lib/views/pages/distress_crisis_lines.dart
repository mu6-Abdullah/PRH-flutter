import 'package:flutter/material.dart';
import 'package:PRH/constants/page_classes.dart';
import 'package:PRH/constants/theme_data.dart';
import 'package:maps_launcher/maps_launcher.dart';

class DistressCrisisLinesPage extends StatefulWidget {
  @override
  _DistressCrisisLinesPageState createState() => _DistressCrisisLinesPageState();
}

class _DistressCrisisLinesPageState extends State<DistressCrisisLinesPage> {
  List<Profile> distressCrisisLines = [
    Profile(name: 'Child Abuse Hotline' , specialization: '24 hour help line', address: '' ,phone: '780 784-2213' , email: 'null' , description: '24 hour help line, 170 languages' , picture: 'assets/grey_circle.png' ),
    Profile(name: 'Children Crisis \nResponse Team', specialization: '24 hour Alberta Health Services' , address: '',phone: '866-845-3425' , email:'null' , description: '24 hour Alberta Health Services - Children' , picture: 'assets/grey_circle.png' ),
    Profile(name: 'CMHA 24-Hour \nDistress Line', specialization: '24 hour distress line' , address: '',phone:'780 702-1725' , email: 'null' , description: 'Provides free legal information and advice to low to moderate income people in the Edmonton area', picture: 'assets/grey_circle.png' ),
    Profile(name: 'Emergency Social \nServices', specialization: '24 hour assistance', address: '',phone: '800-661-3446' , email: 'ca.information@OCYA.alberta.ca', description: 'The OCYA is all about helping young people who are receiving services. Whether this be through advocating, arranging for legal representation, or engaging the community on issues that matter to young people, the OCYA cares about the people they serve' , picture: 'assets/grey_circle.png' ),
    Profile(name: 'Family Violence \nInfo Line', specialization: '24 hour helpline, 170 languages' , address: '',phone: '780 784-7500' , email: 'null' , description: 'Offers free consultation for legal action', picture: 'assets/grey_circle.png' ),
    Profile(name: 'Human Trafficking \nHotline', specialization: '24 hour helpline' , address: '',phone:'780 702-1725' , email: 'null' , description: 'Provides free legal information and advice to low to moderate income people in the Edmonton area', picture: 'assets/grey_circle.png' ),
    Profile(name: 'Kids Help Phone', specialization: '24 hour helpline ', address: '',phone: '800-661-3446' , email: 'ca.information@OCYA.alberta.ca', description: 'The OCYA is all about helping young people who are receiving services. Whether this be through advocating, arranging for legal representation, or engaging the community on issues that matter to young people, the OCYA cares about the people they serve' , picture: 'assets/grey_circle.png' ),
    Profile(name: 'Kids Kottage', specialization: '24 hour crisis and nursery' , address: '',phone: '780 784-7500' , email: 'null' , description: 'Offers free consultation for legal action', picture: 'assets/grey_circle.png' ),
    Profile(name: 'Senior Abuse Helpline', specialization: '24 hour helpline' , address: '',phone:'780 454-8888' , email: 'null' , description: '24 hour senior abuse line', picture: 'assets/grey_circle.png' ),
    Profile(name: 'Sexual Assault Centre', specialization: '24 hour helpline ', address: '',phone: '780 423-4121' , email: 'null', description: '24 hour sexual assault crisis line' , picture: 'assets/grey_circle.png' ),
    Profile(name: 'Suicide Prevention \nHotline', specialization: '24 hour helpline' , address: '',phone: '888-784-2433' , email: 'null' , description: '24 hour suicide help line', picture: 'assets/grey_circle.png' ),

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
                  'Domestic Violence Supports',
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
                                    image: AssetImage(distressCrisisLines[index].picture),
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
                                        distressCrisisLines[index].name,
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
                                        distressCrisisLines[index].specialization,
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
                                      distressCrisisLines[index].address != '' ? Text(
                                        distressCrisisLines[index].address,
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
                                      distressCrisisLines[index].address != '' ? Icon(
                                        Icons.location_on_rounded,
                                        color: CustomColors.cardTextBlue,
                                      ): SizedBox(width: 0,),
                                      distressCrisisLines[index].address != '' ? SizedBox(width: 30) : SizedBox(width: 0,),
                                      distressCrisisLines[index].email != 'null' ? Icon(Icons.email,
                                        color: CustomColors.cardTextBlue,
                                      ) : SizedBox(width: 0),
                                      distressCrisisLines[index].email != 'null' ? SizedBox(width: 30) : SizedBox(width: 0,),
                                      distressCrisisLines[index].phone != 'null' ? Icon(Icons.local_phone_rounded,
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
                                          'Specializing in ' + distressCrisisLines[index].description,
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              letterSpacing: 0.5,
                                              color: CustomColors.textCharcoalGrey,
                                              fontWeight: FontWeight.w500
                                          ),
                                        ),
                                        distressCrisisLines[index].address != '' ? Row(
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
                                              onPressed: () => MapsLauncher.launchQuery(distressCrisisLines[index].address + ' Edmonton AB'),
                                            ),
                                            Text(distressCrisisLines[index].address),
                                          ],
                                        ): SizedBox(height: 0),
                                        distressCrisisLines[index].email != 'null' ? Row(
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
                                                launchURL('mailto:'+distressCrisisLines[index].email);
                                              },
                                            ),
                                            Text(distressCrisisLines[index].email),
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
                                                  launchURL('tel:'+distressCrisisLines[index].phone);
                                                }
                                            ),
                                            Text(distressCrisisLines[index].phone),
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
                  childCount: distressCrisisLines.length,
                  semanticIndexOffset: 2,
                ),
              )
            ],
          ),
        ),
      );
    }
}
