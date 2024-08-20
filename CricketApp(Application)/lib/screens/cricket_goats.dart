import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cricket/screens/cricket_goat_view.dart';
import 'package:cricket/models/cricketgoatsmodel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CricketGoats extends StatefulWidget {
  const CricketGoats({super.key});

  @override
  State<CricketGoats> createState() => _CricketGoatsState();
}

class _CricketGoatsState extends State<CricketGoats> {
  List<Cricketgoats> goats = [];
  bool isLoading = true; // Track loading state

  @override
  void initState() {
    super.initState();
    fetchGoats();
  }

  Future<void> fetchGoats() async {
    final response = await http.get(Uri.parse('http://192.168.100.16:8080/CricketApp/Api5.php'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      List<Cricketgoats> allGoats = List<Cricketgoats>.from(data.map((item) => Cricketgoats.fromJson(item)));
      setState(() {
        goats = allGoats;
        isLoading = false; // Data has been loaded
      });
      print('Fetched goats: $goats');
    } else {
      print('Failed to fetch data: ${response.statusCode}');
      setState(() {
        isLoading = false; // Loading has completed even if it failed
      });
    }
  }

  Color getBackgroundColor(String country) {
    switch (country.toLowerCase()) {
      case 'australia':
        return Color(0xFFFFE000);
      case 'afghanistan':
        return Color(0xFFD32011);
      case 'bangladesh':
        return Color(0xFF006A4D);
      case 'india':
        return Color(0xFF35CAFE);
      case 'new zealand':
        return Colors.grey;
      case 'pakistan':
        return Colors.lightGreenAccent;
      case 'south africa':
        return Color(0xFF006651);
      case 'sri lanka':
        return Color(0xFF0000C8);
      case 'west indies':
        return Color(0xFF7B0041);
      default:
        return Colors.white;
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
              backgroundImage: AssetImage('images/cricketgoatslogo.png'),
              radius: 20.r,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "Cricket Goats",
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
          : goats.isEmpty
          ? Center(
        child: Text(
          'No Data',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
        ),
      )
          : Padding(
        padding: EdgeInsets.all(10.w),
        child: GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          children: goats.map((goat) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CricketGoatView(
                      goat: goat,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: getBackgroundColor(goat.country),
                ),
                child: Image.network(
                  goat.image,
                  fit: BoxFit.contain,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
