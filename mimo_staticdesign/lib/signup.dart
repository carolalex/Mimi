import 'package:flutter/material.dart';
import 'package:mimo_staticdesign/login.dart';
import 'package:mimo_staticdesign/common_widgets/reusable_widget.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  bool _obscureText = true;
  final _fullnameFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _mobilenoFocusNode = FocusNode();
  final _conpasswordFocusNode = FocusNode();
  bool _checkval = false;

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _fullnameFocusNode.dispose();
    _passwordFocusNode.dispose();
    _mobilenoFocusNode.dispose();
    _conpasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bluebg.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('images/Logo.png'),
                    Image.asset('images/Logotype.png'),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Image.asset('images/house.png'),
              SizedBox(height: screenHeight * 0.04),
              const Text(
                "Sign up into your account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.005),
              const Text(
                'Welcome',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20),
                child: Row(
                  children: [
                    Text(
                      "Full Name",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Custom_TextFormFields(
                  focusNode: _fullnameFocusNode,
                  labelText: "Enter your Fullname",
                  onFieldSubmitted: () {
                    FocusScope.of(context).requestFocus(_mobilenoFocusNode);
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20),
                child: Row(
                  children: [
                    Text(
                      "Mobile No",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Custom_TextFormFields(
                  focusNode: _mobilenoFocusNode,
                  labelText: "Enter your Mobile number",
                  onFieldSubmitted: () {
                    FocusScope.of(context).requestFocus(_emailFocusNode);
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Email(context),
              ),
              SizedBox(height: screenHeight * 0.02),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Password_text(
                  labelText: "Enter your Password",
                  focusNode: _passwordFocusNode,
                  onFieldSubmitted: () {
                    FocusScope.of(context).requestFocus(_conpasswordFocusNode);
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Confirm Password",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Password_text(
                  labelText: "Re-enter your Password",
                  focusNode: _passwordFocusNode,
                  onFieldSubmitted: () {
                    _passwordFocusNode.unfocus();
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Checkbox(
                    value: _checkval,
                    onChanged: (newValue) {
                      setState(
                        () {
                          _checkval = newValue!;
                        },
                      );
                    },
                    side: const BorderSide(color: Colors.purple),
                    checkColor: Colors.green,
                  ),
                  const Text(
                    'By clicking this you are agreeing to our',
                    style: TextStyle(fontSize: 10),
                  ),
                  const InkWell(
                    child: Text(
                      "Terms & conditions",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: const Size(340, 50),
                ),
                child: const Text("Register"),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 50,
                  width: 340,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('images/google.jpg'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Sign in with Google",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Have an account?'),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Login_page(),
                        ),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
