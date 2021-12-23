import 'package:flutter/material.dart';
import 'package:text_field/page1.dart';

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isobsecure = false;

  RegExp regex = new RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        width: double.infinity,
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    // color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.greenAccent,
                          blurRadius: 20,
                          offset: Offset(8, 8),
                          spreadRadius: 2)
                    ],
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage("images/logo.png"),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 26),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
              TextFormField(
                controller: emailController,
                maxLines: 1,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "email required";
                  }

                  if (!(regex.hasMatch(value))) return "Invalid Email";
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  border: InputBorder.none,
                  hintText: "Enter your email",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(width: 2, color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(width: 2, color: Colors.teal)),
                  labelText: "Email",
                  suffixIcon: Icon(Icons.email),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                obscureText: _isobsecure,
                controller: passwordController,
                maxLines: 1,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Password required";
                  }
                  if (value.length > 10) {
                    return "Password too long(Max 10)";
                  }
                  if (value.length < 4) {
                    return "Password too short(Min 3)";
                  }
                  // if (!(regex.hasMatch(value))) return "Invalid Email";
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  border: InputBorder.none,
                  hintText: "Enter your Password",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(width: 2, color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(width: 2, color: Colors.teal)),
                  labelText: "Password",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isobsecure = !_isobsecure;
                      });
                    },
                    child: Icon(
                        _isobsecure ? Icons.visibility_off : Icons.visibility),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              MaterialButton(
                color: Colors.teal,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
                onPressed: () {
                  if (!_formkey.currentState!.validate()) return;
                  _formkey.currentState!.save();
                  print("This is call mim");
                  print("${emailController.text.toString()}");
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Page2(
                            email: emailController.text.toString(),
                            password: passwordController.text.toString(),
                          )));
                },
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
