import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:PRH/constants/theme_data.dart';
import 'package:PRH/constants/page_classes.dart';
class EmergencySheltersPage extends StatefulWidget {
  @override
  _EmergencySheltersPageState createState() => _EmergencySheltersPageState();
}

class _EmergencySheltersPageState extends State<EmergencySheltersPage> {
  List<Resource> emergencyShelterResources = [
    Resource(name:'Alberta Council of Womens Shelter',specialization:'Addiction Counselling/Crisis Support',phone:'1-866-331-3933' ),
    Resource(name:'A Safe Place',specialization:"Shelter for Abused Women & Children - Sherwood Park" ,phone:'780-464-7233' ),
    Resource(name:'Eremineskin Womens Shelter',specialization:'Emergency Shelter for women & Children Living on Reserve' ,phone:'780-585-4444' ),
    Resource(name:'Hope Mission',specialization:'Women and youth Emergency Shelter',phone:'780-422-2018' ),
    Resource(name:'Lurana shelter',specialization:'Emergency Shelter for women & Children Living on Reserve' ,phone:'780-424-5875'  ),
    Resource(name:'Safe House',specialization:'Emergency Shelter for women & Children Living on Reserve' ,phone:'780-474-9938'  ),
    Resource(name:'SAGE Seniors Safe House',specialization:'Independent living shelter for senior (60+ years)' ,phone:'780-454-8888'  ),
    Resource(name:'WEAC',specialization:'Womens emergency accomodation centre (18+ years)',phone:'780-423-5302'  ),
    Resource(name:'WIN House',specialization:'shelter for women & children fleeing domestiv violence' ,phone:'780-479-0058'  ),
    Resource(name:'YESS Youth',specialization:'Empowerment & support services (Under 19 years)' ,phone:'780-468-7070'  ),
  ];
  @override
  Widget build(BuildContext context) {
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
                'Emergency Shelters',
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
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Card(
                    color: CustomColors.infoCardPinkBeige,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "When Is My Home Unsafe?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                                color: CustomColors.cardTextOrange,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height:15 ,),
                          Text(
                            'Feeling like your home is unsafe can be a challenging emotion. It may be clear to some, and may not be to others. Any feeling of endangerment of one’s life from someone inside the home is reason to seek shelter elsewhere. Below we have listed some places of temporary refuge.',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Center(
                    child: Text(
                      'Resources',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Center(
                    child: Text(
                      'English - Speaking',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  )
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Center(
                    child: Text(
                      'Addiction Counselling/Crisis Support',
                      style: TextStyle(
                          fontSize: 18,
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
                                emergencyShelterResources[index].name,
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
                                emergencyShelterResources[index].specialization,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height:10),
                              Container(
                                child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("     Phone Line",
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
                                          fillColor: CustomColors.cardOrange,
                                          onPressed: () {
                                            launchURL('tel:'+emergencyShelterResources[index].phone);
                                          }
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                childCount: emergencyShelterResources.length,
                semanticIndexOffset: 2,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
