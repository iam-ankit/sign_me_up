import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  late String fname, lname, email, phone, address, pass, cpass, gender;
  // ignore: prefer_final_fields
  TextEditingController _fnameC = TextEditingController(),
      _lnameC = TextEditingController(),
      _emailC = TextEditingController(),
      _phoneC = TextEditingController(),
      _addressC = TextEditingController(),
      _passC = TextEditingController(),
      _cpassC = TextEditingController();
  late bool _ishidden, _ishidden2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fname = "";
    lname = "";
    email = "";
    address = "";
    phone = "";
    pass = "";
    cpass = "";
    gender = "male";
    _ishidden = true;
    _ishidden2 = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer__literals_to_create_immutables
                children: [
                  GestureDetector(onTap: () {}, child: CircleAvatar()),
                  TextField(
                    controller: _fnameC,
                    onChanged: (String value) {
                      setState(() {
                        fname = value;
                      });
                    },
                    decoration: InputDecoration(labelText: "First Name"),
                  ),
                  TextField(
                    controller: _lnameC,
                    onChanged: (String value) {
                      setState(() {
                        lname = value;
                      });
                    },
                    decoration: InputDecoration(labelText: "Last Name"),
                  ),
                  TextField(
                    controller: _emailC,
                    onChanged: (String value) {
                      setState(() {
                        email = value;
                      });
                    },
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                  TextField(
                    controller: _phoneC,
                    onChanged: (String value) {
                      setState(() {
                        phone = value;
                      });
                    },
                    decoration: InputDecoration(labelText: "Phone Number"),
                  ),
                  TextField(
                    controller: _addressC,
                    onChanged: (String value) {
                      setState(() {
                        address = value;
                      });
                    },
                    decoration: InputDecoration(labelText: "Address"),
                  ),
                  TextField(
                    controller: _passC,
                    obscureText: _ishidden,
                    onChanged: (String value) {
                      setState(() {
                        pass = value;
                      });
                    },
                    decoration: const InputDecoration(
                      labelText: "Password",
                    ),
                  ),
                  TextField(
                    controller: _cpassC,
                    obscureText: _ishidden2,
                    onChanged: (String value) {
                      setState(() {
                        cpass = value;
                      });
                    },
                    decoration: InputDecoration(labelText: "Confirm Password"),
                  ),
                  ElevatedButton(onPressed: () {}, child: Icon(Icons.check))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
