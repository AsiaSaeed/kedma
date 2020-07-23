import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flippo_navigation/flippo_navigation.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Kedma',
        home: MyHomePage(title: 'Kedma'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  static String hexString = "002046";
  static String hexTxtSplash = "dfd29e";
  Color splashTxtColor = Color(int.parse("0xff${hexTxtSplash}"));
  Color splashColor = Color(int.parse("0xff${hexString}"));
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 10,
        navigateAfterSeconds: new AfterSplash(),
        title: new Text('\n\n\n\nK   E   D   M   A     C   O   S   M   E   T   I   C   S'
            '\n\tF   O   R   E   V   E   R     Y   O   U   N   G',
            style: TextStyle(color: splashTxtColor, fontSize: 20, fontFamily: 'Burford')),
        image: new Image.asset('assets/logo.png', width: 200, height: 400),
        backgroundColor: splashColor,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.grey
    );
  }
}
class AfterSplash extends StatelessWidget{
  Color appBarCol = new Color(int.parse("0xff002046"));
  @override
  Widget build(BuildContext context) {
    return new Flippo(
      mask: new Scaffold(
        backgroundColor: Colors.white,
      ),
      body: new Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: appBarCol,
        ),
        body: new Center(
          child: new Text("Done!",
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0
            ),),
        ),
      ),
      drawer: new Scaffold(
        backgroundColor: Colors.black,
      ),
    );;
  }
}
/*
 new Scaffold(
    );*/