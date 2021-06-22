import 'package:PRH/constants/page_classes.dart';
import 'package:PRH/constants/theme_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddictionSupportsPage extends StatefulWidget {
  const AddictionSupportsPage({Key key}) : super(key: key);
  @override
  _AddictionSupportsPageState createState() => _AddictionSupportsPageState();
}

class _AddictionSupportsPageState extends State<AddictionSupportsPage> {
  List<Resource> addictionSupportResources =[
    Resource(name:"Canadian Mental Health Association (CMHA)",specialization: "Addiction Counselling/Crisis Support",phone: '780-424-8335',url: '    Distress Line (24/7)'),
    Resource(name:"Kids Help Phone",specialization: "Addiction Counselling/Crisis Support",phone: '1-800-668-6868',url: '    Distress Line (24/7; 5-20 yrs)'),
    Resource(name:"Poundmaker’s Lodge Treatment Centres",specialization: "Addiction Counselling/Crisis Support",phone: '780-458-1884',url: '    Phone Line')
  ];
  List<Resource>  selfHelpURLResources =[
    Resource(name: 'Anorexica and Bulimics Anonymous', url:'https://aba12steps.org/' ,),
    Resource(name: 'Cocaine Anonymous World Services (24/7)', url:'https://www.ca-northab.org/' ,),
    Resource(name: 'Food Addicts in Recovery Anonymous', url:'https://www.foodaddicts.org/' ,),
    Resource(name: 'SMART Recovery Alberta', url: 'http://www.smartrecovery.ca/',),

  ];
  List<Resource>  selfHelpPhoneResources =[
    Resource(name: 'Alano Club' ,specialization: '    12-Step Meetings' , phone: '780-423-1807', ),
    Resource(name: 'Alberta Gamblers Anonymous',specialization:'    Phone Line (Edmonton)' , phone:'780-463-0892' ,),
    Resource(name: 'Alcoholics Anonymous in Alberta',specialization: '    Phone Line ', phone:'780-424-5900' , ),
    Resource(name: 'Clean Scene',specialization: '    Phone Line (14-29 yrs)' , phone:'780-488-0036' , ),
    Resource(name: 'Crystal Meth Anonymous',specialization: '    Phone Line', phone: '780-691-8509', ),
    Resource(name: 'Men for Sobriety',specialization: '    Phone Line', phone:'780-909-0215' , ),
    Resource(name: 'Narcotics Anonymous',specialization: '    Phone Line (Edmonton Area)', phone: '780-421-4429', ),
    Resource(name: 'Problem Gambling Resources Network',specialization: '    Phone Line ' , phone:'780-461-1259' ,),
    Resource(name: 'QuitCore (smoking)',specialization:'    Phone Line' , phone:'1-866-710-7848' , ),
  ];
  List<Resource> supportGroupResources =[
    Resource(name:'A1-Anon Family Groups' ,specialization:'    Phone Line (24/7; Edmonton)' , phone:'780-443-6000'  ),
    Resource(name:'Bissell Centre ',specialization:'    FAS Services' ,phone:'780-423-2285' ),
    Resource(name:'Catholic Social Services' ,specialization:'    FASD Programs' ,phone:'780-378-2508' ),
    Resource(name:'Parents Empowering Parents Society Parent Support Line' ,specialization:'    Phone Line' ,phone:'780-293-0737' ),
    Resource(name:'U-Turn for Youth' ,specialization:'    Phone Line' ,phone:'780-293-0737' ),
    Resource(name:'REACH Edmonton Council for Safe Communities' ,specialization:'    Drug/Alcohol Resource Toolkit' ,phone:'311' ),
    Resource(name:'S-Anon Family Groups',specialization:'    Phone Line' ,phone:'587-921-1915' ),
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
                  'Addiction Support',
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
                              "What is Addiction?",
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
                  margin: const EdgeInsets.symmetric(horizontal: 160, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CustomColors.infoCardPinkBeige,
                  ),
                  height: 5,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Center(
                    child: Text(
                      'Addiction Resources',
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
                        'Punjabi - Speaking',
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
                    color: CustomColors.cardBlue,
                  ),
                  height: 5,
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
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Savera Medical Clinic',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 22,
                                      color: CustomColors.cardTextBlue,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  'Medical Centre',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      color: Colors.black
                                  ),
                                ),
                                Text(
                                  'Opioids, Alcohol, General Substance Use',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: CustomColors.textCharcoalGrey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        Card(
                          color: CustomColors.lighterCardtextBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                            child: Column(
                              children: [
                                Text(
                                  'Savera Medical Centre is a clinic dedicated to aiding those struggling with opioid, alcohol and other substance addictions.',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  '\nThey provide counselling, support groups and treatment from their physicians. They are able to communicate with patients who speak English, Punjabi, Hindi, Russian, Urdu, Gujrati, Bengali, Assamese and Tagalog.'
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Hours of Operation\n',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 22,
                                      color: CustomColors.cardTextBlue,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[Text('MON'),Text('8:00 AM - 6:00 PM',style: TextStyle(fontWeight: FontWeight.bold),)],),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[Text('TUE'),Text('8:00 AM - 6:00 PM',style: TextStyle(fontWeight: FontWeight.bold),)],),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[Text('WED'),Text('8:00 AM - 6:00 PM',style: TextStyle(fontWeight: FontWeight.bold),)],),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[Text('THU'),Text('8:00 AM - 6:00 PM',style: TextStyle(fontWeight: FontWeight.bold),)],),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[Text('FRI'),Text('8:00 AM - 6:00 PM',style: TextStyle(fontWeight: FontWeight.bold),)],),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[Text('SAT'),Text('10:00 AM - 2:00 PM',style: TextStyle(fontWeight: FontWeight.bold),)],),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[Text('SUN'),Text('10:00 AM - 2:00 PM',style: TextStyle(fontWeight: FontWeight.bold),)],),
                              ],


                            ),
                          ),
                        ),
                        ],
                      ),
                    ),
                  ),
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
              SliverToBoxAdapter(
                child: Container(
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
                            'Alberta Health Services (AHS)',
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
                            'Addiction Counselling/Crisis Support',
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
                                  Text(
                                    "     Addiction Helpline(24/7)",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                        launchURL('tel:'+'1-866-332-2322');
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "     Opioid Dependency Program",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                        launchURL('tel:'+'780-422-1032');
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "     Adult Intake Services (24/7)",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                        launchURL('tel:'+'780-342-7600');
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "     Outpatient Counselling Services, Adult",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                        launchURL('tel:'+'780-427-2736');
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
                                addictionSupportResources[index].name,
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
                                addictionSupportResources[index].specialization,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height:10),
                              addictionSupportResources[index].phone != ''? Container(
                                child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(addictionSupportResources[index].url,
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
                                            launchURL('tel:'+addictionSupportResources[index].phone);
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
                  childCount: addictionSupportResources.length,
                  semanticIndexOffset: 2,
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
              SliverToBoxAdapter(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Center(
                      child: Text(
                        'Detoxification Programs',
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
                    color: CustomColors.cardRed,
                  ),
                  height: 5,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Card(
                    color: CustomColors.cardRed,
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
                            'Alberta Health Services (AHS)',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                                letterSpacing: 1.5,
                                color: CustomColors.cardTextRed,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Detoxification Programs',
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
                                  Text(
                                    "     Detoxification Services, Adult",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                      fillColor: CustomColors.cardIconRed,
                                      onPressed: () {
                                        launchURL('tel:'+'780-427-4291');
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "     Stabilization services, Adolescent",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                      fillColor: CustomColors.cardIconRed,
                                      onPressed: () {
                                        launchURL('tel:'+'780-644-3627');
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
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Card(
                    color: CustomColors.cardRed,
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
                            'George Spady Society ',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                                letterSpacing: 1.5,
                                color: CustomColors.cardTextRed,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Detoxification Programs',
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
                                  Text(
                                    "     Phone Line",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                      fillColor: CustomColors.cardIconRed,
                                      onPressed: () {
                                        launchURL('tel:'+'780-424-8335');
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
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 160, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CustomColors.cardRed,
                  ),
                  height: 5,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Center(
                      child: Text(
                        'Emergency Shelters For The Intoxicated',
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
                    color: CustomColors.cardGreen,
                  ),
                  height: 5,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Card(
                    color: CustomColors.cardGreen,
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
                            'George Spady Society ',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                                letterSpacing: 1.5,
                                color: CustomColors.cardTextGreen,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Emergency Shelters for the Intoxicated',
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
                                  Text(
                                    "     Phone Line",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                      fillColor: CustomColors.cardIconGreen,
                                      onPressed: () {
                                        launchURL('tel:'+'780-424-8335');
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
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Card(
                    color: CustomColors.cardGreen,
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
                            'Hope Mission Edmonton',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                                letterSpacing: 1.5,
                                color: CustomColors.cardTextGreen,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Emergency Shelters For The Intoxicated ',
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
                                  Text(
                                    "     Intox Emergency Centre (Men)",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                      fillColor: CustomColors.cardIconGreen,
                                      onPressed: () {
                                        launchURL('tel:'+'780-422-2018');
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "     Women’s Emergency Shelter (16+)",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                      fillColor: CustomColors.cardIconGreen,
                                      onPressed: () {
                                        launchURL('tel:'+'780-422-2018');
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
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 160, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CustomColors.cardGreen,
                  ),
                  height: 5,
                ),
              ),

              SliverToBoxAdapter(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Center(
                      child: Text(
                        'Self Help / Support Groups',
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
                    color: CustomColors.cardBlue,
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
                          color: CustomColors.cardBlue,
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
                                  selfHelpURLResources[index].name,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 22,
                                      letterSpacing: 1.5,
                                      color: CustomColors.cardTextBlue,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'Self Help/Support Groups',
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
                                        Text("     Website",
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              letterSpacing: 1,
                                              color: CustomColors.textCharcoalGrey,
                                              fontWeight: FontWeight.w500
                                          ),
                                        ),
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
                                            fillColor: CustomColors.cardIconBlue,
                                            onPressed: () {
                                              launchURL(selfHelpURLResources[index].url);
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
                  childCount: selfHelpURLResources.length,
                  semanticIndexOffset: 2,
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
                        child: Container(
                          padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                          // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                selfHelpPhoneResources[index].name,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 22,
                                    letterSpacing: 1.5,
                                    color: CustomColors.cardTextBlue,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                'Self Help/Support Groups',
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
                                      Text(selfHelpPhoneResources[index].specialization,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing: 1,
                                            color: CustomColors.textCharcoalGrey,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
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
                                          fillColor: CustomColors.cardIconBlue,
                                          onPressed: () {
                                            launchURL(selfHelpPhoneResources[index].phone);
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
                  childCount: selfHelpPhoneResources.length,
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
                        'Support/Info For Those Affected By Addictions',
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

              SliverToBoxAdapter(
                child: Container(
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
                            'Alberta Health Services (AHS)',
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
                            'Addiction Counselling/Crisis Support',
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
                                  Text(
                                    "     Addiction Helpline(24/7)",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                        launchURL('tel:'+'1-866-332-2322');
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "     Outpatient Counselling Services, Youth",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                        launchURL('tel:'+'780-342-7600');
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "     Outpatient Counselling Services, Adult",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                        launchURL('tel:'+'780-427-2736');
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
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
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
                            'FASD Support and Resources in Alberta',
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
                            'Support/info for Those Affected by Addictions ',
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
                                  Text(
                                    "     Website",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        color: CustomColors.textCharcoalGrey,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
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
                                      fillColor: CustomColors.cardIconOrange,
                                      onPressed: () {
                                        launchURL('https://fasdalberta.ca/');
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
                                supportGroupResources[index].name,
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
                                'Self Help/Support Groups',
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
                                      Text(supportGroupResources[index].specialization,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing: 1,
                                            color: CustomColors.textCharcoalGrey,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
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
                                            launchURL('tel:'+ supportGroupResources[index].phone);
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
                  childCount: supportGroupResources.length,
                  semanticIndexOffset: 2,
                ),
              ),

            ],
          ),

        )
    );
  }
}
