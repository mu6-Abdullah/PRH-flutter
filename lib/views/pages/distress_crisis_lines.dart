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
    Profile(name: 'Child Abuse Hotline' , specialization: '24 hour help line', address: '' ,phone: '780 784-2213' , email: 'n' , description: '24 hour help line, 170 languages' , picture: 'assets/grey_circle.png' ),
    Profile(name: 'Children Crisis \nResponse Team', specialization: '24 hour Alberta Health Services' , address: '',phone: '866-845-3425' , email:'' , description: '24 hour Alberta Health Services - Children' , picture: 'assets/grey_circle.png' ),
    Profile(name: 'CMHA 24-Hour \nDistress Line', specialization: '24 hour distress line' , address: '',phone:'780 702-1725' , email: '' , description: 'Provides free legal information and advice to low to moderate income people in the Edmonton area', picture: 'assets/grey_circle.png' ),
    Profile(name: 'Emergency Social \nServices', specialization: '24 hour assistance', address: '',phone: '800-661-3446' , email: 'ca.information@OCYA.alberta.ca', description: 'The OCYA is all about helping young people who are receiving services. Whether this be through advocating, arranging for legal representation, or engaging the community on issues that matter to young people, the OCYA cares about the people they serve' , picture: 'assets/grey_circle.png' ),
    Profile(name: 'Family Violence \nInfo Line', specialization: '24 hour helpline, 170 languages' , address: '',phone: '780 784-7500' , email: '' , description: 'Offers free consultation for legal action', picture: 'assets/grey_circle.png' ),
    Profile(name: 'Human Trafficking \nHotline', specialization: '24 hour helpline' , address: '',phone:'780 702-1725' , email: '' , description: 'Provides free legal information and advice to low to moderate income people in the Edmonton area', picture: 'assets/grey_circle.png' ),
    Profile(name: 'Kids Help Phone', specialization: '24 hour helpline ', address: '',phone: '800-661-3446' , email: 'ca.information@OCYA.alberta.ca', description: 'The OCYA is all about helping young people who are receiving services. Whether this be through advocating, arranging for legal representation, or engaging the community on issues that matter to young people, the OCYA cares about the people they serve' , picture: 'assets/grey_circle.png' ),
    Profile(name: 'Kids Kottage', specialization: '24 hour crisis and nursery' , address: '',phone: '780 784-7500' , email: '' , description: 'Offers free consultation for legal action', picture: 'assets/grey_circle.png' ),
    Profile(name: 'Senior Abuse Helpline', specialization: '24 hour helpline' , address: '',phone:'780 454-8888' , email: '' , description: '24 hour senior abuse line', picture: 'assets/grey_circle.png' ),
    Profile(name: 'Sexual Assault Centre', specialization: '24 hour helpline ', address: '',phone: '780 423-4121' , email: '', description: '24 hour sexual assault crisis line' , picture: 'assets/grey_circle.png' ),
    Profile(name: 'Suicide Prevention \nHotline', specialization: '24 hour helpline' , address: '',phone: '888-784-2433' , email: '' , description: '24 hour suicide help line', picture: 'assets/grey_circle.png' ),

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
                  'Distress and Crisis Lines',
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
                        'Distress and Crisis Resources',
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
                                distressCrisisLines[index].name,
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
                                distressCrisisLines[index].description,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height:10),
                              distressCrisisLines[index].phone != '' ? Container(
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
                                            launchURL('tel:'+distressCrisisLines[index].phone);
                                          }
                                      ),
                                    ],
                                  ),
                                ),
                              ): SizedBox(height:0),
                              distressCrisisLines[index].email != '' ? Container(
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
                                            launchURL('mailto:'+distressCrisisLines[index].email);
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
                  childCount: distressCrisisLines.length,
                  semanticIndexOffset: 2,
                ),
              ),
            ],
          ),
        ),
      );
    }
}
