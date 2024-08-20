import 'package:cricket/screens/cricket_goats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cricket/screens/cricket_tutorial_video.dart';
import 'package:cricket/screens/cricket_tutorials.dart';
import 'package:cricket/screens/cricket_tutorials_categories.dart';
import 'package:cricket/screens/news_and_blogs.dart'; // Import the NewsAndBlogs screen
import 'package:cricket/screens/news_and_blog_detail.dart';
import 'package:cricket/screens/splashscreen.dart'; // Import the Splashscreen
import 'package:cricket/screens/live_channels.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // You can use the library anywhere in the app even in theme

          home: child,
        );
      },
      child: const Splashscreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    print('Building HomeScreen');
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                // width: double.infinity,
                // height: 410,
                width: double.infinity,
                height:ScreenUtil().setHeight(425),
                color: Colors.transparent,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cricket',
                        style: GoogleFonts.kumbhSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 50.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Cricket, a globally cherished sport, combines strategy, '
                            'power, and precision. Played on expansive fields with teams of eleven, '
                            'it hinges on skilled batting, agile fielding, and diverse bowling techniques. '
                            'Matches unfold with gripping intensity, spanning hours or days, showcasing athletic '
                            'prowess and strategic finesse.',
                  
                        style: GoogleFonts.kumbhSans(
                          textStyle: TextStyle(
                  
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                // height: 535,
                height: ScreenUtil().setHeight(535),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Text(
                          'Explore Now 🏏',
                          style: GoogleFonts.kumbhSans(
                            textStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 38.sp,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CricketTutorialsCategories(),
                                  ),
                                );
                              },
                              child: Container(
                                // width: 140,
                                // height: 128,
                                width: ScreenUtil().setWidth(150),
                                height: ScreenUtil().setHeight(135),
                                decoration: BoxDecoration(
                                  color: Color(0xFF9F9F9F),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height: screenHeight * 0.1,
                                        width: screenWidth * 1,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF9F9F9F),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Image.asset(
                                            'images/videotutorialslogo.png',
                                            // width: 300,
                                            // height: 200,
                                            width: ScreenUtil().setWidth(300),
                                            height: ScreenUtil().setHeight(210),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Cricket Tutorials',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NewsAndBlogs(),
                                  ),
                                );
                              },
                              child: Container(
                                // width: 140,
                                // height: 128,
                                width: ScreenUtil().setWidth(150),
                                height: ScreenUtil().setHeight(135),
                                decoration: BoxDecoration(
                                  color: Color(0xFF9F9F9F),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height: screenHeight * 0.1,
                                        width: screenWidth * 1,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF9F9F9F),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Image.asset(
                                            'images/playerinfologo.png',
                                            // width: 300,
                                            // height: 200,
                                            width: ScreenUtil().setWidth(300),
                                            height: ScreenUtil().setHeight(210),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'News And Blogs',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LiveChannels(),
                                  ),
                                );
                              },
                              child: Container(
                                width: ScreenUtil().setWidth(150),
                                height: ScreenUtil().setHeight(135),
                                decoration: BoxDecoration(
                                  color: Color(0xFF9F9F9F),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height: screenHeight * 0.1,
                                        width: screenWidth * 1,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF9F9F9F),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Image.asset(
                                            'images/livechannelslogo1.png',
                                            // width: 300,
                                            // height: 200,
                                            width: ScreenUtil().setWidth(300),
                                            height: ScreenUtil().setHeight(210),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Live Channels',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CricketGoats(),
                                  ),
                                );
                              },
                              child: Container(
                                // width: 140,
                                // height: 128,
                                width: ScreenUtil().setWidth(150),
                                height: ScreenUtil().setHeight(135),
                                decoration: BoxDecoration(
                                  color: Color(0xFF9F9F9F),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height: screenHeight * 0.1,
                                        width: screenWidth * 1,

                                        decoration: BoxDecoration(
                                          color: Color(0xFF9F9F9F),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Image.asset(
                                            'images/cricketgoatslogo.png',
                                            // width: 300,
                                            // height: 200,
                                            width: ScreenUtil().setWidth(300),
                                            height: ScreenUtil().setHeight(200),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Cricket Goats',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.sp,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
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
            ],
          ),
        ),
      ),
    );
  }
}
