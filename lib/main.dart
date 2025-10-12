/*
al.com is a website built with flutter dart and compiled into HTML.

preconditions:    Url to this page is on landing site and forwards to this path
post conditions:  Users can can view the site path  and interact with the interface

Author:           Aurthor
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

      /*
      // Default theme
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyPage(title: 'AL'),
      */

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
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        title: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxWidth),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center logo and buttons
                children: [

                  // Left asset in appbar
                  Image.asset(
                    'images/AL_logo.png',
                    width: 50, // Set the width of the image
                    height: 50, // Set the height of the image
                  ),

                  SizedBox(
                      width: Size().getScreenWidth() < 800
                          ? (Size().twentyw )
                          : (Size().thirtyw + Size().fivew) + 15
                  ),

                  // Floating Buttons with right padding (adjustable)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {();},
                        // onPressed: () {_scrollToSection(_aboutKey);},
                        child: Text(
                          "APP NAME",

                          style: TextStyle(
                              color: Colors.grey[400],
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
          ), // Padding
        ), // Center
      ),

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the large button this many times:',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text('You have pushed the medium button this many times:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // First FAB (increment)
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            // backgroundColor: Theme.of(context).brightness == Brightness.dark
            //     ? CUSTOM_GREEN
            //     : LIGHT_ACCENT,
            child: const Icon(Icons.add),
          ),
          SizedBox(width: 16),  // Add spacing between buttons
          // Second FAB (decrement)
          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Reset',
            backgroundColor: Colors.purple,
            child: const Icon(Icons.restart_alt),
          ),
        ],
      ),

      /*
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? DARK_ACCENT
            : LIGHT_ACCENT,
        foregroundColor: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      */

    );
  }
}