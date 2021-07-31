import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:owlseye_mechanic/services/auth_api.dart';
// import 'package:image_picker_form_field/image_picker_form_field.dart';

class AddEmployee extends StatefulWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  final _formKey = GlobalKey<FormState>();

  final ImagePicker _picker = ImagePicker();
  File? _file;
  @override
  void initState() {
    super.initState();
  }

  Future getImage() async {
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image == null) return;

    File tmpFile = File(image.path);
    tmpFile = await tmpFile.copy(tmpFile.path);

    setState(() {
      _file = tmpFile;
    });
  }

  TextEditingController dob = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController contactcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController educationcontroller = TextEditingController();
  TextEditingController dobcontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController statecontroller = TextEditingController();
  TextEditingController citycontroller = TextEditingController();
  TextEditingController experiencecontroller = TextEditingController();
  TextEditingController specialitycontroller = TextEditingController();
  TextEditingController locationcontroller = TextEditingController();
  TextEditingController shop_regcontroller = TextEditingController();
  TextEditingController Datecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Add Employee"),
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
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Add Employee',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: namecontroller,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter Employee Name',
                    labelText: 'Name.',
                  ),
                ),
                TextFormField(
                  controller: contactcontroller,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.contact_phone,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter contact no.',
                    labelText: 'Contact',
                  ),
                ),
                TextFormField(
                  controller: emailcontroller,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Color(0xff29cccc),
                    ),
                    labelText: 'Email',
                  ),
                ),
                TextFormField(
                  controller: educationcontroller,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.cast_for_education,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter education details',
                    labelText: 'Education',
                  ),
                ),
                TextFormField(
                  controller: dob,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.date_range,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter Date of Birth',
                    labelText: 'DOB',
                  ),
                  onTap: () async {
                    DateTime date = DateTime(1900);
                    FocusScope.of(context).requestFocus(FocusNode());

                    date = (await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100)))!;

                    dob.text = date.toIso8601String();
                  },
                ),
                TextFormField(
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
                  controller: statecontroller,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.location_city,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter your state',
                    labelText: 'State',
                  ),
                ),
                TextFormField(
                  controller: citycontroller,
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
                  controller: Datecontroller,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.location_city,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter joinging date',
                    labelText: 'DOJ',
                  ),
                ),
                TextFormField(
                  controller: experiencecontroller,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.time_to_leave,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter your experience',
                    labelText: 'Experience',
                  ),
                ),
                TextFormField(
                  controller: specialitycontroller,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.folder_special,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter your speciality',
                    labelText: 'Speciality',
                  ),
                ),
                // TextFormField(
                //   controller: locationcontroller,
                //   decoration: const InputDecoration(
                //     icon: Icon(
                //       Icons.location_city,
                //       color: Color(0xff29cccc),
                //     ),
                //     hintText: 'Enter your photo',
                //     labelText: 'Photo',
                //   ),
                // ),
                TextFormField(
                  controller: shop_regcontroller,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.shop,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter shop_reg',
                    labelText: 'Shop_reg',
                  ),
                ),
                Container(
                    height: 50,
                    width: 50,
                    child: _file == null
                        ? Icon(
                            Icons.image,
                            color: Color(0xff29cccc),
                          )
                        : Image(image: FileImage(_file!))),
                InkWell(
                  onTap: () {
                    getImage();
                  },
                  child: Container(
                    height: 40,
                    child: Center(child: Text("Select Photo")),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.all(
                            color: Theme.of(context).disabledColor, width: 1)),
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
                        // print(nameController.text);
                        // Navigator.of(context).pushNamed('/fifth');
                        final String name = namecontroller.text;
                        final String contact = contactcontroller.text;
                        final String email = emailcontroller.text;
                        final String education = educationcontroller.text;
                        final String dob = dobcontroller.text;
                        final String address = addresscontroller.text;
                        final String state = statecontroller.text;
                        final String city = citycontroller.text;
                        final String experience = experiencecontroller.text;
                        final String speciality = specialitycontroller.text;
                        final String location = locationcontroller.text;
                        final String shop_reg = shop_regcontroller.text;

                        AuthApi authApi = AuthApi();
                        int id = await authApi.addmechanic(
                          name,
                          contact,
                          email,
                          education,
                          dob,
                          address,
                          state,
                          city,
                          experience,
                          speciality,
                          location,
                          shop_reg,
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
    );
  }
}
