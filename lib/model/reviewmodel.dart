class Review_Model {
  int? code;
  String? status;
  String? message;
  Metadata? metadata;
  Data? data;

  Review_Model(
      {this.code, this.status, this.message, this.metadata, this.data});

  Review_Model.fromJson(Map<String, dynamic> json) {
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
  String? uid;
  String? dpId;
  String? star;
  String? text;
  String? sId;
  int? iV;

  Data({this.uid, this.dpId, this.star, this.text, this.sId, this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    dpId = json['dp_id'];
    star = json['star'];
    text = json['text'];
    sId = json['_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['dp_id'] = this.dpId;
    data['star'] = this.star;
    data['text'] = this.text;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    return data;
  }
}
