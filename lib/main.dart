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
      title: 'Project: Partion',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
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

  @override
  Widget build(BuildContext context) {

    // Set a max width for the components below the AppBar
    const maxWidth = 1000.0;

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

                  // Buttons with right padding (adjustable)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {();},
                        // onPressed: () {_scrollToSection(_aboutKey);},
                        child: Text(
                          "PARTION",
                          style: TextStyle(color: Colors.grey[400], fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Theme.of(context).brightness == Brightness.dark
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
      /*
      AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
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
      */
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}