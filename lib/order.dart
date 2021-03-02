import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  String dialogText;
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();
  var phoneController = TextEditingController();

  String validateMobile(String value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return 'Please enter your phone number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  String validateName(String value) {
    if (value.length < 3)
      return 'Your name must have more than 2 characters';
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mission 2",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: TextFormField(
                controller: nameController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) => validateName(value),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber[700]),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  labelText: 'Name',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: TextFormField(
                controller: emailController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) => EmailValidator.validate(value)
                    ? null
                    : "Please enter a valid email",
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber[700]),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  labelText: 'E-Mail',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.number,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) => validateMobile(value),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber[700]),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  labelText: 'Phone Number',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.location_pin,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber[700]),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  labelText: 'Address',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.white,
                width: 150,
                height: 50,
                child: ElevatedButton.icon(
                  icon: Icon(CupertinoIcons.money_dollar_circle),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  onPressed: () {
                    if (nameController.text != "" &&
                        emailController.text != "" &&
                        phoneController.text != "" &&
                        addressController.text != "") {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Order Details'),
                            content: Text(
                                "Name: ${nameController.text} \nEmail: ${emailController.text}\nPhone: ${phoneController.text}\nAddress: ${addressController.text}"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  nameController.clear();
                                  emailController.clear();
                                  phoneController.clear();
                                  addressController.clear();
                                  Navigator.pop(context);
                                  Navigator.pushNamed(context, '/');
                                },
                                child: Text('Okay'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Error'),
                            content: Text("Please fill out all the forms."),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Okay'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  label: Text(
                    'Order',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
