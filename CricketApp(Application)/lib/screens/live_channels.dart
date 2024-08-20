import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'live_channel_view.dart';
import 'package:cricket/models/livechannelsmodel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveChannels extends StatefulWidget {
  const LiveChannels({super.key});

  @override
  State<LiveChannels> createState() => _LiveChannelsState();
}

class _LiveChannelsState extends State<LiveChannels> {
  List<Livechannels> channels = [];
  bool isLoading = true; // Track loading state

  @override
  void initState() {
    super.initState();
    fetchChannels();
  }

  Future<void> fetchChannels() async {
    final response = await http.get(Uri.parse('http://192.168.100.16:8080/CricketApp/Api4.php'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      List<Livechannels> allChannels = List<Livechannels>.from(data.map((item) => Livechannels.fromJson(item)));
      setState(() {
        channels = allChannels;
        isLoading = false; // Data has been loaded
      });
      print('Fetched channels: $channels');
    } else {
      print('Failed to fetch data: ${response.statusCode}');
      setState(() {
        isLoading = false; // Loading has completed even if it failed
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Determining the number of grid columns based on screen width
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
              backgroundImage: AssetImage('images/livechannelslogo1.png'),
              radius: 20.r,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "Live Channels",
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
          : channels.isEmpty
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
          children: channels.map((channel) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LiveChannelView(
                      channelName: channel.channelName,
                      channelLink: channel.channelLink,
                      channelImage: channel.channelImage,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                ),
                child: Image.network(
                  channel.channelImage,
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
