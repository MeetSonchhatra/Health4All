class User_display_Model {
  int? code;
  String? status;
  String? message;
  Metadata? metadata;
  List<Data>? data;

  User_display_Model(
      {this.code, this.status, this.message, this.metadata, this.data});

  User_display_Model.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    message = json['message'];
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
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
      data['data'] = this.data!.map((v) => v.toJson()).toList();
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
  String? sId;
  String? fullName;
  String? email;
  int? mobile;
  String? gender;
  String? city;
  List<String>? healthCandition;
  String? status;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? bloodGroup;
  String? photo;

  Data(
      {this.sId,
      this.fullName,
      this.email,
      this.mobile,
      this.gender,
      this.city,
      this.healthCandition,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.bloodGroup,
      this.photo});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    fullName = json['full_name'];
    email = json['email'];
    mobile = json['mobile'];
    gender = json['gender'];
    city = json['city'];
    healthCandition = json['health_candition'].cast<String>();
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    bloodGroup = json['blood_group'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['full_name'] = this.fullName;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['gender'] = this.gender;
    data['city'] = this.city;
    data['health_candition'] = this.healthCandition;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['blood_group'] = this.bloodGroup;
    data['photo'] = this.photo;
    return data;
  }
}
