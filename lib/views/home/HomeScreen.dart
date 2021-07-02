import 'package:aeadty/components/MyDrawer.dart';
import 'package:aeadty/helpers/constants.dart';
import 'package:aeadty/views/home/components/DoctorsCard.dart';
import 'package:aeadty/views/home/components/HomeCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'components/NewsCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> titles = [
    'أرقام الطوارئ',
    'العنوان',
    'بريد التواصل',
  ];
  final List<String> body = [
    '00966537505274 00966550029493',
    'طريق الملك عبدالله، الخليج، الرياض',
    'site@mira-clinic1.com',
  ];
  final List<IconData> iconNames = [
    Icons.phone,
    Icons.pin_drop,
    Icons.email,
  ];

  final List<String> Docstitles = [
    'دكتور: عبدالرحمن ابراهيم',
    'دكتور: محمد عبدالله',
    'دكتور: محمد الدالى',
  ];
  final List<String> SpesList = [
    'اسنان',
    'باطنة',
    'علاج طبيعى',
  ];

  final List<String> docsImageList = [
    'assets/docs/doctor1.jpg',
    'assets/docs/doctor2.jpg',
    'assets/docs/doctor3.jpg',
  ];

  final List<String> NewsTitles = [
    'فريق طبي يجري اختبارات لبرتوكل علاجي لمرضي كورونا',
    'فريق طبي يجري اختبارات لبرتوكل علاجي لمرضي كورونا',
    'فريق طبي يجري اختبارات لبرتوكل علاجي لمرضي كورونا',
  ];
  final List<String> NewsBody = [
    'قام فريق طبي بأجراءاختبارات سريرية لبرتوكول علاجي لمرضي كرونا بحقن بلازما المتع...',
    'قام فريق طبي بأجراءاختبارات سريرية لبرتوكول علاجي لمرضي كرونا بحقن بلازما المتع...',
    'قام فريق طبي بأجراءاختبارات سريرية لبرتوكول علاجي لمرضي كرونا بحقن بلازما المتع...',
  ];
  final List<String> NewsImages = [
    'assets/news/news1.jpg',
    'assets/news/news2.jpg',
    'assets/news/news3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title:Text('الرئيسية'),
        centerTitle: true,
        backgroundColor: main_color,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image(
              image: AssetImage('assets/logo.png'),
              width: 100,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ImageSlideshow(
            width: double.infinity,
            height: 200,
            initialPage: 0,
            indicatorColor: Colors.blue,
            indicatorBackgroundColor: Colors.grey,
            children: [
              Image.asset(
                'assets/sliders/slider_1.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/sliders/slider_2.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/sliders/slider_3.jpg',
                fit: BoxFit.cover,
              ),
            ],
            onPageChanged: (value) {
            },
            autoPlayInterval: 3000,
          ),
          SizedBox(height: 15,),
          Container(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx,index){
                return HomeCard(title: titles[index], body: body[index],iconName: iconNames[index],);
              },
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'اطباء متميزون' ,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 28,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            height: 380,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx,index){
                return DoctorsCard(title: Docstitles[index], body: SpesList[index],imageName: docsImageList[index],);
              },
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'أحدث الاخبار' ,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 28,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            height: 450,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx,index){
                return NewsCard(title: NewsTitles[index], body: NewsBody[index],imageName: NewsImages[index],date: ' 2020-07-15',);
              },
            ),
          ),
          SizedBox(height: 200,)
        ],
      ),
    );
  }
}
