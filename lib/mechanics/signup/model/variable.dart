import 'dart:convert';

MechanicModel mechanicModelFromJson(String str) =>
    MechanicModel.fromJson(json.decode(str));

String mechanicModelToJson(MechanicModel data) => json.encode(data.toJson());

class MechanicModel {
  MechanicModel({
    required this.shopid,
    required this.password,
    required this.shopreg,
    required this.shopname,
    required this.address,
    required this.state,
    required this.city,
    required this.pin,
    required this.contact,
    required this.email,
    required this.website,
    required this.shopowner,
    required this.ownermobile,
    required this.established,
    required this.servicetype,
    required this.otherRemark,
  });

  String shopid;
  String password;
  String shopreg;
  String shopname;
  String address;
  String state;
  String city;
  String pin;
  String contact;
  String email;
  String website;
  String shopowner;
  String ownermobile;
  String established;
  String servicetype;
  String otherRemark;

  factory MechanicModel.fromJson(Map<String, dynamic> json) => MechanicModel(
        shopid: json["shopid"],
        password: json["password"],
        shopreg: json["shopreg"],
        shopname: json["shopname"],
        address: json["address"],
        state: json["state"],
        city: json["city"],
        pin: json["pin"],
        contact: json["contact"],
        email: json["email"],
        website: json["website"],
        shopowner: json["shopowner"],
        ownermobile: json["ownermobile"],
        established: json["established"],
        servicetype: json["servicetype"],
        otherRemark: json["other_remark"],
      );

  Map<String, dynamic> toJson() => {
        "shopid": shopid,
        "password": password,
        "shopreg": shopreg,
        "shopname": shopname,
        "address": address,
        "state": state,
        "city": city,
        "pin": pin,
        "contact": contact,
        "email": email,
        "website": website,
        "shopowner": shopowner,
        "ownermobile": ownermobile,
        "established": established,
        "servicetype": servicetype,
        "other_remark": otherRemark,
      };
}
