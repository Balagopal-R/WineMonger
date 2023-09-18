import 'package:shared_preferences/shared_preferences.dart';

class WMSharedPreference{
  Future<void> saveUserInformation(String username, String userLevel, String apiKey) async {
  
  SharedPreferences pref = await SharedPreferences.getInstance();
       await pref.setString("name", username);
       await pref.setString("userLevel", userLevel);
       await pref.setString("apiKey", apiKey);
       

       String? name = pref.getString("name");
       print("User name $name ");

       String? level = pref.getString("userLevel");
       print("User Level $level ");

       String? api_Key = pref.getString("apiKey");
       print("User API Key $apiKey ");

     } 




}