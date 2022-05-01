import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        backgroundColor: Color(0xFFFCDEC0),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      // elevation: 0,
      backgroundColor: Color(0xFF7D5A50),
      title: Center(
        child: Text('مهسا خدائی'),
      ),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          _getMainContent(),
          SizedBox(height: 20),
          _getRowIcons(),
          SizedBox(height: 20),
          _getSkillLables(),
          SizedBox(height: 20),
          _getResume(),
        ],
      ),
    );
  }

  Widget _getMainContent() {
    return Column(
      children: [
        SizedBox(width: double.infinity),
        SizedBox(height: 50),
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('images/ax.jpg'),
            radius: 80,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Front-End برنامه نویس',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w900,
            color: Color(0xFFB4846C),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'علاقه‌مند به یادگیری مفاهیم جدید ، دارای روحیه کار تیمی ، فعالیت در استارتاپ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
            color: Color(0xFF7D5A50),
          ),
        ),
      ],
    );
  }

  Widget _getRowIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagramSquare,
              color: Color(0xFF7D5A50)),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.github, color: Color(0xFF7D5A50)),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin, color: Color(0xFF7D5A50)),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.telegram,
            color: Color(0xFF7D5A50),
          ),
        )
      ],
    );
  }

  Widget _getResume() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: double.infinity,
      color: Color(0xFFE5B299),
      child: Column(
        children: [
          Text(
            'سابقه‌ی کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF7D5A50),
            ),
          ),
          _getHistoryColumn()
        ],
      ),
    );
  }

  Widget _getHistoryColumn() {
    var list = [
      'فعالیت در استارتاپ کاردان(flutter)',
      'طراحی وب سایت آنی میت(React.js)',
      'طراحی وب سایت رهبیم(React.js)',
      'طراح سایت ترکی(وردپرس)ArtanRenkli',
      'طراح سایت اتاق بازرگانی ایران-فنلاند(وردپرس)'
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(width: double.infinity, height: 20),
        for (var title in list)
          Text(
            '$title',
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
                color: Color(0xFF7D5A50)),
          ),
      ],
    );
  }

  Widget _getSkillLables() {
    var list = ['HTML5', 'Css3', 'Dart', 'Flutter', 'JavaScript', 'React'];
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (var skill in list)
          Card(
              elevation: 6,
              shadowColor: Color(0xFFE5B299),
              child: Column(
                children: [
                  Container(
                    height: 80.0,
                    width: 80.0,
                    child: Image(
                      image: AssetImage('images/$skill.png'),
                    ),
                  ),
                  Text('$skill')
                ],
              )),
      ],
    );
  }
}
