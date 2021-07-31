import 'dart:convert';
import 'package:http/http.dart' as http;

class SignUpApi {
  Future<int> submitForm(
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
    var jsondata = jsonEncode(<String, String>{
      // "shopid": shopid,
      // "password": password,
      // "shopreg": shopreg,
      // "shopname": shopname,
      // "address": address,
      // "state": state,
      // "city": city,
      // "pin": pin,
      // "contact": contact,
      // "email": email,
      // "website": website,
      // "shopowner": shopowner,
      // "ownermobile": ownermobile,
      // "established": established,
      // "servicetype": servicetype,
      // "other_remark": other_remark

      "shopid": "$shopid",
      "password": "$password",
      "shopreg": "$shopreg",
      "shopname": "$shopname",
      "address": "$address",
      "state": "$state",
      "city": "$city",
      "pin": "$pin",
      "contact": "$contact",
      "email": "$email",
      "website": "$website",
      "shopowner": "$shopowner",
      "ownermobile": "$ownermobile",
      "established": "$established",
      "servicetype": "$servicetype",
      "other_remark": "$other_remark"
    });

    final response = await http.post(
        Uri.https("owlseyes.herokuapp.com", "/auth/shopkeeperlogin"),
        body: jsondata);
    print(response.statusCode);
    print(response.body);

    return 1;

// "https://owlseyes.herokuapp.com/auth/addshop";
    //   // check the status code for the result
    //   final response = await http.post(
    //       Uri.https('owlseyes.herokuapp.com', '/auth/addshop'),
    //       // headers: <String, String>{
    //       //   'Content-Type': 'application/json; charset=UTF-8',
    //       //   'Authorization':
    //       //       'Bearer eyJhbGciOiJIUzI1NiJ9.eyJjdXN0b21lcklkIjoiQ1VTMTk4MTU2MjA1NDU3NDQxIiwiY3VzdG9tZXJQaG9uZSI6Ijk3OTkwMTQ0NDgifQ.mAzHWvz-rwTKSufCDDmXVU0_JWxpLJB3fbWqki4P2OE'
    //       // },
    //       body: json);
    //   print(response.statusCode);
    //   if (response.statusCode == 200) {
    //     return 1;
    //   } else {
    //     return 0;
    //   }
    // }
  }
}
