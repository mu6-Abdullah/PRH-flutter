import 'package:flutter/material.dart';
import 'package:flutter_one/constants/page_classes.dart';
import 'package:flutter_one/constants/theme_data.dart';
class MedicalProfessionalsPage extends StatefulWidget {
  @override
  _MedicalProfessionalsPageState createState() => _MedicalProfessionalsPageState();
}

class _MedicalProfessionalsPageState extends State<MedicalProfessionalsPage> {
  List<Profile> mpProfileList = [
    Profile(name: 'Dr. Sukhdeep Dulai', specialization: 'General Checkups + Vaccinations', address: '8440 112ST NW', phone: '780-407-6198', description: 'Specializing in general check-ups and travel vaccinations.', picture : 'assets/grey_circle.png'),
    Profile(name: 'Dr Jagdeep Brar', specialization: 'Specialization in Women and Kids' , address: '# 304–6203 28 Ave', phone: '780-756-9677' , email: 'null', description: 'Punjabi speaking Indian doctor (GP) in Edmonton specializing in men, women and kids health issues.' , picture: 'assets/grey_circle.png'),
    Profile(name: 'Dr Pramod K Verma', specialization: 'Family Medicine', address: '2911 66 St NW', phone: '780-450-2400',email: 'null' , description: 'Hindi and Punjabi speaking Indian doctor - specializing in gynecology (OBGYN) in Edmonton offering a wide variety of medical services in regards to female and natal health.' ,picture: 'assets/grey_circle.png'),
    Profile(name: 'Dr. Rajinder Cheema', specialization: 'Family Medicine', address: '14030 23 Ave NW', phone: '780-757-4220' ,email: 'null' , description:'Specializing in Family Medicine' ,picture: 'assets/grey_circle.png'),
    Profile(name: 'Dr. Avi Aulakh', specialization: 'Alcohol and Substance Addiction' , address: '6730 75 Street NW 2ND-FLOOR', phone:'780-761-6767' ,email: 'null' , description: 'Savera Medical Centre is a clinic dedicated towards aiding those struggling with opioid, alcohol and other substance addictions.',picture: 'assets/grey_circle.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: CustomColors.mainOrange,
              pinned: true,
              title: Text(
                  'Medical Professionals'
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index){
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Card(
                        color: CustomColors.cardBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20.0),
                          splashColor: Colors.blue[200],
                          onTap: (){},
                          child: Container(
                              width: 125,
                              height: 150,
                              child: Column(
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
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
                                            Text(
                                              mpProfileList[index].address,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  letterSpacing: 1,
                                                  color: CustomColors.textCharcoalGrey,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.location_on_rounded,
                                                    color: CustomColors.cardTextBlue,
                                                  ),
                                                  SizedBox(width: 5),
                                                  Icon(Icons.email,
                                                    color: CustomColors.cardTextBlue,),
                                                  SizedBox(width: 5),
                                                  Icon(Icons.local_phone_rounded,
                                                    color: CustomColors.cardTextBlue,),
                                                  SizedBox(width: 100),

                                                ]
                                            )
                                          ]
                                      )
                                    ],
                                  ),
                                  IconButton(
                                      color: CustomColors.textCharcoalGrey,
                                      icon: Icon(Icons.arrow_drop_down),
                                      onPressed: (){}
                                  ),
                                ],
                              )
                          ),
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
