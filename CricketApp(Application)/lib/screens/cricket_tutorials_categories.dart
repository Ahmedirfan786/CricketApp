import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cricket/models/crickettutorialcategoriesmodel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cricket/screens/cricket_tutorials.dart';

class CricketTutorialsCategories extends StatefulWidget {
  const CricketTutorialsCategories({super.key});

  @override
  State<CricketTutorialsCategories> createState() => _CricketTutorialsCategoriesState();
}

class _CricketTutorialsCategoriesState extends State<CricketTutorialsCategories> {
  List<Crickettutorialcategories> categories = [];
  bool isLoading = true; // Track loading state

  @override
  void initState() {
    super.initState();
    fetchCategories();
  }

  Future<void> fetchCategories() async {
    final response = await http.get(Uri.parse('http://192.168.100.16:8080/CricketApp/Api2.php'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      setState(() {
        categories = List<Crickettutorialcategories>.from(
            data.map((item) => Crickettutorialcategories.fromJson(item)));
        isLoading = false; // Data has been loaded
      });
      print('Fetched categories: $categories');
    } else {
      print('Failed to fetch data: ${response.statusCode}');
      setState(() {
        isLoading = false; // Loading has completed even if it failed
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = MediaQuery.of(context).size.width > 520 ? 3 : 2;

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
              backgroundImage: AssetImage('images/videotutorialslogo.png'), // Update this to match your logo
              radius: 20.r,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "Cricket Tutorials",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator()) // Show loading indicator while fetching data
          : categories.isEmpty
          ? Center(
        child: Text(
          'No Data',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
        ),
      )
          : Padding(
        padding: EdgeInsets.all(15.w),
        child: GridView.count(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 10.w,
          children: categories.map((category) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CricketTutorials(
                      categoryId: category.catId,
                      categoryName: category.catName,
                      categoryImage: category.catImage,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Image.network(
                  category.catImage,
                  fit: BoxFit.cover,
                  // onError: (error, stackTrace) {
                  //   print('Image load error: $error');
                  // },
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
