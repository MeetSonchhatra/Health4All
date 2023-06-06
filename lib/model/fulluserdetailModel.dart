class Fulldetail_Model {
  int? code;
  String? status;
  String? message;
  Metadata? metadata;
  List<Data>? data;

  Fulldetail_Model(
      {this.code, this.status, this.message, this.metadata, this.data});

  Fulldetail_Model.fromJson(Map<String, dynamic> json) {
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
  String? status;
  String? sId;
  String? companyName;
  String? email;
  int? contact;
  int? pincode;
  String? city;
  String? address;
  int? contactPerson;
  String? password;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? logo;

  Data(
      {this.status,
      this.sId,
      this.companyName,
      this.email,
      this.contact,
      this.pincode,
      this.city,
      this.address,
      this.contactPerson,
      this.password,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.logo});

  Data.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    sId = json['_id'];
    companyName = json['company_name'];
    email = json['email'];
    contact = json['contact'];
    pincode = json['pincode'];
    city = json['city'];
    address = json['address'];
    contactPerson = json['contact_person'];
    password = json['password'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['_id'] = this.sId;
    data['company_name'] = this.companyName;
    data['email'] = this.email;
    data['contact'] = this.contact;
    data['pincode'] = this.pincode;
    data['city'] = this.city;
    data['address'] = this.address;
    data['contact_person'] = this.contactPerson;
    data['password'] = this.password;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['logo'] = this.logo;
    return data;
  }
}
