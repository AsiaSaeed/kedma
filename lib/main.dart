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
        seconds: 5,
        navigateAfterSeconds: new AfterSplash(),
        title: new Text('\n\n\n\nK   E   D   M   A         C   O   S   M   E   T   I   C   S'
            '\n    F   O   R   E   V   E   R        Y   O   U   N   G',
            style: TextStyle(color: splashTxtColor, fontSize: 20)),
        image: new Image.asset('assets/logo.png', width: 200, height: 400),
        backgroundColor: splashColor,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.grey
    );
  }
}
class AfterSplash extends StatelessWidget{
  Color darkBlueAppCol = new Color(int.parse("0xff002046"));
  Color yellowAppCol = new Color(int.parse("0xffdfd29e"));
  @override
  Widget build(BuildContext context) {
    return new Flippo(
      mask: new Scaffold(
        backgroundColor: Colors.white,
      ),
      body: new Scaffold(
        appBar: new AppBar(
          title:Center(child:Image.asset('assets/logo.png', fit: BoxFit.cover,height: 90,width: 90)),
          automaticallyImplyLeading: false,
          backgroundColor: darkBlueAppCol,
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
        body:new Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 50, 8, 20),
                child: Image.asset('assets/logo.png',height: 200,width: 300),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                child: Text('Home',style: TextStyle(color: yellowAppCol,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                child: Text('Kedma Exclusives',style: TextStyle(color: yellowAppCol,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                child: Text('Shop',style: TextStyle(color: yellowAppCol,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                child: Text('Discount',style: TextStyle(color: yellowAppCol,fontSize: 20),),
              )
      ],
        ),
      ),
    );;
  }
}
/*
 new Scaffold(
    );*/