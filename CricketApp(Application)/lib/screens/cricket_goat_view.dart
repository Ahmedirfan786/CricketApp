import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cricket/models/cricketgoatsmodel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CricketGoatView extends StatelessWidget {
  final Cricketgoats goat;

  const CricketGoatView({super.key, required this.goat});

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
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

  String getFlagUrl(String country) {
    switch (country.toLowerCase()) {
      case 'australia':
        return 'https://static.vecteezy.com/system/resources/previews/011/571/471/original/circle-flag-of-australia-free-png.png';
      case 'afghanistan':
        return 'https://static.vecteezy.com/system/resources/previews/011/571/509/original/circle-flag-of-afghanistan-free-png.png';
      case 'bangladesh':
        return 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Round_Flag_of_Bangladesh_-_centered.svg/2048px-Round_Flag_of_Bangladesh_-_centered.svg.png';
      case 'india':
        return 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_India.png/2560px-Flag_of_India.png';
      case 'new zealand':
        return 'https://static.vecteezy.com/system/resources/previews/016/328/987/original/new-zealand-flat-rounded-flag-with-transparent-background-free-png.png';
      case 'pakistan':
        return 'https://static.vecteezy.com/system/resources/previews/016/328/524/non_2x/pakistan-flat-rounded-flag-icon-with-transparent-background-free-png.png';
      case 'south africa':
        return 'https://static.vecteezy.com/system/resources/previews/037/303/001/original/south-africa-flag-with-yellow-frame-free-flag-image-with-transparent-background-national-flag-free-png.png';
      case 'sri lanka':
        return 'https://static.vecteezy.com/system/resources/previews/016/707/547/original/sri-lanka-flag-circle-shape-flag-icon-png.png';
      case 'west indies':
        return 'https://static.vecteezy.com/system/resources/previews/024/289/394/non_2x/illustration-of-west-indies-flag-design-vector.jpg';
      default:
        return '';
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
              backgroundImage: NetworkImage(getFlagUrl(goat.country)),
              radius: 20.r,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              goat.country.toUpperCase(),
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
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 6,
                      color: getBackgroundColor(goat.country),
                      child: Image.network(goat.image),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Name: ${goat.name}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                      Text("Type: ${goat.type}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                      Text("Hand: ${goat.handed}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                      Text("Team: ${goat.country}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
                      Text("DOB: ${goat.dateOfBirth}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200)),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Biography",
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        goat.biography,
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "For More Info Click below 👇🏻",
                        style: TextStyle(color: Colors.purpleAccent, fontSize: 22),
                      ),
                      GestureDetector(
                        onTap: () => _launchURL(goat.forMoreLink),
                        child: Text(
                          goat.forMoreLink,
                          style: TextStyle(color: Colors.blue, fontSize: 20, decoration: TextDecoration.underline),
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
    );
  }
}
