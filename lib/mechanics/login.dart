import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:owlseye_mechanic/model/log_model.dart';
import 'package:owlseye_mechanic/services/auth_api.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  TextEditingController shopidController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/icon.jpg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 100,
                  ),
                  borderRadius: BorderRadius.circular(110),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Login',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Please enter your credentials',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff29cccc),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          controller: shopidController,
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            labelText: 'Shopid',
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xff29cccc),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: !this._showPassword,
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.security,
                            color: Color(0xff29cccc),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: this._showPassword
                                  ? Color(0xff29cccc)
                                  : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() =>
                                  this._showPassword = !this._showPassword);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password ?',
                            style: TextStyle(
                                color: Color(
                                  0xff29cccc,
                                ),
                                fontSize: 18,
                                decoration: TextDecoration.underline),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          height: 50,
                          width: 250,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff29cccc),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: TextButton(
                            // color: Colors.white,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(
                                  0xff29cccc,
                                ),
                              ),
                            ),
                            onPressed: () async {
                              String shopid = shopidController.text;
                              String pass = passwordController.text;
                              LogModel logModel =
                                  await AuthApi().singIN(shopid, pass);

                              if (logModel.token != null) {
                                Navigator.of(context).pushNamed('/third');
                              }
                            },
                          )),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 150,
                  ),
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/fifth');
                      },
                      child: Text(
                        'Sign up now',
                        style: TextStyle(fontSize: 18),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
