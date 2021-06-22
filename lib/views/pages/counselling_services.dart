import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:PRH/constants/page_classes.dart';
import 'package:PRH/constants/theme_data.dart';
import 'package:maps_launcher/maps_launcher.dart';

class CounsellingServicesPage extends StatefulWidget {
  @override
  _CounsellingServicesPageState createState() => _CounsellingServicesPageState();
}

class _CounsellingServicesPageState extends State<CounsellingServicesPage> {
  List<Profile> counsellingServicesResources = [
    Profile(name: 'Momentum', specialization: 'Walk-In Counselling', address: '', phone: '780 757-0900' , email: 'null', description: 'Short term, walk-in counselling, on a pay-what-you-can basis. Offers online and over the phone during the pandemic', picture: 'assets/grey_circle.png'),
    Profile(name: 'Drop-In YEG', specialization: 'Drop In Counselling', address: '', phone: '780 423-2831', email: 'null', description: 'Offered via the Family Centre. Free, single session drop-in counselling located at multiple locations across the city. Available over the phone and video chat', picture:'assets/grey_circle.png' ),
    Profile(name: 'Firefly', specialization: 'Online Therapy and Counselling', address: '', phone: '587 400-0302' , email: 'null', description: 'Provides online therapy and online counselling for individuals who have experienced or are experiencing trauma or abuse. This service is not free', picture: 'assets/grey_circle.png'),
    Profile(name: 'YWCA Edmonton', specialization: 'Affordable Counselling', address: '', phone: '780 423-9922', email: 'null', description: 'Provides affordable counselling with subsidies available that can cover up to 99% of the cost. Does have multilingual services', picture:'assets/grey_circle.png' ),

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
                'Counselling Services',
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
                      'Counselling Resources',
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
                                counsellingServicesResources[index].name,
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
                                counsellingServicesResources[index].specialization,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height:10),
                              counsellingServicesResources[index].phone != ''? Container(
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
                                            launchURL('tel:'+counsellingServicesResources[index].phone);
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
                childCount: counsellingServicesResources.length,
                semanticIndexOffset: 2,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
