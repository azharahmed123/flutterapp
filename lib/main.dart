import 'package:dubai_metro_app/splash.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dubai Metro',
      color: const Color(0xFF50A4D7),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // color code E5E5E5
        primaryColor: const Color(0xFF50A4D7),
      ),
      home: const Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Color(0xFF50A4D7),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                color: Colors.blue[50],
                child: Align(
                  alignment: Alignment.center,
                  child: InteractiveViewer(
                    maxScale: 150,
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://pumsuoysnovuyqwdfxvm.supabase.co/storage/v1/object/public/maps/Images/dubai_metro_map.jpg?t=2022-11-06T14%3A19%3A20.112Z",
                      // fit: BoxFit.cover,
                      alignment: Alignment.center,
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                color: Colors.blue[50],
                width: 100000,
                height: 500,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Add", style: TextStyle(fontSize: 520)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
