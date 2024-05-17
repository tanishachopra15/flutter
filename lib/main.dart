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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: _MyHomePage());
  }
}

class _MyHomePage extends StatefulWidget {
  const _MyHomePage({super.key});

  @override
  State<_MyHomePage> createState() => __MyHomePageState();
}

class __MyHomePageState extends State<_MyHomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Grid View"),
        backgroundColor: Colors.blue[100],
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: 20,
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: ((context) => HeroAnimation(index: index,))));
                },
                child: Hero(
                  tag: 'photo$index',
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://picsum.photos/id/$index/200/300')),
                ),
              );
            }),
      ),
    );
  }
}

class HeroAnimation extends StatelessWidget {
  final index ;
  const HeroAnimation({super.key , required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: InkWell(
        onTap: () {
                Navigator.pop(context);
              },
        child: Container(
          child: Center(
            child: Hero(
                  tag: 'photo$index',
                  child: Image.network('https://picsum.photos/id/$index/200/300'),
                ),
          ),
        ),
      ),
    );
  }
}

