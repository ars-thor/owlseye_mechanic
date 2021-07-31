// import 'dart:html';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:owlseye_mechanic/mechanics/signup/model/variable.dart';
import 'package:owlseye_mechanic/services/auth_api.dart';
import 'package:owlseye_mechanic/services/signup_api.dart';

class MechanicsRegistration extends StatefulWidget {
  const MechanicsRegistration({Key? key}) : super(key: key);

  @override
  _MechanicsRegistrationState createState() => _MechanicsRegistrationState();
}

class _MechanicsRegistrationState extends State<MechanicsRegistration> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController shopidcontroller = TextEditingController();
  TextEditingController shopregcontroller = TextEditingController();
  TextEditingController shopnamecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController shopownerController = TextEditingController();
  TextEditingController ownermobileController = TextEditingController();
  TextEditingController establishedController = TextEditingController();
  TextEditingController servicetypeController = TextEditingController();
  TextEditingController other_remarkController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text("Registration"),
        //   elevation: 0.0,
        //   backgroundColor: Color(0xff29cccc),
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back_ios),
        //     onPressed: () {
        //       Navigator.of(context).pushNamed('/third');
        //     },
        //   ),
        // ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              children: [
                Text(
                  'Welcome To Owlseye',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 100,
                ),
                Material(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Mechanic Registration Form',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: shopidcontroller,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter your shop id',
                            labelText: 'Shop ID',
                          ),
                        ),
                        TextFormField(
                          controller: shopregcontroller,
                          // onChanged: (value) {
                          //   shopreg = value;
                          // },
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.phone,
                              color: Color(0xff29cccc),
                            ),
                            labelText: 'Shop Register',
                          ),
                        ),
                        TextFormField(
                          controller: shopnamecontroller,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.mail,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter your shop name',
                            labelText: 'Shop name',
                          ),
                        ),
                        TextFormField(
                          controller: addresscontroller,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.location_city,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter your Address',
                            labelText: 'Address',
                          ),
                        ),
                        TextFormField(
                          controller: stateController,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.location_city_sharp,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter your State',
                            labelText: 'State',
                          ),
                        ),
                        TextFormField(
                          controller: cityController,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.location_city,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter your city',
                            labelText: 'City',
                          ),
                        ),
                        TextFormField(
                          controller: pinController,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.pin_drop,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter your PinCode',
                            labelText: 'Pincode',
                          ),
                        ),
                        TextFormField(
                          controller: contactController,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.location_city_sharp,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter your Contact No.',
                            labelText: 'Contact',
                          ),
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.location_city,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter your email',
                            labelText: 'Email',
                          ),
                        ),
                        TextFormField(
                          controller: websiteController,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.pin_drop,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter your Website',
                            labelText: 'Website',
                          ),
                        ),
                        TextFormField(
                          controller: shopownerController,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.location_city_sharp,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter shop Owner name',
                            labelText: 'ShopOwner',
                          ),
                        ),
                        TextFormField(
                          controller: ownermobileController,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.call,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter owner contact',
                            labelText: 'Owner Contact',
                          ),
                        ),
                        TextFormField(
                          controller: establishedController,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.pin_drop,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter year of company Established',
                            labelText: 'Established',
                          ),
                        ),
                        TextFormField(
                          controller: servicetypeController,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.location_city_sharp,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter Service Type',
                            labelText: 'Service Type',
                          ),
                        ),
                        TextFormField(
                          controller: other_remarkController,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.devices_other_outlined,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter other Remark',
                            labelText: 'Other Remark',
                          ),
                        ),
                        TextFormField(
                          controller: passwordController,
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.password_rounded,
                              color: Color(0xff29cccc),
                            ),
                            hintText: 'Enter password',
                            labelText: 'Password',
                          ),
                        ),
                        Container(
                            padding:
                                const EdgeInsets.only(left: 50.0, top: 15.0),
                            child: ElevatedButton(
                              child: const Text('Submit'),
                              onPressed: () async {
                                final String shopid = shopidcontroller.text;
                                final String shopname = shopnamecontroller.text;
                                final String shopreg = shopregcontroller.text;
                                final String shopowner =
                                    shopownerController.text;
                                final String state = stateController.text;
                                final String email = emailController.text;
                                final String website = websiteController.text;
                                final String ownermobile =
                                    ownermobileController.text;
                                final String established =
                                    establishedController.text;
                                final String servicetype =
                                    servicetypeController.text;
                                final String other_remark =
                                    other_remarkController.text;
                                final String address = addresscontroller.text;
                                final String pin = pinController.text;
                                final String city = cityController.text;
                                final String password = passwordController.text;
                                final String contact = contactController.text;

                                AuthApi authApi = AuthApi();
                                int id = await authApi.createUser(
                                    shopid,
                                    shopname,
                                    shopowner,
                                    shopreg,
                                    state,
                                    email,
                                    website,
                                    ownermobile,
                                    established,
                                    servicetype,
                                    other_remark,
                                    address,
                                    pin,
                                    city,
                                    password,
                                    contact);

                                if (id == 1) {
                                  Navigator.of(context).pushNamed('/second');
                                } else {
                                  print("Validation error");
                                }
                              },
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
