import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/newsandblogsmodel.dart';
import 'news_and_blog_detail.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsAndBlogs extends StatefulWidget {
  const NewsAndBlogs({super.key});

  @override
  State<NewsAndBlogs> createState() => _NewsAndBlogsState();
}

class _NewsAndBlogsState extends State<NewsAndBlogs> {
  List<Newsandblogs> newsandblogs = [];
  bool isLoading = true; // Track loading state

  @override
  void initState() {
    super.initState();
    getData(); // Fetch data when the widget is initialized
  }

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil within the build method to ensure it works correctly
    ScreenUtil.init(context);

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
            const SizedBox(width: 5),
            Text(
              "News & Blogs",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator()) // Show loading indicator while fetching data
          : newsandblogs.isEmpty
          ? Center(
        child: Text(
          'No Data',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
        ),
      )
          : SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: newsandblogs.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsAndBlogDetail(
                          newsandblogs: newsandblogs[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100.h,
                    color: const Color(0xffD0D0D0),
                    margin: const EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 220.w,
                          height: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  newsandblogs[index].title,
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  newsandblogs[index].type,
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 110.w,
                          height: double.infinity,
                          child: Image.network(
                            newsandblogs[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getData() async {
    final response = await http.get(Uri.parse('http://192.168.100.16:8080/CricketApp/Api1.php'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      setState(() {
        newsandblogs = List<Newsandblogs>.from(data.map((item) => Newsandblogs.fromJson(item)));
        isLoading = false; // Data has been loaded
      });
    } else {
      print('Failed to fetch data: ${response.statusCode}');
      setState(() {
        isLoading = false; // Loading has completed even if it failed
      });
    }
  }
}
