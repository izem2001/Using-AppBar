import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Başlık", style: TextStyle(color: Colors.white,fontSize: 16.0),),
            Text("Alt Başlık", style: TextStyle(color: Colors.white,fontSize: 12.0),),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          tooltip: "Menu Icon",
          icon: Icon(Icons.dehaze),
          onPressed: (){
            print("Menu Icon Tıklandı");
          },
        ),
        actions: [
          ElevatedButton(
            child: Text("ÇIKIŞ", style: TextStyle(color: Colors.white),),
            onPressed: (){
              print("Çıkış tıklandı");
            },
          ),
          IconButton(
            tooltip: "Bilgi",
            icon: Icon(Icons.info_outline),
            onPressed: (){
              print("Bilgi Icon Tıklandı");
            },
          ),
          IconButton(
            tooltip: "Popup Menu",
            icon: Icon(Icons.more_vert),
            onPressed: (){
                print("Popup Menu Tıklandı");
            },
          ),
        ],
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
