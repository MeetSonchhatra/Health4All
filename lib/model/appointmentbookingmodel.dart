class appointmentbooking_Model {
  int? code;
  String? status;
  String? message;
  Metadata? metadata;
  Data? data;

  appointmentbooking_Model(
      {this.code, this.status, this.message, this.metadata, this.data});

  appointmentbooking_Model.fromJson(Map<String, dynamic> json) {
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
  AppointmentData? appointmentData;
  PaymentData? paymentData;

  Data({this.appointmentData, this.paymentData});

  Data.fromJson(Map<String, dynamic> json) {
    appointmentData = json['Appointment_data'] != null
        ? new AppointmentData.fromJson(json['Appointment_data'])
        : null;
    paymentData = json['payment_data'] != null
        ? new PaymentData.fromJson(json['payment_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.appointmentData != null) {
      data['Appointment_data'] = this.appointmentData!.toJson();
    }
    if (this.paymentData != null) {
      data['payment_data'] = this.paymentData!.toJson();
    }
    return data;
  }
}

class AppointmentData {
  String? uid;
  String? dpId;
  String? dateAndTime;
  String? pickupTime;
  List<String>? subcatId;
  String? userStatus;
  List<Null>? report;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  AppointmentData(
      {this.uid,
      this.dpId,
      this.dateAndTime,
      this.pickupTime,
      this.subcatId,
      this.userStatus,
      this.report,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  AppointmentData.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    dpId = json['dp_id'];
    dateAndTime = json['date_and_time'];
    pickupTime = json['pickup_time'];
    subcatId = json['subcat_id'].cast<String>();
    userStatus = json['user_status'];
    // if (json['report'] != null) {
    //   report = <Null>[];
    //   json['report'].forEach((v) {
    //     report!.add(new Null.fromJson(v));
    //   });
    // }
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['dp_id'] = this.dpId;
    data['date_and_time'] = this.dateAndTime;
    data['pickup_time'] = this.pickupTime;
    data['subcat_id'] = this.subcatId;
    data['user_status'] = this.userStatus;
    // if (this.report != null) {
    //   data['report'] = this.report!.map((v) => v.toJson()).toList();
    // }
    data['_id'] = this.sId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class PaymentData {
  String? apid;
  String? paymentMode;
  int? amount;
  String? paymentStatus;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  PaymentData(
      {this.apid,
      this.paymentMode,
      this.amount,
      this.paymentStatus,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  PaymentData.fromJson(Map<String, dynamic> json) {
    apid = json['apid'];
    paymentMode = json['payment_mode'];
    amount = json['amount'];
    paymentStatus = json['payment_status'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['apid'] = this.apid;
    data['payment_mode'] = this.paymentMode;
    data['amount'] = this.amount;
    data['payment_status'] = this.paymentStatus;
    data['_id'] = this.sId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
