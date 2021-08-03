import 'dart:io';

import 'package:flutter/material.dart';
import 'package:owlseye_mechanic/services/auth_api.dart';

class BankDetails extends StatefulWidget {
  const BankDetails({Key? key}) : super(key: key);

  @override
  _BankDetailsState createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController shop_regcontroller = TextEditingController();
  TextEditingController account_nocontroller = TextEditingController();
  TextEditingController bank_namecontroller = TextEditingController();
  TextEditingController bank_branchcontroller = TextEditingController();
  TextEditingController educationcontroller = TextEditingController();
  TextEditingController IFSCcontroller = TextEditingController();
  TextEditingController RTGScontroller = TextEditingController();
  TextEditingController account_typecontroller = TextEditingController();
  TextEditingController account_holder_namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Add Bank Details"),
        elevation: 0.0,
        backgroundColor: Color(0xff29cccc),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Navigator.of(context).pushNamed('/third');
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Material(
          child: Container(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Bank Details',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: shop_regcontroller,
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.shop,
                        color: Color(0xff29cccc),
                      ),
                      hintText: 'Enter Shop',
                      labelText: 'Shop Registeration.',
                    ),
                  ),
                  TextFormField(
                    controller: account_nocontroller,
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.contact_phone,
                        color: Color(0xff29cccc),
                      ),
                      hintText: 'Enter Bank Account no.',
                      labelText: 'Bank Account',
                    ),
                  ),
                  TextFormField(
                    controller: bank_namecontroller,
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.account_balance,
                        color: Color(0xff29cccc),
                      ),
                      labelText: 'Bank Name',
                    ),
                  ),
                  TextFormField(
                    controller: bank_branchcontroller,
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.account_box,
                        color: Color(0xff29cccc),
                      ),
                      hintText: 'Enter branch name ',
                      labelText: 'Bank Name',
                    ),
                  ),
                  Row(
                    children: [
                      TextFormField(
                        controller: IFSCcontroller,
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.code,
                            color: Color(0xff29cccc),
                          ),
                          hintText: 'Enter IFSC Code',
                          labelText: 'IFSC',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextFormField(
                        controller: RTGScontroller,
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.receipt_long_sharp,
                            color: Color(0xff29cccc),
                          ),
                          hintText: 'Enter RTGS',
                          labelText: 'RTGS',
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: account_typecontroller,
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.account_tree,
                        color: Color(0xff29cccc),
                      ),
                      hintText: 'Enter account type',
                      labelText: 'Account Type',
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 10.0, top: 40.0),
                      child: ElevatedButton(
                        child: const Text(
                          'Submit',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () async {
                          final String shop_reg = TextEditingController().text;
                          final String account_no =
                              TextEditingController().text;
                          final String bank_name = TextEditingController().text;
                          final String bank_branch =
                              TextEditingController().text;
                          final String IFSC = TextEditingController().text;
                          final String RTGS = TextEditingController().text;
                          final String account_type =
                              TextEditingController().text;
                          final String account_holder_name =
                              TextEditingController().text;

                          AuthApi authApi = AuthApi();
                          int id = await authApi.add_shopBanking(
                            shop_reg,
                            account_no,
                            bank_name,
                            bank_branch,
                            IFSC,
                            RTGS,
                            account_type,
                            account_holder_name,
                          );

                          if (id == 1) {
                            Navigator.of(context).pushNamed('/third');
                          } else {
                            print("Validation error");
                          }
                        },
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
