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
          _getHeader(),
          SizedBox(height: 20),
          _getRowIcons(),
          SizedBox(height: 20),
          _getSkillLables(),
        ],
      ),
    );
  }

  Widget _getHeader() {
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

  Widget _getSkillLables() {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Card(
            elevation: 6,
            shadowColor: Color(0xFFE5B299),
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  child: Image(
                    image: AssetImage('images/html5.png'),
                  ),
                ),
                Text('HTML5')
              ],
            )),
        Card(
            elevation: 6,
            shadowColor: Color(0xFFE5B299),
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  child: Image(
                    image: AssetImage('images/css3.png'),
                  ),
                ),
                Text('Css3')
              ],
            )),
        Card(
            elevation: 6,
            shadowColor: Color(0xFFE5B299),
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  child: Image(
                    image: AssetImage('images/JavaScript.png'),
                  ),
                ),
                Text('JavaScript')
              ],
            )),
        Card(
            elevation: 6,
            shadowColor: Color(0xFFE5B299),
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  child: Image(
                    image: AssetImage('images/React.png'),
                  ),
                ),
                Text('React.js')
              ],
            )),
        Card(
            elevation: 6,
            shadowColor: Color(0xFFE5B299),
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  child: Image(
                    image: AssetImage('images/flutter.png'),
                  ),
                ),
                Text('flutter')
              ],
            )),
        Card(
            elevation: 6,
            shadowColor: Color(0xFFE5B299),
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  child: Image(
                    image: AssetImage('images/dart.png'),
                  ),
                ),
                Text('dart')
              ],
            ))
      ],
    );
  }
}
