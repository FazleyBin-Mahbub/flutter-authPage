import 'package:flutter/material.dart';
import 'package:flutter_practice/this%20months%20challenge/SignIn%20&%20SignUp/signin_page.dart';

import 'package:google_fonts/google_fonts.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/bg.jpg',
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 140.0),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: Text(
                        'heart link',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 25,
                          wordSpacing: 2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: _buildContainer(
                        color: Colors.black12,
                        height: size.height / 13,
                        width: size.width / 1.2,
                        borderColor: Colors.white,
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.laila(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onDoubleTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInPage(),
                            ),
                            );
                      },
                      child: _buildContainer(
                        height: size.height / 13,
                        width: size.width / 1.2,
                        borderColor: Colors.white,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            'Log in',
                            style: GoogleFonts.raleway(
                              color: Color(0xff40c4ff),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildContainer(
    {Color color, borderColor, double height, width, Widget child}) {
  return Container(
    child: child,
    height: height,
    width: width,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: borderColor,
        ),
        ),
  );
}
