import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _width = 400.0;
  var _height = 200.0;
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Widgets"),
          backgroundColor: Colors.blue[400],
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        body: Column(
          children: [
            ExpansionTile(
              title: const Text('Expansion Tile'),
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.amber,
                  alignment: Alignment.center,
                  child: Text(
                    'This is an Expansion Tile',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              child: AnimatedContainer(
                width: _width,
                height: _height,
                duration: Duration(seconds: 2),
                child: Container(
                  padding: EdgeInsets.all(30),
                  color: Colors.green[400],
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/10/23/17/52/fox-5679446_960_720.png'),
                    radius: 80,
                    child: Text("Hello"),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                if(flag)
                {
                  _width = 400.0;
                  _height = 200.0;
                   flag = false;
                }
                else{
                  _width = 200.0;
                  _height = 200.0;
                  flag = true; 
                }

              });
            }, child: Text('Animation')),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                // padding: EdgeInsets.all(30),
                color: Colors.blue[200],
                child: Text("Expanded", style: TextStyle(fontSize: 20)),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                // padding: EdgeInsets.all(30),
                color: Colors.blueGrey,
                child: Text(
                  "Flexible",
                   style: TextStyle(fontSize: 20)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
