import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:cricket/models/crickettutorialsmodel.dart';
import 'package:cricket/screens/cricket_tutorial_video.dart'; // Import the video screen

class CricketTutorials extends StatefulWidget {
  final String categoryId;
  final String categoryName;
  final String categoryImage;

  const CricketTutorials({
    required this.categoryId,
    required this.categoryName,
    required this.categoryImage,
    super.key,
  });

  @override
  State<CricketTutorials> createState() => _CricketTutorialsState();
}

class _CricketTutorialsState extends State<CricketTutorials> {
  List<Crickettutorials> tutorials = [];
  bool isLoading = true; // Track loading state

  @override
  void initState() {
    super.initState();
    fetchTutorials();
  }

  Future<void> fetchTutorials() async {
    final response = await http.get(Uri.parse('http://192.168.100.16:8080/CricketApp/Api3.php'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      List<Crickettutorials> allTutorials = List<Crickettutorials>.from(
          data.map((item) => Crickettutorials.fromJson(item)));
      setState(() {
        tutorials = allTutorials.where((tutorial) => tutorial.catId == widget.categoryId).toList();
        isLoading = false; // Data has been loaded
      });
      print('Fetched tutorials: $tutorials');
    } else {
      print('Failed to fetch data: ${response.statusCode}');
      setState(() {
        isLoading = false; // Data has been loaded (or attempt failed)
      });
    }
  }

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
              backgroundImage: NetworkImage(widget.categoryImage),
              radius: 20.r,
            ),
            SizedBox(width: 10.w),
            Text(
              widget.categoryName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
              ),
              overflow: TextOverflow.ellipsis, // Adds ellipsis if text overflows
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: isLoading
            ? Center(child: CircularProgressIndicator()) // Show loading indicator
            : tutorials.isEmpty
            ? Center(
          child: Text(
            'No Data',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
          ),
        )
            : ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: tutorials.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CricketTutorialVideo(
                      videoTitle: tutorials[index].title,
                      videoUrl: tutorials[index].video, // Correctly use the video field
                      categoryName: widget.categoryName, // Ensure this is passed
                      categoryImage: widget.categoryImage, // Ensure this is passed
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  color: Colors.black38,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 180.h, // Fixed height for the image
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(tutorials[index].image),
                          fit: BoxFit.cover,
                          onError: (error, stackTrace) {
                            print('Image load error: $error');
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.w), // Padding around text
                      child: Text(
                        tutorials[index].title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
