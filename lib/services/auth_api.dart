import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:owlseye_mechanic/model/log_model.dart';

class AuthApi {
  //for sign in
  Future<LogModel> singIN(String shopid, String password) async {
    final String apiUrl = "https://owlseyes.herokuapp.com/auth/shopkeeperlogin";

    final response = await http.post(Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, String>{"password": password, "shopid": shopid}));

    print(jsonEncode(<String, String>{"password": password, "shopid": shopid}));

    print(response.statusCode);
    if (response.statusCode == 200) {
      final logModel = logModelFromJson(response.body);
      print(response.body);
      return logModel;
    } else {
      throw Error;
    }
  }

//for signup

  Future<int> createUser(
    String shopid,
    String password,
    String shopname,
    String shopreg,
    String address,
    String state,
    String city,
    String pin,
    String contact,
    String email,
    String website,
    String shopowner,
    String ownermobile,
    String established,
    String servicetype,
    String other_remark,
  ) async {
    final String apiUrl = "https://owlseyes.herokuapp.com/auth/addshop";

    final response = await http.put(Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
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
          "other_remark": other_remark
        }));

    print(response.body);

    if (response.statusCode == 201) {
      return response.statusCode;
    } else {
      return 0;
    }
  }

  //for addmechanic or add employee

  Future<int> addmechanic(
    String name,
    String contact,
    String email,
    String education,
    String dob,
    String address,
    String state,
    String city,
    String experience,
    String speciality,
    String location,
    String shop_reg,
  ) async {
    final String apiUrl = "https://owlseyes.herokuapp.com/auth/addmechanic";

    final response = await http.put(Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "name": name,
          "contact": contact,
          "email": email,
          "education": education,
          "dob": dob,
          "address": address,
          "state": state,
          "city": city,
          "experience": experience,
          "speciality": speciality,
          "location": location,
          "shop_reg": shop_reg
        }));

    print(response.body);

    if (response.statusCode == 201) {
      return response.statusCode;
    } else {
      return 0;
    }
  }

  //for addmechanic or add employee

  Future<int> add_shopBanking(
    String shop_reg,
    String account_no,
    String bank_name,
    String bank_branch,
    String IFSC,
    String RTGS,
    String account_type,
    String account_holder_name,
  ) async {
    final String apiUrl = "https://owlseyes.herokuapp.com/auth/add_shopBanking";

    final response = await http.put(Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "shop_reg": shop_reg,
          "account_no": account_no,
          "bank_name": bank_name,
          "bank_branch": bank_branch,
          "IFSC": IFSC,
          "RTGS": RTGS,
          "account_type": account_type,
          "account_holder_name": account_holder_name
        }));

    print(response.body);

    if (response.statusCode == 201) {
      return response.statusCode;
    } else {
      return 0;
    }
  }
}
