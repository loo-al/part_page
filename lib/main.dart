/*
al.com is a website built with flutter dart and compiled into HTML.

preconditions:    Url to this page is on landing site and forwards to this path
post conditions:  Users can can view the site path  and interact with the interface

Author:           Aurthor
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:part_page/strings.dart';
import 'package:part_page/theme/theme_manager.dart';
import 'package:part_page/theme/theme_variants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'size.dart';

void main() {
  runApp(MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  //const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }
  @override
  void initState(){
    _themeManager.addListener(themeListener);
    super.initState();
  }
  themeListener(){
    if(mounted){
      setState(() {

      });
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project: App Name',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      /*
      theme: ThemeData(
        colorScheme: lightTheme.colorScheme
      ),
      */
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,

      home: Builder(
        builder: (context){
          Size.init(context);
          return MyPage(title: 'AL',);
        }
      )

    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  final String title;

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    // Set a max width for the components below the AppBar
    const maxWidth = 1000.0;
    const maxSmallWidth = 518;
    final isSmallWidth = Size().getScreenWidth() < 715;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(0xFF121212),
        title: Center(
          child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxWidth),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center logo and buttons
                children: [

                  // Left asset in appbar
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'images/AL_logo.png',
                        width: 50, // Set the width of the image
                        height: 50, // Set the height of the image
                      ),

                      SizedBox(width: Size().onew,),
                      Text( '|',
                        style: TextStyle(
                          color: isDarkMode
                              ? MEDIUM_GREY
                              : Colors.grey[300],
                          fontSize: 36,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      SizedBox(width: Size().onew,),
                      Text( Strings().appbar_title,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),

                  Spacer(flex: 1),

                  // SizedBox(
                  //     width: Size().getScreenWidth() < 800
                  //         ? (Size().twentyw )
                  //         : (Size().thirtyw + Size().fivew + Size().twow + 15)
                  // ),

                  // Floating Buttons with right padding (adjustable)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {();},
                        // onPressed: () {_scrollToSection(_aboutKey);},
                        child: Text(
                          "BACK",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w900
                          ),

                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          isDarkMode
                              ? Icons.wb_sunny_outlined
                              : Icons.dark_mode_outlined,
                          size: 20,
                        ),
                        onPressed: (){
                          _themeManager.toggleTheme();
                        },
                      )
                    ],
                  ),
                ],
              ), // Row
            ),
           // Padding
        ), // Center
      ),

      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxWidth),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(height: Size().fiveh),

                  // Page Title handles resizing
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: maxWidth
                    ),
                    child: isSmallWidth
                      // width <= 715
                      ?Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Strings().page_titile1,
                          style: Theme.of(context).textTheme.displayMedium, ),
                        Text(Strings().page_titile2,
                          style: TextStyle(color: CUSTOM_GREEN, fontSize: 45
                          ),
                        ),
                      ],
                    )
                    // width >= 715
                    : Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(Strings().page_titile1,
                          style: Theme.of(context).textTheme.displayMedium, ),
                        SizedBox(width: 15),
                        Text(Strings().page_titile2,
                          style: TextStyle(color: CUSTOM_GREEN, fontSize: 45
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: Size().body_space),

                  Text(Strings().title_intro,
                    style: Theme.of(context).textTheme.displaySmall, ),

                  SizedBox(height: Size().body_space),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.date_range_rounded),
                      SizedBox(width: 3),
                      Text(Strings().title_date,
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),


                  SizedBox(height: Size().body_space),

                  Text(Strings().page_bodyi,
                    style: Theme.of(context).textTheme.displaySmall, ),

                  SizedBox(height: Size().body_space),

                  Text(Strings().page_bodyii,
                    style: Theme.of(context).textTheme.displaySmall, ),

                  // Text(Strings().test,
                  //   style: Theme.of(context).textTheme.bodyLarge, ),
                  // Text(Strings().test,
                  //   style: Theme.of(context).textTheme.bodyMedium, ),
                  Text( '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // First FAB (increment)
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          SizedBox(width: 16),  // Add spacing between buttons
          // Second FAB (decrement)
          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Reset',
            backgroundColor: Colors.purpleAccent,
            child: const Icon(Icons.restart_alt),
          ),
        ],
      ),

    );
  }
}