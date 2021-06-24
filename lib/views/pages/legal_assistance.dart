import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:PRH/constants/page_classes.dart';
import 'package:PRH/constants/theme_data.dart';
import 'package:maps_launcher/maps_launcher.dart';
class LegalAssistancePage extends StatefulWidget {
  @override
  _LegalAssistancePageState createState() => _LegalAssistancePageState();
}

class _LegalAssistancePageState extends State<LegalAssistancePage> {
  List<Profile> legalAssistanceProfiles = [
    Profile(name: 'ILA Project' , specialization: 'Legal Advice', address: '' ,phone: '780 784-2213' , email: 'null' , description: 'Provides legal assistance to survivors. Provides up to 4 hours worth of free legal advice' , picture: 'assets/grey_circle.png' ),
    Profile(name: 'Legal Aid Alberta', specialization: 'Offer legal assistance' , address: '',phone: '866-845-3425' , email:'null' , description: 'Assists Albertans facing legal issues by helping them navigate their journey through the justice system', picture: 'assets/grey_circle.png' ),
    Profile(name: 'ECLC', specialization: 'Provide free legal information' , address: '',phone:'780 702-1725' , email: 'null' , description: 'Provides free legal information and advice to low to moderate income people in the Edmonton area', picture: 'assets/grey_circle.png' ),
    Profile(name: 'OCYA', specialization: 'Help people receiving services', address: '',phone: '800-661-3446' , email: 'ca.information@OCYA.alberta.ca', description: 'The OCYA is all about helping young people who are receiving services. Whether this be through advocating, arranging for legal representation, or engaging the community on issues that matter to young people, the OCYA cares about the people they serve' , picture: 'assets/grey_circle.png' ),
    Profile(name: 'Liberty Law', specialization: 'Offers legal consultation' , address: '',phone: '780 784-7500' , email: 'null' , description: 'Offers free consultation for legal action', picture: 'assets/grey_circle.png' ),
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
                'Legal Assistance',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              // actions: <Widget>[
              //   IconButton(
              //     icon: Icon(Icons.menu),
              //     onPressed: (){},
              //   )
              // ],
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
                      'Legal Resources',
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
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Card(
                      color: CustomColors.cardOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                        // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              legalAssistanceProfiles[index].name,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 22,
                                  letterSpacing: 1.5,
                                  color: CustomColors.cardTextOrange,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              legalAssistanceProfiles[index].description,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  letterSpacing: 1,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(height:10),
                            legalAssistanceProfiles[index].phone != '' ? Container(
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('    Phone Line',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          letterSpacing: 1,
                                          color: CustomColors.textCharcoalGrey,
                                          fontWeight: FontWeight.w500
                                      ),),
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
                                        fillColor: CustomColors.cardIconOrange,
                                        onPressed: () {
                                          launchURL('tel:'+legalAssistanceProfiles[index].phone);
                                        }
                                    ),
                                  ],
                                ),
                              ),
                            ): SizedBox(height:0),
                            legalAssistanceProfiles[index].email != '' ? Container(
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('    Email',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          letterSpacing: 1,
                                          color: CustomColors.textCharcoalGrey,
                                          fontWeight: FontWeight.w500
                                      ),),
                                    RawMaterialButton(
                                        constraints: BoxConstraints(
                                            minWidth: 50
                                        ) ,
                                        child: Icon(
                                          Icons.email,
                                          color: Colors.white,
                                        ),
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(6.0),
                                        fillColor: CustomColors.cardIconOrange,
                                        onPressed: () {
                                          launchURL('mailto:'+legalAssistanceProfiles[index].email);
                                        }
                                    ),
                                  ],
                                ),
                              ),
                            ): SizedBox(height:0),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                childCount: legalAssistanceProfiles.length,
                semanticIndexOffset: 2,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
