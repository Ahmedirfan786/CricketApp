import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveChannelView extends StatefulWidget {
  const LiveChannelView({super.key, required this.channelName, required this.channelLink, required this.channelImage});

  final String channelName;
  final String channelLink;
  final String channelImage;

  @override
  State<LiveChannelView> createState() => _LiveChannelViewState();
}

class _LiveChannelViewState extends State<LiveChannelView> {
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
              backgroundImage: NetworkImage(widget.channelImage),
              radius: 20.r,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              widget.channelName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
              ),
            )
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            color: Colors.white,
            child: HtmlWidget(
              '<iframe src="${widget.channelLink}" width="${constraints.maxWidth}" height="${constraints.maxHeight}" allowfullscreen></iframe>',
            ),
          );
        },
      ),

    );
  }
}
