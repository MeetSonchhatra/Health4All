class Basicuserdetail_Model {
  int? code;
  String? status;
  String? message;
  Metadata? metadata;
  List<Data>? data;

  Basicuserdetail_Model(
      {this.code, this.status, this.message, this.metadata, this.data});

  Basicuserdetail_Model.fromJson(Map<String, dynamic> json) {
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
  String? dpId;
  String? dateAndTime;
  String? userStatus;
  Users? users;
  DiagnosticPartners? diagnosticPartners;
  SubCategories? subCategories;

  Data(
      {this.sId,
      this.dpId,
      this.dateAndTime,
      this.userStatus,
      this.users,
      this.diagnosticPartners,
      this.subCategories});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    dpId = json['dp_id'];
    dateAndTime = json['date_and_time'];
    userStatus = json['user_status'];
    users = json['users'] != null ? new Users.fromJson(json['users']) : null;
    diagnosticPartners = json['diagnostic_partners'] != null
        ? new DiagnosticPartners.fromJson(json['diagnostic_partners'])
        : null;
    subCategories = json['sub_categories'] != null
        ? new SubCategories.fromJson(json['sub_categories'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['dp_id'] = this.dpId;
    data['date_and_time'] = this.dateAndTime;
    data['user_status'] = this.userStatus;
    if (this.users != null) {
      data['users'] = this.users!.toJson();
    }
    if (this.diagnosticPartners != null) {
      data['diagnostic_partners'] = this.diagnosticPartners!.toJson();
    }
    if (this.subCategories != null) {
      data['sub_categories'] = this.subCategories!.toJson();
    }
    return data;
  }
}

class Users {
  String? fullName;

  Users({this.fullName});

  Users.fromJson(Map<String, dynamic> json) {
    fullName = json['full_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['full_name'] = this.fullName;
    return data;
  }
}

class DiagnosticPartners {
  String? companyName;

  DiagnosticPartners({this.companyName});

  DiagnosticPartners.fromJson(Map<String, dynamic> json) {
    companyName = json['company_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['company_name'] = this.companyName;
    return data;
  }
}

class SubCategories {
  String? subCatName;

  SubCategories({this.subCatName});

  SubCategories.fromJson(Map<String, dynamic> json) {
    subCatName = json['sub_cat_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sub_cat_name'] = this.subCatName;
    return data;
  }
}
