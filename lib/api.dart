import 'dart:convert';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:health4all/model/LoginModel.dart';
import 'package:http/http.dart' as http;
import "package:health4all/baseUrl";
import 'package:shared_preferences/shared_preferences.dart';
import 'model/SignupModel.dart';
import 'model/appointmentbookingmodel.dart';
import 'model/basicdetailModel.dart';
import 'model/basicuserdetailmodel.dart';
import 'model/fulluserdetailModel.dart';
import 'model/reviewmodel.dart';
import 'model/user_display.dart';
import 'package:health4all/model/changenoModel.dart';

var LURL = "https://health-buddy.onrender.com";

class LoginApi {
  LoginApi();
  Future<LoginModel> loginList(phone) async {
    var url = LURL + "/api/user/login";
    http.Response response = await http.post(Uri.parse(url),
        headers: {"content-type": "application/json"},
        body: jsonEncode({"mobile": phone}));
    var data = jsonDecode(response.body);
    print("SignIn" + response.body);
    return LoginModel.fromJson(data);
  }
}

class SigupApi {
  SigupApi();
  Future<SignUpModel> signupList(name, email, phone, gender, city, dob) async {
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

class userdisplayApi {
  userdisplayApi();
  Future<User_display_Model> userdisplayList() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var tokn = pref.getString("token");

    var url = LURL + "/api/user/";
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {
        "content-type": "application/json",
        "Authorization": tokn.toString()
      },
    );
    Map<String, dynamic> mapResponse;
    //var data = jsonDecode(response.body);
    var data = jsonDecode(response.body);
    print("User Display " + response.body);
    return User_display_Model.fromJson(data);
  }
}

class changenoApi {
  changenoApi();
  Future<changeno_Model> signupList(phone) async {
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

class basicdetailsApi {
  basicdetailsApi();
  Future<Basicdetail_Model> basicdetailsList() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var tokn = pref.getString("token");

    var url = LURL + "/api/diagnostic_partner/basicdetails";
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {
        "content-type": "application/json",
        "Authorization": tokn.toString()
      },
    );
    Map<String, dynamic> mapResponse;
    var data = jsonDecode(response.body);
    print("Basic details " + response.body);
    return Basicdetail_Model.fromJson(data);
  }
}

class basicuserdetailsApi {
  basicuserdetailsApi();
  Future<Basicuserdetail_Model> basicuserdetailsList() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var tokn = pref.getString("token");

    var url = LURL + "/api/appointment/basicdetailsforuser";
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {
        "content-type": "application/json",
        "Authorization":
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJtb2JpbGUiOjEyMzQ1Njc4OTAsImlkIjoiNjNkYmM1ZTM0OWQyNjA3NTJhNDNlOTdmIiwiaWF0IjoxNjgzOTc2MDYyLCJleHAiOjE3MTU1MTIwNjJ9.0CmlsXQIr2AAyo2DPhR9A9ANNuz1OoN-CST0d2Hrp3w"
      },
    );
    Map<String, dynamic> mapResponse;
    var data = jsonDecode(response.body);
    print("Basic details " + response.body);
    return Basicuserdetail_Model.fromJson(data);
  }
}

class fulldetailsApi {
  fulldetailsApi();
  Future<Fulldetail_Model> fulldetailsList(id) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var tokn = pref.getString("token");

    var url = LURL + "/api/diagnostic_partner/fulldetails?id=$id";
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {
        "content-type": "application/json",
        "Authorization": tokn.toString()
      },
    );
    Map<String, dynamic> mapResponse;
    var data = jsonDecode(response.body);
    print("Full details " + response.body);
    return Fulldetail_Model.fromJson(data);
  }
}

class AptbookingApi {
  AptbookingApi();
  Future<appointmentbooking_Model> AptbookingList(time, amount) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var tokn = pref.getString("token");

    var url = LURL + "/api/appointment";
    http.Response response = await http.post(Uri.parse(url),
        headers: {
          "content-type": "application/json",
          "Authorization": tokn.toString()
        },
        body: jsonEncode({
          "pickup_time": time,
          "amount": amount,
        }));
    var data = jsonDecode(response.body);
    print("Appointment booking " + response.body);
    return appointmentbooking_Model.fromJson(data);
  }
}

class ReviewApi {
  ReviewApi();
  Future<Review_Model> ReviewList(star) async {
    var url = LURL + "/api/review";
    http.Response response = await http.post(Uri.parse(url),
        headers: {"content-type": "application/json"},
        body: jsonEncode({
          "star": star,
        }));
    var data = jsonDecode(response.body);
    print("Review " + response.body);
    return Review_Model.fromJson(data);
  }
}

class Noti {
  static Future initialize(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    var androidInitialize =
        new AndroidInitializationSettings('mipmap/ic_launcher');
    // var iOSInitialize = new iOSInitializationSettings();
    var initializationSettings =
        new InitializationSettings(android: androidInitialize);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static Future showBigTextNotification(
      {var id = 0,
      required String title,
      required String body,
      var payload,
      required FlutterLocalNotificationsPlugin fln}) async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
        new AndroidNotificationDetails(
      'Meet',
      'channelName',
      playSound: true,
      //sound: RawResourceAndroidNotificationSound('notification'),
      importance: Importance.max,
      priority: Priority.high,
    );

    var not = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );
    await fln.show(0, title, body, not);
  }
}
