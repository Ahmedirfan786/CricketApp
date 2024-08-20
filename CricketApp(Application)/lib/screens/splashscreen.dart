import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cricket/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 4), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Center(
          child: Container(
            // height: 490,
            // width: 350,
            height: ScreenUtil().setHeight(490),
            width: ScreenUtil().setWidth(350),
            child: Column(
              children: [
                Container(
                  // height: 380,
            height: ScreenUtil().setHeight(380),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/splashscreenlogo1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  child: Text(
                    'CRICKET',
                    style: GoogleFonts.kumbhSans(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Powered By ',
                          style: GoogleFonts.kumbhSans(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Flutter',
                          style: GoogleFonts.kumbhSans(
                            textStyle: TextStyle(
                              color: Color(0xFF8EF5FC), // Use the specific color code
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
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
