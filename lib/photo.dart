import 'package:flutter/material.dart';
// import 'package:FLUTTER_APPLICATION_1/main.dart';

class HeroAnimation extends StatelessWidget {
  final index ;
  const HeroAnimation({super.key , required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
          onTap: () {
                  Navigator.pop(context);
                },
          child: Hero(
                tag: 'photo$index',
                child: Image.network('https://picsum.photos/id/${index}/200/300'),
              ),
        ));
  }
}
