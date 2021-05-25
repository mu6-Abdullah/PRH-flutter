import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_one/constants/page_classes.dart';
import 'package:flutter_one/constants/theme_data.dart';

class PhysicalAndMentalHealthPage extends StatefulWidget {
  const PhysicalAndMentalHealthPage({Key key}) : super(key: key);
  @override
  _PhysicalAndMentalHealthPageState createState() => _PhysicalAndMentalHealthPageState();
}

class _PhysicalAndMentalHealthPageState extends State<PhysicalAndMentalHealthPage> {
  List<Resource> mentalHealthResources = [
    Resource(name:'YWCA Compass Sexual Wellness Program' ,specialization: 'Pro-choice program that provides sexual health education in edmonton and greater area' ,phone:'' ,url:'https://www.ywcaofedmonton.org/programs-and-services/sexual-health-and-wellness/' ),
    Resource(name:'Mental Health Help Line' ,specialization:'24/7 confidential telephone service, provides information on mental health service and programs, and gives advice' ,phone:'1-877-303-2642' ,url:'' ),
    Resource(name:'Edmonton Distress Line' ,specialization: '24/7 confidential supportive listening service, offer support with mental health , financial, domestic abuse, suicidal issues',phone:'780-482-4357'  ,url:'' ),
    Resource(name:'Sexual Assault Response Team' ,specialization:'team of registered nurses who provide compassionate, confidential care to anyone sexually assaulted in the past 7 days' ,phone:'780-408-5465'  ,url:'' ),
    Resource(name:'Women’s health option' ,specialization:'clinic that is pro-choice and provides education, counselling, birth control referrals' ,phone:'780-484-1124' ,url:'' ),


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
                'Physical/Mental Health',
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
                    color: CustomColors.cardOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "What is Physical Health?",
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
                            'Addiction to substances such as drugs and alcohol is present when one is  psychologically or physically dependent on such substance. Problematic substance use happens when someone uses drugs or alcohol that negatively impacts their health and life.',
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
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Card(
                    color: CustomColors.cardBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "What is Mental Health?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                                color: CustomColors.cardTextBlue,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height:15 ,),
                          Text(
                            'Addiction to substances such as drugs and alcohol is present when one is  psychologically or physically dependent on such substance. Problematic substance use happens when someone uses drugs or alcohol that negatively impacts their health and life.',
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
                              mentalHealthResources[index].name,
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
                              mentalHealthResources[index].specialization,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  letterSpacing: 1,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(height:10),
                            mentalHealthResources[index].phone != ''? Container(
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
                                            launchURL('tel:'+mentalHealthResources[index].phone);
                                          }
                                      ),
                                    ],
                                  ),
                                ),
                              ): SizedBox(height:0),
                            mentalHealthResources[index].url != '' ? Container(
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("     Website",
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
                                          Icons.radio_button_off_rounded,
                                          color: Colors.white,
                                        ),
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(6.0),
                                        fillColor: CustomColors.cardOrange,
                                        onPressed: () {
                                          launchURL(mentalHealthResources[index].url);
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
                childCount: mentalHealthResources.length,
                semanticIndexOffset: 2,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
