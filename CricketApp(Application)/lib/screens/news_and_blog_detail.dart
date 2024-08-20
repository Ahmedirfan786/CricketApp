import 'package:flutter/material.dart';
import '../models/newsandblogsmodel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsAndBlogDetail extends StatelessWidget {
  final Newsandblogs newsandblogs;

  const NewsAndBlogDetail({super.key, required this.newsandblogs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/playerinfologo.png'),
              radius: 20.r,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "News & Blogs",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
              ),
            )
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Cover image row
              Container(
                width: double.infinity,
                // height: 250,
                height: 250.h,
                margin: EdgeInsets.all(15),
                child: Image.network(
                  newsandblogs.coverImage, // Use coverImage from the passed data
                  fit: BoxFit.cover,
                ),
              ),
              // Title row
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  newsandblogs.title,
                  style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w600),
                ),
              ),
              // Description row
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  newsandblogs.description,
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
