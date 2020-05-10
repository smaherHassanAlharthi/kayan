import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'src/pages/slideshow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "SA"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("ar", "SA"), // OR Locale('ar', 'AE') OR Other RTL locales,

      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: splashPage(),
      //ChooseCall(),
    );
  }
}

class splashPage extends StatefulWidget {
  @override
  _splashPageState createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {

  bool visibleSplash = false;

  @override
  void initState() {

    super.initState();


    Future.delayed(
        Duration(milliseconds: 800),
            (){
          setState(() {
            visibleSplash = true;
          });

          Future.delayed(
              Duration(seconds: 3),
                  (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SlideShow(),
                  ),
                );
              }
          );

        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff927DFF),
        ),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                  opacity: visibleSplash ? 1 : 0,
                  duration: Duration(milliseconds: 500),
                  child: Container(

                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Image.asset(
                      "assets/kayanok.png",
                      fit: BoxFit.cover,
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
