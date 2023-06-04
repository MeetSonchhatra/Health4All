import 'dart:convert';
import 'package:health4all/model/LoginModel.dart';
import 'package:http/http.dart'as http;
import "package:health4all/baseUrl";
import 'package:shared_preferences/shared_preferences.dart';
import 'model/SignupModel.dart';
import 'model/user_display.dart';
import 'package:health4all/model/changenoModel.dart';
var LURL = "https://health-buddy.onrender.com";
class LoginApi{
  LoginApi();
  Future<LoginModel> loginList(phone) async{
    var url = LURL + "/api/user/login";
    http.Response response = await http.post(Uri.parse(url),
        headers: {"content-type": "application/json"},
    body: jsonEncode({
    "mobile": phone
    
    }));
    var data = jsonDecode(response.body);
    print("SignIn" + response.body);
    return LoginModel.fromJson(data);
  }
}

class SigupApi{
  SigupApi();
  Future<SignUpModel> signupList(name,email,phone,gender,city,dob) async{
    var url = LURL + "/api/user";
    http.Response response = await http.post(Uri.parse(url),
        headers: {"content-type": "application/json"},
    body: jsonEncode({
          "full_name": name,
            "email": email,
            "mobile": phone,
            "gender": gender,
            "city": city,
            "dob": dob,
    
    }));
    var data = jsonDecode(response.body);
    print("SignIn" + response.body);
    return SignUpModel.fromJson(data);
  }
}


class userdisplayApi{
  
  userdisplayApi();
  Future<User_display_Model> userdisplayList() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
  var tokn =  pref.getString("token");
  
    var url = LURL + "/api/user/";
    http.Response response = await http.get(Uri.parse(url),
        headers: {"content-type": "application/json","Authorization":tokn.toString()},

    );
    Map<String,dynamic> mapResponse;
    //var data = jsonDecode(response.body);
    var data= jsonDecode(response.body);
    print("User Display " + response.body);
    return User_display_Model.fromJson(data);
  }
}

// class changenoApi{
  
//   changenoApi();
//   Future<changeno_Model> changenoList(String phone) async{
//     SharedPreferences pref = await SharedPreferences.getInstance();
//   var tokn =  pref.getString("token");
  
//     var url = LURL + "/api/user/change_number";
//     http.Response response = await http.get(Uri.parse(url),
    
//         headers: {
//           "content-type": "application/json",
//           "Authorization":tokn.toString()
//           },body:jsonEncode({})
          
         
//     );
  
//     Map<String,dynamic> mapResponse;
//     //var data = jsonDecode(response.body);
//     var data= jsonDecode(response.body);
//     print("Change Number  " + response.body);
//     return changeno_Model.fromJson(data);
//   }
// }

class changenoApi{
  changenoApi();
  Future<changeno_Model> signupList(phone) async{
    var url = LURL + "/api/user/change_number";
    http.Response response = await http.post(Uri.parse(url),
        headers: {"content-type": "application/json"},
    body: jsonEncode({
            "new_mobile": phone,
          
    }));
    var data = jsonDecode(response.body);
    print("change number" + response.body);
    return changeno_Model.fromJson(data);
  }

  changenoList(String phone) {}
}