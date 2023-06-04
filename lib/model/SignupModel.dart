class SignUpModel {
  int? code;
  String? status;
  String? message;
  Metadata? metadata;
  Data? data;

  SignUpModel({this.code, this.status, this.message, this.metadata, this.data});

  SignUpModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    message = json['message'];
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Metadata {
  int? length;

  Metadata({this.length});

  Metadata.fromJson(Map<String, dynamic> json) {
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['length'] = this.length;
    return data;
  }
}

class Data {
  User? user;
  String? token;

  Data({this.user, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  String? fullName;
  String? email;
  int? mobile;
  String? gender;
  String? city;
  String? dob;
  List<Null>? healthCandition;
  String? status;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  User(
      {this.fullName,
      this.email,
      this.mobile,
      this.gender,
      this.city,
      this.dob,
      this.healthCandition,
      this.status,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  User.fromJson(Map<String, dynamic> json) {
    fullName = json['full_name'];
    email = json['email'];
    mobile = json['mobile'];
    gender = json['gender'];
    city = json['city'];
    dob = json['dob'];
    // if (json['health_candition'] != null) {
    //   healthCandition = <Null>[];
    //   json['health_candition'].forEach((v) {
    //     healthCandition!.add(new Null.fromJson(v));
    //   });
    // }
    status = json['status'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['full_name'] = this.fullName;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['gender'] = this.gender;
    data['city'] = this.city;
    data['dob'] = this.dob;
    // if (this.healthCandition != null) {
    //   data['health_candition'] =
    //       this.healthCandition!.map((v) => v.toJson()).toList();
    // }
    data['status'] = this.status;
    data['_id'] = this.sId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}