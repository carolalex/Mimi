import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bluebg.jpeg'),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/Logo.png'),
                Image.asset('images/Logotype.png'),
              ],
            ),
            SizedBox(height: screenHeight * 0.04),
            Image.asset('images/register.png'),
            SizedBox(height: screenHeight * 0.04),
            const Text(
              "Registered",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenHeight * 0.35),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Register(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: const Size(340, 50),
                ),
                child: const Text("Get Started"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
