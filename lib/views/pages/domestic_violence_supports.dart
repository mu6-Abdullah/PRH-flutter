import 'package:flutter/material.dart';
import 'package:flutter_one/constants/page_classes.dart';
import 'package:flutter_one/constants/theme_data.dart';
import 'package:url_launcher/url_launcher.dart';
class DomesticViolenceSupportsPage extends StatefulWidget {
  @override
  _DomesticViolenceSupportsPageState createState() => _DomesticViolenceSupportsPageState();
}

class _DomesticViolenceSupportsPageState extends State<DomesticViolenceSupportsPage> {
  List<Profile> domesticViolenceSupportsList = [
    Profile(name: 'MHBC', specialization: 'Intervention Resources', address: '9538 107 Ave NW', phone: '780 423-1973' , email: 'mchb@mchb.org9538', description: ' the involvement of culturally-responsive individual and family counseling, bi-cultural parenting, child and youth support, and family mediation during the intervention process. This involvement is guided by the children, youth and families.', picture: 'assets/grey_circle.png'),
    Profile(name: 'Hina Syed', specialization: 'Health Broker', address: '9538 107 Ave NW', phone: '780 423-1973', email: 'nmchb@mchb.org9538', description: 'front line work, doing home visits, supporting families, making and implementing support plans, and she is well known and very much embedded in her community', picture:'assets/grey_circle.png' ),
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
                                  image: AssetImage(domesticViolenceSupportsList[index].picture),
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
                                      domesticViolenceSupportsList[index].name,
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
                                      domesticViolenceSupportsList[index].specialization,
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
                                    Text(
                                      domesticViolenceSupportsList[index].address,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          letterSpacing: 1,
                                          color: CustomColors.textCharcoalGrey,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
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
                                    Icon(
                                      Icons.location_on_rounded,
                                      color: CustomColors.cardTextBlue,
                                    ),
                                    SizedBox(width: 30),
                                    Icon(Icons.email,
                                      color: CustomColors.cardTextBlue,),
                                    SizedBox(width: 30),
                                    Icon(Icons.local_phone_rounded,
                                      color: CustomColors.cardTextBlue,),
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
                                        'Specializing in ' + domesticViolenceSupportsList[index].description,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing: 0.5,
                                            color: CustomColors.textCharcoalGrey,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.location_on_rounded),
                                            onPressed: null,
                                          ),
                                          Text(domesticViolenceSupportsList[index].address),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.email),
                                            onPressed: null,
                                          ),
                                          Text(domesticViolenceSupportsList[index].email),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.local_phone_rounded),
                                            onPressed: null,
                                          ),
                                          Text(domesticViolenceSupportsList[index].phone),
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
                childCount: domesticViolenceSupportsList.length,
                semanticIndexOffset: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
