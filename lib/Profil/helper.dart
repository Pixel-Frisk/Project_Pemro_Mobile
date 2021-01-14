import 'package:shared_preferences/shared_preferences.dart';

class Helper{
  addStringToSF() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('information', "Email: jakabaru223@gmail.com");
  }

  static getInformation() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String information = prefs.getString('information');
    return information;
  }
}