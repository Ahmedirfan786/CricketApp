// cricket_tutorial_video.dart
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CricketTutorialVideo extends StatelessWidget {
  final String videoTitle;
  final String videoUrl;
  final String categoryImage; // Ensure this parameter is included
  final String categoryName; // Ensure this parameter is included

  const CricketTutorialVideo({
    required this.videoTitle,
    required this.videoUrl,
    required this.categoryImage, // Add this line to include the parameter
    required this.categoryName, // Add this line to include the parameter
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    var videoheight= ScreenUtil().setHeight(350);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundImage: NetworkImage(categoryImage), // Use the category image
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                categoryName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            color: Colors.white,
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HtmlWidget(
                  '<iframe width="${constraints.maxWidth}" height="${videoheight}" src="${videoUrl.replaceFirst("watch?v=", "embed/")}" title="$videoTitle" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
                ),
                SizedBox(height: 16),
                Text(
                  videoTitle,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
