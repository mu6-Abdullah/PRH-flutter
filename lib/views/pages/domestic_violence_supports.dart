import 'package:flutter/material.dart';
import 'package:flutter_one/constants/page_classes.dart';
import 'package:flutter_one/constants/theme_data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:maps_launcher/maps_launcher.dart';
class DomesticViolenceSupportsPage extends StatefulWidget {
  @override
  _DomesticViolenceSupportsPageState createState() => _DomesticViolenceSupportsPageState();
}

class _DomesticViolenceSupportsPageState extends State<DomesticViolenceSupportsPage> {
  List<Profile> punjabiDomesticViolenceSupportsList = [
    Profile(name: 'MHBC', specialization: 'Intervention Resources', address: '9538 107 Ave NW', phone: '780 423-1973' , email: 'mchb@mchb.org9538', description: ' the involvement of culturally-responsive individual and family counseling, bi-cultural parenting, child and youth support, and family mediation during the intervention process. This involvement is guided by the children, youth and families.', picture: 'assets/grey_circle.png'),
    Profile(name: 'Hina Syed', specialization: 'Health Broker', address: '9538 107 Ave NW', phone: '780 423-1973', email: 'nmchb@mchb.org9538', description: 'front line work, doing home visits, supporting families, making and implementing support plans, and she is well known and very much embedded in her community', picture:'assets/grey_circle.png' ),

  ];
  List<Profile> englishDomesticViolenceSupportsList = [
    Profile(name: 'EPOP', specialization: 'Emergency Protection Order \nProgram', address: '', phone: 'null' , email: 'null', description: 'Legal Aid Alberta helps victims of family violence through its Emergency Protection Order Program. The Emergency Protection Order Program provides victims of domestic violence with information and a lawyer who can help them to obtain and confirm protection orders. The Emergency Protection Order Program also provides ongoing information, risk assessment and safety plans to victims of family violence.', picture: 'assets/grey_circle.png'),
    Profile(name: 'FVIL', specialization: 'Family Violence Info Line', address: '', phone: '310-1818', email: 'null', description: 'The Family Violence Info Line is a 24/7 telephone service and online chat service for anyone who is impacted by family violence/abuse or anyone who knows someone is impacted.', picture:'assets/grey_circle.png' ),
    Profile(name: 'SAIF', specialization: 'Stop Abuse in Families', address: '', phone: '780 460-2195' , email: 'info@stopabuse.ca', description: ' AIF offers support groups, individual and group counselling, elder abuse support, and educational prevention programs to schools and groups in the St. Albert community.', picture: 'assets/grey_circle.png'),
    Profile(name: 'The Family Centre', specialization: 'Health Broker', address: '', phone: '780 423-2831', email: 'null', description: 'The Family Centre provides workshops, therapy, family support services, interpretation, and translation services to foster healthy families in healthy communities.', picture:'assets/grey_circle.png' ),
    Profile(name: 'The Today Centre', specialization: 'Intervention Resources', address: '', phone: '780 455-6880' , email: 'null', description: ' The Today Centre delivers a comprehensive, multidisciplinary response to family violence, including sexual assault. It offers a safe place for those affected by domestic violence to access timely, short-term services and support.', picture: 'assets/grey_circle.png'),
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
                      'Punjabi',
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
                                  image: AssetImage(punjabiDomesticViolenceSupportsList[index].picture),
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
                                      punjabiDomesticViolenceSupportsList[index].name,
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
                                      punjabiDomesticViolenceSupportsList[index].specialization,
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
                                    punjabiDomesticViolenceSupportsList[index].address != '' ? Text(
                                      punjabiDomesticViolenceSupportsList[index].address,
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
                                    punjabiDomesticViolenceSupportsList[index].address != '' ? Icon(
                                      Icons.location_on_rounded,
                                      color: CustomColors.cardTextBlue,
                                    ): SizedBox(width: 0,),
                                    punjabiDomesticViolenceSupportsList[index].address != '' ? SizedBox(width: 30) : SizedBox(width: 0,),
                                    punjabiDomesticViolenceSupportsList[index].email != 'null' ? Icon(Icons.email,
                                      color: CustomColors.cardTextBlue,
                                    ) : SizedBox(width: 0),
                                    punjabiDomesticViolenceSupportsList[index].email != 'null' ? SizedBox(width: 30) : SizedBox(width: 0,),
                                    punjabiDomesticViolenceSupportsList[index].phone != 'null' ? Icon(Icons.local_phone_rounded,
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
                                        'Specializing in ' + punjabiDomesticViolenceSupportsList[index].description,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing: 0.5,
                                            color: CustomColors.textCharcoalGrey,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      punjabiDomesticViolenceSupportsList[index].address != '' ? Row(
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
                                            onPressed: () => MapsLauncher.launchQuery(punjabiDomesticViolenceSupportsList[index].address + ' Edmonton AB'),
                                          ),
                                          Text(punjabiDomesticViolenceSupportsList[index].address),
                                        ],
                                      ): SizedBox(height: 0),
                                      punjabiDomesticViolenceSupportsList[index].email != 'null' ? Row(
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
                                              launchURL('mailto:'+punjabiDomesticViolenceSupportsList[index].email);
                                            },
                                          ),
                                          Text(punjabiDomesticViolenceSupportsList[index].email),
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
                                                launchURL('tel:'+punjabiDomesticViolenceSupportsList[index].phone);
                                              }
                                          ),
                                          Text(punjabiDomesticViolenceSupportsList[index].phone),
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
                childCount: punjabiDomesticViolenceSupportsList.length,
                semanticIndexOffset: 2,
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
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Center(
                    child: Text(
                      'English',
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
                  color: CustomColors.cardOrange,
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
                      color: CustomColors.cardOrange,
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
                                  image: AssetImage(englishDomesticViolenceSupportsList[index].picture),
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
                                      englishDomesticViolenceSupportsList[index].name,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 22,
                                          letterSpacing: 1.5,
                                          color: CustomColors.cardTextOrange,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      englishDomesticViolenceSupportsList[index].specialization,
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
                                    englishDomesticViolenceSupportsList[index].address != '' ? Text(
                                      englishDomesticViolenceSupportsList[index].address,
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
                                    englishDomesticViolenceSupportsList[index].address != '' ? Icon(
                                      Icons.location_on_rounded,
                                      color: CustomColors.cardTextOrange,
                                    ): SizedBox(width: 0,),
                                    englishDomesticViolenceSupportsList[index].address != '' ? SizedBox(width: 30) : SizedBox(width: 0,),
                                    englishDomesticViolenceSupportsList[index].email != 'null' ? Icon(Icons.email,
                                      color: CustomColors.cardTextOrange,
                                    ) : SizedBox(width: 0),
                                    englishDomesticViolenceSupportsList[index].email != 'null' ? SizedBox(width: 30) : SizedBox(width: 0,),
                                    englishDomesticViolenceSupportsList[index].phone != 'null' ? Icon(Icons.local_phone_rounded,
                                      color: CustomColors.cardTextOrange,
                                    ) : SizedBox(width: 0,),
                                    SizedBox(width: 30),
                                  ]
                              ),
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: CustomColors.lighterCardtextOrange,
                                      // color: Colors.orange[50],
                                      borderRadius: BorderRadius.circular(20.0)

                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                  margin: EdgeInsets.fromLTRB(10, 10, 10, 30),
                                  // margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Specializing in ' + englishDomesticViolenceSupportsList[index].description,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing: 0.5,
                                            color: CustomColors.textCharcoalGrey,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      englishDomesticViolenceSupportsList[index].address != '' ? Row(
                                        children: <Widget>[
                                          RawMaterialButton(
                                            constraints: BoxConstraints(
                                                minWidth: 50
                                            ) ,
                                            fillColor: CustomColors.mainOrange,
                                            shape: CircleBorder(),
                                            padding: EdgeInsets.all(6.0),
                                            child: Icon(
                                              Icons.location_on_rounded,
                                              color: Colors.white,
                                            ),
                                            onPressed: () => MapsLauncher.launchQuery(englishDomesticViolenceSupportsList[index].address + ' Edmonton AB'),
                                          ),
                                          Text(englishDomesticViolenceSupportsList[index].address),
                                        ],
                                      ): SizedBox(height: 0),
                                      englishDomesticViolenceSupportsList[index].email != 'null' ? Row(
                                        children: <Widget>[
                                          RawMaterialButton(
                                            constraints: BoxConstraints(
                                                minWidth: 50
                                            ) ,
                                            fillColor: CustomColors.mainOrange,
                                            shape: CircleBorder(),
                                            padding: EdgeInsets.all(6.0),
                                            child: Icon(
                                              Icons.email,
                                              color: Colors.white,
                                            ),
                                            onPressed: (){
                                              launchURL('mailto:'+englishDomesticViolenceSupportsList[index].email);
                                            },
                                          ),
                                          Text(englishDomesticViolenceSupportsList[index].email),
                                        ],
                                      ): SizedBox(height: 0),
                                      englishDomesticViolenceSupportsList[index].phone != 'null' ? Row(
                                        children: <Widget>[
                                          RawMaterialButton(
                                              constraints: BoxConstraints(
                                                  minWidth: 50
                                              ) ,
                                              child: Icon(
                                                Icons.local_phone_rounded,
                                                color: Colors.white,
                                              ),
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.all(6.0),
                                              fillColor: CustomColors.mainOrange,
                                              onPressed: () {
                                                launchURL('tel:'+englishDomesticViolenceSupportsList[index].phone);
                                              }
                                          ),
                                          Text(englishDomesticViolenceSupportsList[index].phone),
                                        ],
                                      ): SizedBox(height: 0),
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
                childCount: englishDomesticViolenceSupportsList.length,
                semanticIndexOffset: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
