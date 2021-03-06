import 'package:url_launcher/url_launcher.dart';
class Profile{
  int id;
  String name;
  String specialization;
  String address;
  String phone;
  String email;
  String description;
  String picture; //url to picture
  Profile({this.name, this.specialization, this.address, this.phone, this.email, this.description, this.picture});
}

class Resource{
  int id;
  String name;
  String specialization;
  String phone;
  String url;
  Resource({this.name, this.specialization, this.phone, this.url});

}
void launchURL(command) async {
  if(await canLaunch(command)){
    await launch(command);
  }else{
    throw 'Could not launch $command';
  }
}
//Profile(name: , specialization: , address: , phone: , email: , description: , picture: );

var pageTitlesList = [
  'Medical Terms in Punjabi Translation',
  'How to Report...',
  'Distress and Crisis Lines',
  'Medical Professionals - Punjabi-speaking',
  'Psychologists - Punjabi-speaking',
  'Counselling Services offered in English',
  'Legal Assistance',
  'Court Supports',
  'Emergency Shelters',
  'Domestic Violence Technical Terms translated in Punjabi',
  'Domestic Violence Supports Offered In Punjabi',
  'Domestic Violence Supports Offered in English',
  'Emergency Funding Offered By the Alberta Government',
  'Important Sexual Violence Information translated into Punjabi',
  'Sexual Violence Supports (English)',
  'Physical Health and Mental Health',
  'Addiction Supports (English)',
  'Addiction Supports (Punjabi)',
];
